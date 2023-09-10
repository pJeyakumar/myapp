class AddProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |table|
      table.string :first_name
      table.string :last_name
      table.string :email
      table.string :phone_number
    end
  end
end
