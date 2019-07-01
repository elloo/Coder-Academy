class AddElephantToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :elephant, :text
  end
end
