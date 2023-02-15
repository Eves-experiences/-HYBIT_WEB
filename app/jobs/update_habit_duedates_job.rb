class UpdateHabitDuedatesJob < ApplicationJob
  queue_as :default

  # if method update is called on habits
  def perform(habit_id)
    updated_habit = Habit.find(habit_id)
    frequency_number = updated_habit.frequency_number
    # def new_habit_set_habit_counts
    #   updated_habit.habitcount = frequency_number
    #   updated_habit.habitcount_day = frequency_number
    #   updated_habit.habitcount_week = frequency_number
    #   updated_habit.habitcount_month = frequency_number
    #   updated_habit.habitcount_year = frequency_number
    # end
    # case @habit.frequency_variable
    #   when "week"
    #     @habit.due_date = DateTime.now + 7.days
    #   when "day"
    #     @habit.due_date = DateTime.now + 1.day
    #   when "month"
    #     @habit.due_date = DateTime.now + 1.month
    #   when "year"
    #     @habit.due_date = DateTime.now + 1.year
    # end
  end
end
