# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category_cell_phone = Category.create(name: 'cell phones')
category_tablet = Category.create(name: 'tablets')

product_iphonex = Product.create(name: 'iPhone X', sku: 'bc32h5i6', category_id: category_cell_phone.id, price: '1000')
product_ipad_pro = Product.create(name: 'iPad Pro', sku: 'hsl1v00p', category_id: category_tablet.id, price: '800')
product_google_pixel = Product.create(name: 'Google Pixel', sku: 'gp732qt1', category_id: category_cell_phone.id, price: '700')

Order.create(product_id: product_iphonex.id, quantity: 2)
Order.create(product_id: product_ipad_pro.id, quantity: 2)
Order.create(product_id: product_google_pixel.id, quantity: 3)