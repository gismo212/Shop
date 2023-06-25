class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |c|
      c.text :name
      c.text :email
      c.text :address
      c.text :message

      c.timestamps
    end
  end
end


