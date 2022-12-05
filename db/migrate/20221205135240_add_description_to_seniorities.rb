class AddDescriptionToSeniorities < ActiveRecord::Migration[7.0]
  def change
    add_column :seniorities, :description, :string
  end
end
