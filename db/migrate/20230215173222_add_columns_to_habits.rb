class AddColumnsToHabits < ActiveRecord::Migration[7.0]
  def change
    add_column :habits, :name, :string
    add_column :habits, :habit_public, :boolean, default: true
    add_column :habits, :motivation, :text
    add_column :habits, :motivation_public, :boolean, default: true
    add_column :habits, :category, :string, default: "None"
    add_column :habits, :start_date, :date, default: Date.today
    add_column :habits, :end_date, :date, default: nil

    add_column :habits, :frequency_variable, :string, default: "day"
    add_column :habits, :frequency_number, :integer, default: 1
    add_column :habits, :timeframe, :string, default: "day"

    add_column :habits, :importance_level, :integer, default: 1
    add_column :habits, :contact_details, :string
    add_column :habits, :public_shame, :string
    add_column :habits, :bank_connection, :string

    add_column :habits, :streak_count, :integer, default: 0
    add_column :habits, :save_click_time, :datetime
    add_column :habits, :done, :boolean, default: false
    add_column :habits, :habit_points, :integer, default: 0
    add_column :habits, :due_date, :datetime

    add_column :habits, :habitcount, :integer
    add_column :habits, :habitcount_day, :integer
    add_column :habits, :habitcount_month, :integer
    add_column :habits, :habitcount_week, :integer
    add_column :habits, :habitcount_year, :integer
  end
end
