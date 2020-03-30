require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@total_revenue = Store.sum(:annual_revenue)
puts "Total Revenue: #{@total_revenue}"

@average_avenue = Store.average(:annual_revenue)
puts "Average Avenue : #{@average_avenue}"


@highest_revenue_stores = Store.where("annual_revenue > ?", 1000000).count
puts "#{@highest_revenue_stores}"