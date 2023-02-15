class HabitNotDoneTodayJob < ApplicationJob
  queue_as :default

  # within task iterate over each habit and duedate stuff
  def perform(habit)
    # check due_date to see if it is still in the future, and done is still false;
    # habit is not missed, but also not executed on this day
    # que reminder for week at -2days before duedate
    # que reminder for month at -1 week before duedate
    # que reminder for year at -1 month before duedate

  end
end
