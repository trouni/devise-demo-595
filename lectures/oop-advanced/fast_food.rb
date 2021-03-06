require_relative 'restaurant'

class FastFood < Restaurant # Inherit all instance methods from the Restaurant class
  def initialize(name, location, cuisine, seats, prep_time)
    super(name, location, cuisine, seats) # Calls #initialize(name, location, cuisine, seats) from Restaurant (parent class)

    @prep_time = prep_time # integer
  end

  def open?
    Time.now.hour >= 10 && Time.now.hour <= 14 || super # calls the #open? method in the parent class
  end

  def book(_customer)
    # Overrides the #book method from the parent
    puts 'Sorry, we only do birthday parties!'
  end
end