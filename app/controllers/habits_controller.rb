class HabitsController < ApplicationController
  before_action :habit_params, only: %i[create update destroy]
  before_action :set_habit, only: %i[show edit update check_as_done destroy]
  before_action :set_friends, only: %i[new edit update destroy]
  before_action :set_habit_dates_to_user_local_time, only: %i[check_as_done]
  # include ApplicationHelper

  def index
    @habit = Habit.all
  end

  def show
    # @habit = Habit.find(params[:id])
    if @habit.buddy.present?
      @buddy = User.find(@habit.buddy_id)
    end
  end

  def new
    @habit = Habit.new
  end

  def edit
  end

  def create
    @habit = Habit.new(habit_params)
    @habit.user = current_user
    if @habit.save
      redirect_to habit_path(@habit.id), notice: 'Habit was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @habit.update(habit_params)
    # UpdateHabitDuedatesJob.perform_later(@habit.id)
    if @habit.save
      flash[:notice] = "Habit succesfully updated"
      redirect_to habit_path(@habit)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @habit.destroy
      redirect_to dashboard_path, notice: "Deleted habit"
    else
      flash[:notice] = "You can't check delete this habit right now!"
    end
  end

  # # Seems to work fine, hard to test bc of time passing... ##
  # if the habitcount_day or week or month etc is not 0 yet, after each button click it saves it untill the reset time;
  # which is defined for current_user's time: 05.00 in the morning.

  # when habitcount is clicked to 0; ActiveJob will handle (at beginning of day/week/month/year + 3.hours) so at 03.00 in the morning:
  # adding points to habit.points, thus saving the frequency-number to habit; reset
  # setting new duedate to +1day/week/month/year after the specified duedate when active job starts running
  # sets button again to false

  def check_as_done
    @habit = Habit.find(params[:id])
    @check = local_user_time(Time.now)
    if @habit.in_timeframe?(@check)
      if @habit.done == false
        time_of_click = Time.now
        @habit.update(done: true, save_click_time: time_of_click)
        case @habit.frequency_variable
        when "day"
          @habit.decrement!(:habitcount_day)
          if @habit.habitcount_day.positive?
            HabitButtonResetJob.set(wait_until: @reset_time).perform_later(@habit.id, @reset_time)
          elsif @habit.habitcount_day.zero?
            @habit.increment!(:streak_count)
            HabitStreakResetJob.set(wait_until: @due_date_day).perform_later(@habit.id, @due_date_day)
          end
        when "week"
          @habit.decrement!(:habitcount_week)
          if @habit.habitcount_week.positive?
            HabitButtonResetJob.set(wait_until: @reset_time).perform_later(@habit.id, @reset_time)
          elsif @habit.habitcount_week.zero?
            @habit.increment!(:streak_count)
            HabitStreakResetJob.set(wait_until: @due_date_week).perform_later(@habit.id, @due_date_week)
          end
        when "month"
          @habit.decrement!(:habitcount_month)
          if @habit.habitcount_month.positive?
            HabitButtonResetJob.set(wait_until: @reset_time).perform_later(@habit.id, @reset_time)
          elsif @habit.habitcount_month.zero?
            @habit.increment!(:streak_count)
            HabitStreakResetJob.set(wait_until: @due_date_month).perform_later(@habit.id, @due_date_month)
          end
        when "year"
          @habit.decrement!(:habitcount_year)
          if @habit.habitcount_year.positive?
            HabitButtonResetJob.set(wait_until: @reset_time).perform_later(@habit.id, @reset_time)
          elsif @habit.habitcount_year.zero?
            @habit.increment!(:streak_count)
            HabitStreakResetJob.set(wait_until: @due_date_year).perform_later(@habit.id, @due_date_year)
          end
        end
      else
        flash[:notice] = "You can't check this habit off right now!"
      end
    else
      # give error saying request to press has timed out
      case @habit.timeframe
      when "day"
        flash[:notice] = "Time is: #{local_user_time(Time.now).strftime("%H:%M")} - you can only check this habit as done between 06:00 and 23:59"
      when "morning"
        flash[:notice] = "Time is: #{local_user_time(Time.now).strftime("%H:%M")} - You can only check this habit as done between 06:00 and 11:00"
      when "afternoon"
        flash[:notice] = "Time is: #{local_user_time(Time.now).strftime("%H:%M")} - You can only check this habit as done between 11:00 and 17:00"
      when "evening"
        flash[:notice] = "Time is: #{local_user_time(Time.now).strftime("%H:%M")} - You can only check this habit as done between 17:00 and 23:59"
      else
        flash[:notice] = "You can't check off this habit at this time"
      end
    end
    redirect_to habit_path(@habit)
  end

  private

  def habit_params
    params.require(:habit).permit(:name, :category, :start_date, :end_date, :frequency_number, :frequency_variable, :importance_level, :contact_details, :public_shame, :bank_connection, :done, :habit_public, :motivation, :motivation_public, :buddy_id, :streak_count, :timeframe)
  end

  def set_habit
    @habit = Habit.find(params[:id])
  end

  def set_friends
    @mutual_friends = User.where(id: current_user.friends && current_user.friendships.where(mutual: true).pluck(:friend_id))
  end

  ## sets all things for the logic of check_as_done - that time = always user's local-time ##
  ## uses helper in app/helpers/application_helper.rb
  def set_habit_dates_to_user_local_time
    local = local_user_time(@habit.due_date)
    local_time = local_user_time(Time.now.tomorrow.beginning_of_day)

    @due_date_day = (local.beginning_of_day + 3.hours).to_datetime
    @due_date_week = (local.beginning_of_week + 3.hours).to_datetime
    @due_date_month = (local.beginning_of_month + 3.hours).to_datetime
    @due_date_year = (local.beginning_of_year + 3.hours).to_datetime
    @reset_time = (local_time + 5.hours).to_datetime
  end

  # def define_due_date(habit)
  #   case habit.frequency_variable
  #   when "day"
  #     return habit.start_date + 1.day
  #   when "week"
  #     return habit.start_date + 7.days
  #   when "month"
  #     return habit.start_date + 30.days
  #   when "year"
  #     return habit.start_date + 365.days
  #   end
  # end

  # def index
  #   if params[:query].present?
  #     sql_query = <<~SQL
  #       owned_habits.name @@ :query
  #       OR owned_habits.start_date @@ :query
  #       OR owned_habits.importance_level @@ :query
  #       OR owned_habits.category @@ :query
  #     SQL
  #     @owned_habits = Habit.where(sql_query, query: "%#{params[:query]}%")
  #   else
  #     @owned_habits = Habit.all
  # end

  # def habit_done
  #   # @habit.streak_count = @habit.streak_count + 1
  #   @habit.update(streak_count: @habit.streak_count + 1)
  #   # @habit.update(done: :true)
  #   if @habit.save
  #     redirect_to habit_path(@habit)
  #   else
  #     flash[:notice] = "Habit not done"
  #   end
  # end

  # def counter (code for Background task through Sidekiq)
  #   @habit = Habit.find(params[:id])
  #   # if @habit.done == true
  #   #   @habit.streak_count += 1
  #   # elsif @habit.done == false
  #   #   if @habit.importance_level == 1 # only applies to # level 1 habits
  #   #     @habit.streak_count = 0
  #   #   else # applies to habits with level 2 and up
  #   #     if @habit.streak_count.positive? # first time # false
  #   #       @habit.streak_count = 0
  #   #     elsif @habit.streak_count <= 0 # second time # false
  #   #       @habit.streak_count += 1
  #   #     end
  #   #   end
  #   # end
  #   @habit.save
  # end
end
