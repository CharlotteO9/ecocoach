class CreateTips < ActiveRecord::Migration[7.0]
  def change
    create_table :tips do |t|
      t.string :name
      t.text :description
      t.references :challenge, null: false, foreign_key: true

      t.timestamps
    end
  end
end
