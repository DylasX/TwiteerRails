class AddPruebaToTweet < ActiveRecord::Migration
  def change
    add_column :tweets, :prueba, :string
  end
end
