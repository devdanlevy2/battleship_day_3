class Player
  attr_reader :grid
  def initialize
    @grid = Grid.new
  end

  def ships
    @grid.ships
  end

  def call_shot
    coordinates = (65 + rand(10)).chr + rand(1..10).to_s
  end

end
