class AddRankingToSeniorities < ActiveRecord::Migration[7.0]
  def change
    add_column :seniorities, :ranking, :integer, default: 0
  end
end
