class AddColumnToFriendships < ActiveRecord::Migration[7.0]
  def change
    add_column :friendships, :mutual, :boolean, default: false
  end
end
