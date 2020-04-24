require 'pry'

class Waiter
    attr_accessor :name, :yrs_experience
    @@all = []

    def initialize(name, yrs_experience)
        @name = name
        @yrs_experience = yrs_experience
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(customer, total, tip = 0)
        Meal.new(self, customer, total, tip)
    end
    # Returns array of meals for a specific waiter
    def meals
        Meal.all.select do |meal|
            meal.waiter == self
        end
    end

    def customers
        meals.map do |meal|
            meal.customer
        end
    end

    # Returns highest tipping customer
    def best_tipper
        best_tipped_meal = meals.max do |meal_a, meal_b|
          meal_a.tip <=> meal_b.tip
        end
      
        best_tipped_meal.customer
      end


    # TRY to code the following:
    #   * A waiter's most frequent customer
    #   * The meal of a waiter's worst tipping customer
    #   * The average tips for the most experienced waiter and the average tips for the least experienced waiter





end