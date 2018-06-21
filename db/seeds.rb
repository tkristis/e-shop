# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Category.create(name: "Mods", slug: "Mods")
# Category.create(name: "Atomizers", slug: "Atomizers")
# Category.create(name: "Liquid", slug: "Liquid")
# Category.create(name: "Accessories", slug: "Accessories")

Product.create!(description: "Zingy lemonade blend with just the right amount of red fruit. A slight tang on the tongue gives way to a 
  smooth citrus exhale.", category_id: 3, name: 'Element - Pink Lemonade 20ml', price: 20, 
  image_url: 'http://www.vapetrade.com/content/imgs/products/fullsize/1807-fullsize-original-element-e-liquids-pink-lemonade-vape-juice-with-nicotine-electronic-cigarette-eliquid-usa-made-ejuice-10ml-1-1200.png' )

Product.create!(description: "Reuleaux RX200, another innovative version of Reuleaux series, still features the unique exterior design and variable 
  temperature control function. In addition to the high power output of 200W, the improved 0.96inch OLED screen which presents all parameters more 
  clearly is a bright spot of the device. Also, the upgradeable firmware will enable your device always up to date.", 
  category_id: 1, name: 'Reuleaux RX200 ', price: 40, image_url: 'https://i.ebayimg.com/00/s/MTAwMFgxMDAw/z/1eEAAOSw-K9ZF5g3/$_86.JPG' )

Product.create!(description: "The SMOK TFV8 Cloud Beast King Tank emulates the undisputed achievement in cloud-chasing technology by SMOKTech, 
  presenting a powerful twelve coil cylinder within a performance-grade apparatus that transcends the Sub-Ohm Tank platform.", category_id: 2, 
  name: 'SMOK TFV8 Cloud Beast King', price: 20, image_url: 'https://cdn.shopify.com/s/files/1/0379/4121/products/TFV12-smok-nz.png?v=1489369841' )

Product.create!(description: "A purified, tasteless wick made by vapers, for vapers, Cotton Bacon comes in a handy pack that contains individual strips 
  of cotton, each 4 inches in length and designed to be easily torn apart and installed in your Coil of Choice. Carefully packed in clean rooms, 
  Cotton Bacon is there to get out of the way of your liquid so you’re only tasting your vapour, and not your wicks.", category_id: 4, 
  name: 'Cotton Bacon V3', price: 8, 
  image_url: 'https://www.elementvape.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/w/i/wick_n_vape_organic_cotton_bacon_v2_1_2.jpg' )

