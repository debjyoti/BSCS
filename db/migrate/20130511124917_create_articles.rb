class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :heading
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
