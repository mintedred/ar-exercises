require_relative '../setup'

puts "Exercise 1"
puts "----------"


Store.create(name: 'Burnaby', annual_revenue: 300000, mens_apparel: true, womens_apparel: true )

Store.create(name: 'Richmond', annual_revenue: 1260000, mens_apparel: false, womens_apparel: true )

Store.create(name: 'Gastown', annual_revenue: 190000, mens_apparel: true, womens_apparel: false )

puts Store.count

@store1 = Store.find(1)
@store2 = Store.find(2)
@store1.name = "Markham"

@store3 = Store.find(3)
@store3.destroy

puts Store.count



Store.create(name: 'Surrey', annual_revenue: 224000, mens_apparel: false, womens_apparel: true )

Store.create(name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel: false )

Store.create(name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true )

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |store|
  puts "#{store.name} -- #{store.annual_revenue}"
end

@womens_apparel = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)

@womens_apparel.each do |s|
  puts "#{s.name} -- #{s.annual_revenue}"
end


total_revenue = Store.sum(:annual_revenue)
average_revenue = Store.average(:annual_revenue)

r = Store.where("annual_revenue >= ?", 1000000).count
puts r