class AddSubtitleToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :subtitle, :string
  end
end
