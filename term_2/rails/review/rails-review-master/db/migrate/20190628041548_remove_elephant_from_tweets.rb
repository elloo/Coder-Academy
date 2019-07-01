class RemoveElephantFromTweets < ActiveRecord::Migration[5.2]
  def change
    remove_column :tweets, :elephant, :text
  end
end
