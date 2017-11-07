require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"


puts "Enter a store name: "
name = gets.chomp

new = Store.create(name: name)
messages = new.errors.full_messages

messages.each do |error|
  puts "Error! #{error}"
end