# Create two classes, a Pirate class and a Ship class. Pirates should have a name, weight, and height. You will also need a class method that returns all the pirates. The ship class should have name, type, and booty attributes, as well as a class method .all that returns all the ships and a class method .clear that deletes all ships.

class Ship
  attr_reader :name, :type, :booty

  @@ships = []

  def initialize(args)
    @name = args[:name]
    @type = args[:type]
    @booty = args[:booty]
    @@ships << self
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships = []
  end
end


# class Ship
#
#   SHIPS = []
#   attr_reader :name, :type, :booty
#
#   def initialize(args)
#     @name = args[:name]
#     @type = args[:type]
#     @booty = args[:booty]
#     SHIPS << self
#   end
#
#   def all
#     SHIPS
#   end
#
#   def clear
#     SHIPS = []
#   end
#
# end
