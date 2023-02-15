class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :points, :integer, default: 0
    add_column :users, :age, :integer
    add_column :users, :nickname, :string
    add_column :users, :time_zone, :string, default: 'Amsterdam'
    add_column :users, :admin, :boolean, null: false, default: false

  end
end
