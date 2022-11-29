class AddColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :string
    add_column :users, :avatar, :string
    add_reference :users, :seniority, null: false, foreign_key: true
  end
end
