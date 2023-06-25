class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |c|
      c.text :name
      c.text :email
      c.text :adress
      c.text :message

      c.timestamps
    end
  end
end


