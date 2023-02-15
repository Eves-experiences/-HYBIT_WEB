class HabitMissedJob < ApplicationJob
  queue_as :default

  # iterate over each habit in scheduler.rake tasks
  # at 02.00 for habits timeframe was day (day before)
  # at 12.00 for habits timeframe morning
  # at 18.00 for habits timeframe is afternoon
  # at 24.00 for habits timeframe is evening
  def perform(habit)
    # set new due_date based on previous duedate + according stuff
    # reset habit-count-specific
    # go into negative if habitcount was already 0,
    # go to 0 if habitcount was positive?
  end
end
