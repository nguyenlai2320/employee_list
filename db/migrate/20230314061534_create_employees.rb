class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :employee_id
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone
      t.string :position

      t.timestamps
    end
  end
end
