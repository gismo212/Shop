class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |p|
      p.text :title
      p.string :path_to_image
      p.decimal :price

      p.timestamps
    end
  end
end
