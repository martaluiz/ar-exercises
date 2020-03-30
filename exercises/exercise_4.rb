require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

Store.create(name:"Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)
Store.create(name:"Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)
Store.create(name:"Gastown", annual_revenue: 19000, mens_apparel: true, womens_apparel: false)
Store.create(name:"Surrey", annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name:"Whistler", annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name:"Yaletown", annual_revenue: 430000, mens_apparel: true, womens_apparel: true)


# display stores that sell mens apparel and their total revenus
@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |data|
  puts "Store: #{data.name} - Revenue: #{data.annual_revenue}"
end

#display stores that sell womens apparel and revenue < 1M
@womens_stores = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)
@womens_stores.each do |data|
  puts "Store: #{data.name} - Revenue: #{data.annual_revenue}"
end
