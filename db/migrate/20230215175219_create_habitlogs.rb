class CreateHabitlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :habitlogs do |t|
      t.references :habit, foreign_key: { to_table: :habits }
      
      t.timestamps
    end
  end
end
