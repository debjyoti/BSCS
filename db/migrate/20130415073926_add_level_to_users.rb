class AddLevelToUsers < ActiveRecord::Migration
  def change
    add_column :users, :level, :string, default: "Beginner"
  end
end
