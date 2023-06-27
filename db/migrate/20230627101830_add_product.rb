class AddProduct < ActiveRecord::Migration[7.0]
  def change

      Product.create ({
      :title => 'Sigarette',
      :price => 4 ,
      :path_to_image => '/images/1.jpg'
      })

      Product.create ({
      :title => 'Alcohol',
      :price => 15, 
      :path_to_image => '/images/2.jpg'
      })

      Product.create ({
      :title => 'Pasta',
      :price => 3, 
      :path_to_image => '/images/3.jpg'
      })

      Product.create ({
      :title => 'Salami',
      :price => 10,
      :path_to_image => '/images/4.jpg'
      })

      Product.create ({
      :title => 'Bread',
      :price => 2, 
      :path_to_image => '/images/5.jpg'
      })

      Product.create ({
      :title => 'Milk',
      :price => 2.5, 
      :path_to_image => '/images/6.jpg'
      })

      Product.create ({
      :title => 'Chocolate',
      :price => 7, 
      :path_to_image => '/images/7.jpg'
      })

      Product.create ({
      :title => 'Beer',
      :price => 3, 
      :path_to_image => '/images/8.jpg'
      })

      Product.create ({
      :title => 'Icecream',
      :price => 1,
      :path_to_image => '/images/9.jpg'
      })

      Product.create ({
      :title => 'Fish',
      :price => 5 ,
      :path_to_image => '/images/10.jpg'
      })

  end
end
