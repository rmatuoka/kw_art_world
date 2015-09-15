class CreateCasesMaterialsJointable < ActiveRecord::Migration
  def change
    create_table :cases_materials, :id => false do |t|
      t.integer :case_id
      t.integer :material_id
    end
  end
end
