class CreateMaterialsServicesJointable < ActiveRecord::Migration
  def change
    create_table :materials_services, :id => false do |t|
      t.integer :material_id
      t.integer :service_id
    end
  end
end
