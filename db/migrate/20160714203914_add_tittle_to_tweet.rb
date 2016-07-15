class AddTittleToTweet < ActiveRecord::Migration
  def change
    add_column :tweets, :tittle, :string
  end
end
