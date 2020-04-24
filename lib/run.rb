require 'pry'

require_relative './customer'
require_relative './waiter'
require_relative './meal'


# Create customers & waiters
sam = Customer.new("Sam", 27)
pat = Waiter.new("Pat", 2)
alex = Waiter.new("Alex", 5)

sam.new_meal(pat, 50, 10) # A #Customer creates a Meal, passing in a Waiter instance
sam.new_meal(alex, 20, 3) # A #Customer creates a Meal, passing in a Waiter instance
pat.new_meal(sam, 30, 5) # A #Waiter creates a Meal, passing in a Customer instance

alex = Customer.new("Alex", 30)
rachel = Customer.new("Rachel", 27)
dan = Waiter.new("Dan", 3)

rachel.new_meal(dan, 50, 10)
alex.new_meal(dan, 30, 5)

terrance = Customer.new("Terrance", 27)
jason = Waiter.new("Jason", 4)
andrew = Waiter.new("Andrew", 7)
yomi = Waiter.new("Yomi", 10)
lisa = Customer.new("Lisa", 24)
tim = Customer.new("Tim", 35)


terrance.new_meal(jason, 50, 6)
terrance.new_meal(andrew, 60, 8)
terrance.new_meal(yomi, 30, 4)
terrance.new_meal(jason, 50, 3)
lisa.new_meal(jason, 40, 10)
tim.new_meal(jason, 45, 8)



#### CHECK OUTPUT #####

rachel.meals
Meal.all.length
terrance.waiters
terrance.waiters.last.name
jason.best_tipper
jason.best_tipper.name




binding.pry