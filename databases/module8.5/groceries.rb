=begin
Create a database that stores grocery items and quantity wanted
Create a method to add a new item with a quantity
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
#db.execute("INSERT INTO groceries (item, quantity) VALUES ('Apples', 3)")

=begin
def add_item(db, item, quantity)
  db.execute("INSERT INTO groceries (item, quantity) VALUES (?, ?)", [item, quantity])
end
=end





groceries = db.execute("SELECT * FROM groceries")
# groceries is currently an array (with each item quantity an array within the array)
groceries.each do |grocery|
 puts "#{grocery['item']}: #{grocery['quantity']}"
end
