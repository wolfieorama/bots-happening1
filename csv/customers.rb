require 'csv'
customers = CSV.read('example.csv')
average_money_spent = Array.new
CSV.foreach('example.csv', converters: :numeric) do |row|
  average_money_spent << row[2] / row[1]
end

customers.each do |customer|
 customer << average_money_spent.shift
end

# customers.each do |row|
#   puts row.inspect
# end

CSV.open('example.csv', 'w+')  do |csv_object|
  customers.each do |row|
    csv_object << row
  end
end
