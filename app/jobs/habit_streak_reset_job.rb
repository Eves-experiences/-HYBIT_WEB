class HabitStreakResetJob < ApplicationJob
  queue_as :default

  def perform(habit_id, new_due_date)
    habit = Habit.find(habit_id)
    habit.due_date = new_due_date + 1.day
    habit.habit_points = habit.habit_points + habit.frequency_number
    habit.habitcount = habit.frequency_number
    habit.habitcount_day = habit.frequency_number
    habit.habitcount_week = habit.frequency_number
    habit.habitcount_month = habit.frequency_number
    habit.habitcount_year = habit.frequency_number
    habit.done = false
    habit.save!
  end
end
