require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"



@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Sue", last_name: "Virani", hourly_rate: 20)
@store2.employees.create(first_name: "Nael", last_name: "Virani", hourly_rate: 160)
@store2.employees.create(first_name: "Sam", last_name: "Virani", hourly_rate: 40)
@store2.employees.create(first_name: "Paul", last_name: "Virani", hourly_rate: 60)
