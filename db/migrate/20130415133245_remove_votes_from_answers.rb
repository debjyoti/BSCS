class RemoveVotesFromAnswers < ActiveRecord::Migration
  def up
    remove_column :answers, :votes
  end

  def down
    add_column :answers, :votes, :integer
  end
end
