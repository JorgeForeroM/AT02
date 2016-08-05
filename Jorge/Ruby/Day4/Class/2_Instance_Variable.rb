class Customer
   def initialize(id, name, addr)
      @cust_id = id
      @cust_name = name
      @cust_addr = addr
   end
   def display_details()
      puts "Customer id #{@cust_id}"
      puts "Customer name #{@cust_name}"
      puts "Customer address #{@cust_addr}"
    end

    def display_name
         puts "Customer name #{@cust_name}"
    end

    def change_name
         @cust_name = "Pepito"
    end
end

customer1 = Customer.new("1", "Ana", "Sopocachi, LP")
customer2 = Customer.new("2", "Juan", "Melchor Perez, CBBA")

puts "  Customer 1 details"
customer1.display_details()
puts "  Customer 2 details"
customer2.display_details()

puts "  Only Display name of customer 1"
customer1.display_name
puts "  Only Display name of customer 2"
customer2.display_name

puts "  Change name of customer 1"
customer1.change_name
puts "  New name of customer 1"
customer1.display_name
