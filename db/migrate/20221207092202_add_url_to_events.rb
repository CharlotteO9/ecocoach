class AddUrlToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :url, :string
  end
end
