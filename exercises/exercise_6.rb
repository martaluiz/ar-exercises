require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Maria", last_name: "Wings", hourly_rate: 60)
@store1.employees.create(first_name: "Erick", last_name: "gnow", hourly_rate: 70)

@store2.employees.create(first_name: "Kaio", last_name: "Snow", hourly_rate: 90)
@store2.employees.create(first_name: "Derick", last_name: "Doors", hourly_rate: 60)