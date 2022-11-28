class CreateUsertips < ActiveRecord::Migration[7.0]
  def change
    create_table :usertips do |t|
      t.string :name
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
