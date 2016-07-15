class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :tweets, :prueba, :string
  end
end
