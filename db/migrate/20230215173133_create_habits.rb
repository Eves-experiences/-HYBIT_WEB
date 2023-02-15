class CreateHabits < ActiveRecord::Migration[7.0]
  def change
    create_table :habits do |t|
      t.references :user, foreign_key: { to_table: :users }
      t.references :buddy, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
