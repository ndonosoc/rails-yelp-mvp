class ChangeColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :reviews
    change_column :restaurants, :phone_number, :string
  end
end
