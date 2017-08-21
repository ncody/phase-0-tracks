=begin
Create a database that stores grocery items and quantity wanted
Create a method to add a new item with a quantity
Let user enter as many items as wanted
Print out the final grocery list
=end

require 'sqlite3'

db = SQLite3::Database.new("groceries.db")
db.results_as_hash = true

create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS groceries(
    id INTEGER PRIMARY KEY,
    item VARCHAR(255),
    quantity INT
  )
SQL


db.execute(create_table)
#db.execute("INSERT INTO groceries (item, quantity) VALUES ('Granola Bars', 4)")

def add_item(db, item, quantity)
  db.execute("INSERT INTO groceries (item, quantity) VALUES (?, ?)", [item, quantity])
end




#add_item(db, "Watermelon", 1)
#add_item(db, "Apples", 4)
puts" Welcome to your grocery list! \nYour grocery list currently includes:"
groceries = db.execute("SELECT * FROM groceries")
# groceries is currently an array (with each item quantity an array within the array)
puts "--------------"
groceries.each do |grocery|
 puts "#{grocery['item']}: #{grocery['quantity']}"
end
puts "--------------"

new_item = nil
until new_item == "no" do
puts "Would you like to add a new item?"
new_item = gets.chomp.downcase
  if new_item == "no"
    break
  else
  puts "What is the item?"
  item = gets.chomp.capitalize
  puts "What is the quantity?"
  quantity = gets.chomp.to_i
  add_item(db, item, quantity)
end
end


puts "Final grocery list:"
puts "--------------"
groceries = db.execute("SELECT * FROM groceries")
groceries.each do |grocery|
  puts "#{grocery['item']}: #{grocery['quantity']}"
end
puts "--------------"

