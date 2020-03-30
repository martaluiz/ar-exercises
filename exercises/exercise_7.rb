require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

puts "What is the name of your store?"
store_name = gets.chomp
new_store = Store.create(name: store_name)

puts "Is 'new_store' Persisted? #{new_store.persisted?}"

if new_store.errors.any?
  puts "\nnew_store errors:"
  puts new_store.errors.to_a
else
  puts "new_store names:"
  puts new_store.name
end