class HabitButtonResetJob < ApplicationJob
  queue_as :default

  # set job within method mark as done, to be done after specified time
  def perform(habit_id)
    habit = Habit.find(habit_id)
    habit.done = false
    habit.save!
    # reset habit.done button to false
    # push due_date to next increment
  end
end
