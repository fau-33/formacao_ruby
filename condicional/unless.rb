product_status = "closed"

unless product_status == "open"
    check_change = "can"
else
    check_change = "cannot"
end

puts "You #{check_change} to change the product"