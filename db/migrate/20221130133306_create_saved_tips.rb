class CreateSavedTips < ActiveRecord::Migration[7.0]
  def change
    create_table :saved_tips do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
