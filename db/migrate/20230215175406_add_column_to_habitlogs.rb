class AddColumnToHabitlogs < ActiveRecord::Migration[7.0]
  def change
    add_column :habitlogs, :done_at, :datetime
    add_column :habitlogs, :due_date_was, :datetime
    add_column :habitlogs, :streak_is_now, :integer, default: 0
    add_column :habitlogs, :points_are_now, :integer, default: 0
    add_column :habitlogs, :habitcount_is_now, :integer, default: 0
    add_column :habitlogs, :frequency_variable, :string, default: "day"
    add_column :habitlogs, :frequency_number, :integer, default: 1
    add_column :habitlogs, :level_3_activated, :boolean, default: false
    add_column :habitlogs, :level_4_activated, :boolean, default: false
    add_column :habitlogs, :level_5_activated, :boolean, default: false
  end
end
