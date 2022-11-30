class CreateSavedUserTips < ActiveRecord::Migration[7.0]
  def change
    create_table :saved_user_tips do |t|
      t.references :usertip, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
