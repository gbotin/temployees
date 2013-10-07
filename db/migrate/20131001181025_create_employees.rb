class CreateEmployees < ActiveRecord::Migration
  def change
    

    create_table :skills do |t|

      t.string :label
      t.index :label

    end

    create_table :companies do |t|

      t.string :name

    end

    create_table :employees do |t|

      t.string :firstname
      t.string :lastname

      t.string :phone
      t.string :email

      t.string :expertise_level

      t.string :mobility
      t.string :full_address
      
      t.string :lat
      t.string :lng

      t.string :avaibility

      t.timestamps

      t.index :firstname
      t.index :lastname

    end

    create_join_table :employees, :skills do |t|

      t.index :employee_id
      t.index :skill_id

    end

    create_join_table :employees, :companies do |t|

      t.index :employee_id
      t.index :company_id
      
    end

  end
end
