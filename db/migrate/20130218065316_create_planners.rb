class CreatePlanners < ActiveRecord::Migration
  def change
    create_table :planners do |t|
      t.string :name
      t.string :email
      t.integer :organization_id

      t.timestamps
    end
  end
end
