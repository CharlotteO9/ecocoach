class CreateChallenges < ActiveRecord::Migration[7.0]
  def change
    create_table :challenges do |t|
      t.string :name
      t.text :description
      t.string :category
      t.references :seniority, null: false, foreign_key: true

      t.timestamps
    end
  end
end
