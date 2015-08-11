class AddSubtitleToService < ActiveRecord::Migration
  def change
    add_column :services, :subtitle, :string
  end
end
