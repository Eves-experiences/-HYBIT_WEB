class UserAccruePointsJob < ApplicationJob
  queue_as :default
  # users each do in tasks
  def perform(user)
    # at 03.00
    # sum of habits with level 1 if points = positive?
    # sum of habits level 2 or higher
    # user.points can't go down
  end
end
