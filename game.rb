class Game

  def initialize(human, computer)
    @human = human
    @computer = computer
  end

  def welcome
    puts "Welcome, Frank and HAL 9000!\nIt's time to play Battleship.\n"
  end

  def place_ships
    ship_number = 0
    lengths = [2,3,3,4,5]
    # lengths = 5
    while(ship_number < 5)
      len = lengths[ship_number]
      puts "Frank, where would you like to place a ship of length #{len}?"
      coordinates = get_user_input
      puts "Across or Down?"
      direction = get_user_input
      grid = Grid.new
      if grid.place_ship(Ship.new(len), grid.x_of(coordinates),
                       grid.y_of(coordinates), direction=="Across")
        ship_number += 1
      end
    end
    puts "HAL 9000 has placed its ships.\n"
  end

end
