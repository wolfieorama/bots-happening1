require 'csv'
customers = CSV.read('example.csv', headers: true)
average_money_spent = Array.new
puts customers[0]
# CSV.foreach('example.csv', converters: :numeric) do |row|
#   average_money_spent << row[2] / row[1]
# end

# customers.each do |customer|
#  customer << average_money_spent.shift
# end

customers.each do |row|
  puts row['Name'].inspect
end

# CSV.open('example.csv', 'w+')  do |csv_object|
#   customers.each do |row|
#     csv_object << row
#   end
# end'

# guests.delete('Name') #=> returns ["Dan", "Maria", "Carlos", "Stephany"]
new_guests_csv = [] # We create an array to gold the new CSV data
CSV.foreach('guests.csv',headers:true) do |guest| # Iterate over each row of our CSV file
  guest['Total $ spent'] = guest['Total $ spent'].to_f #
  new_guests_csv << guest # Add the new row into new_guests_csv
end

#is same as

new_guests_csv  = [] # We create an array to gold the new CSV data
old_guests_csv = CSV.read('guests.csv', headers:true) # Reads the entire content of the CSV into the variable
old_guests_csv.each do |guest| # old_guests_csv is CSV::Table object which has #each method to iterate over its rows
  guest['Total $ spent'] = guest['Total $ spent'].to_f # Same thing as with our previous code
  new_guests_csv << guest # Add the new row into new_guests_csv
end


#to add the data in a new file with new headers

CSV.open('updated_guests.csv', 'w') do |csv| # Create a new file updated_guests.csv
  csv << ['Name', 'Times arrived', 'Total $ spent (decimals)', 'Food feedback'] # Add new headers
  new_guests_csv.each do |row|
    # Since we now have the entire updated CSV file in this variable as a double array,
    # we iterate over each (array) element

    csv.puts row
  end
end
