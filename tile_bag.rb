##
# This class represents a tile bag of scrabble tiles

class TileBag

  ##
  # creates a new tile bag
  # and provides the associated hash with a class
  # variable

  @@pointValue = {:A => 1,:B=>3,:C=>3,:D=> 2,:E=> 1,:F=>4,:G=> 2,:H=>4,:I=>1,:J=>8,:K=>5,:L=> 1,:M=>3,:N=> 1,:O=> 1,:P=>3,:Q=>10,:R=>1,:S=>1,:T=>1,:U=>1,:V=>4,:W=>4,
                  :X=>8,:Y=>4,:Z=>10}

  def initialize
    @bag = [:A,:A,:A,:A,:A,:A,:A,:A,:A,\
            :B, :B,:C,:C,:D,:D,:D,:D,:E,:E,:E,\
            :E,:E,:E,:E,:E,:E,:E,:E,:E,:F,:F,\
            :G,:G,:G,:H,:H,:I,:I,:I,:I,:I,:I,:I,:I,:I,\
            :J,:K,:L,:L,:L,:L,:M,:M,:N,:N,:N,:N,:N,:N,:O\
            ,:O,:O,:O,:O,:O,:O,:O,:P,:P,:Q,:R,:R,:R,:R,:R\
            ,:R,:S,:S,:S,:S,:T,:T,:T,:T,:T,:T,\
            :U,:U,:U,:U,:V,:V,:W,:W,:X,:Y,:Y,:Z]
  end

  ##
  # determines if the tile bag is empty
  def empty?
    @bag.empty?
  end

  ##
  # draws a single tile bag and returns it
  def draw_tile
    index = rand(@bag.length)
    element = @bag.at(index)
    @bag.delete_at(index)
    return element
  end

  ##
  # class method which returns the score for a given tile
  def self.points_for(tile)
    @@pointValue[tile]
  end

end

