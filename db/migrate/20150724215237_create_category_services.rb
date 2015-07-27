class CreateCategoryServices < ActiveRecord::Migration
  def change
    create_table :category_services do |t|
      t.integer :category_id
      t.integer :service_id

      t.timestamps
    end
  end
end
