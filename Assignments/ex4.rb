#number of cars
cars = 100
# number of spaces in a car
space_in_a_car = 4.0
#number of drivers
drivers = 30
#number of passengers
passengers = 90
#cars not being occupied by drivers
cars_not_driven = cars - drivers 
#cars ebign occupied by drivers
cars_driven = drivers
#number of total seats in all cars
carpool_capacity = cars_driven * space_in_a_car
#number of passengers for each car
average_passengers_per_car= passengers / cars_driven

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available"
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} passengers to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car." 

#the variable car_pool_capacity does not match the variable carpool_capacity.
# 1) 4.0 is used to create a floating point number in case decimals are needed to be displayed.
# 2) A floating point number is a number that contains a floating decimal point.
