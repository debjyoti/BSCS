class RemoveCountFromVotes < ActiveRecord::Migration
  def up
    remove_column :votes, :count
  end

  def down
    add_column :votes, :count, :integer
  end
end
