class Habit < ApplicationRecord
  belongs_to :user
  belongs_to :buddy, class_name: 'User', optional: true
  has_many :habitlogs
  before_create :new_habit_set_habit_counts
  before_create :new_habit_set_due_date
  # before_update :reset_due_date
  # before_update :set_habit_counts
  # include ApplicationHelper

  validates :name, presence: true
  validates :frequency_number, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 7 }, presence: true
  validates :frequency_variable, inclusion: { in: %w[day week month year], message: "%{value} is not a valid unit" }
  validates :importance_level, presence: true, inclusion: { in: [1, 2, 3, 4, 5], message: "Please choose a level from 1 to 5" }
  validate :frequency_number_present, if: :importance_level_1?
  validate :frequency_variable_present, if: :importance_level_1?
  validate :contact_details_present, if: :importance_level_3?
  validate :public_shame_present, if: :importance_level_4?
  validate :bank_connection_present, if: :importance_level_5?

  ### methods are only called before new_habits are created
  def new_habit_set_habit_counts
    self.habitcount = frequency_number
    self.habitcount_day = frequency_number
    self.habitcount_week = frequency_number
    self.habitcount_month = frequency_number
    self.habitcount_year = frequency_number
  end

  def new_habit_set_due_date
    case self.frequency_variable
    when "week"
      self.due_date = DateTime.now + 7.days
    when "day"
      self.due_date = DateTime.now + 1.day
    when "month"
      self.due_date = DateTime.now + 1.month
    when "year"
      self.due_date = DateTime.now + 1.year
    end
  end

  # this method is flawless #############
  def in_timeframe?(check)
    case timeframe
    when "morning"
      (6..11).cover?(check.hour)
    when "afternoon"
      (11..17).cover?(check.hour)
    when "evening"
      (17..24).cover?(check.hour)
    when "day"
      (06..24).cover?(check.hour)
    end
  end
  # ###########################

  private

  def importance_level_1?
    importance_level >= 1
  end

  def importance_level_3?
    importance_level > 2
  end

  def importance_level_4?
    importance_level > 3
  end

  def importance_level_5?
    importance_level > 4
  end

  def contact_details_present
    errors.add(:contact_details, "We need this in order to notify your buddy of your lack of progress") unless contact_details.present?
  end

  def public_shame_present
    errors.add(:public_shame, "- We can't threaten you with public shame if we cannot broadcast your failure on your chosen social-medium") unless public_shame.present?
  end

  def bank_connection_present
    errors.add(:bank_connection, "- We need this to make you pay for continuously ignoring the reminders of your habit") unless bank_connection.present?
  end

  def frequency_number_present
    errors.add(:frequency_number, "- Please tell us how many times you want to do this") unless frequency_number.present?
  end

  def frequency_variable_present
    errors.add(:frequency_variable, "- Please tell us how often you want to do this") unless frequency_variable.present?
  end
end
