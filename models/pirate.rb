class Pirate
  PIRATES = []
  attr_reader :name, :weight, :height

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    PIRATES << self
  end

  def all
    PIRATES
  end

end


# Create two classes, a Pirate class and a Ship class. Pirates should have a name, weight, and height. You will also need a class method that returns all the pirates. The ship class should have name, type, and booty attributes, as well as a class method .all that returns all the ships and a class method .clear that deletes all ships.
