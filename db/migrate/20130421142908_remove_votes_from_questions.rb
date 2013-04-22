class RemoveVotesFromQuestions < ActiveRecord::Migration
  def up
    remove_column :questions, :votes
  end

  def down
    add_column :questions, :votes, :integer
  end
end
