require './player'

class ComputerPlayer < Player
  def name
    "HAL 9000"
  end


  def place_ships(lengths)
    ship_number = 0
    while(ship_number < lengths.length)
      len = lengths[ship_number]
      coordinates = (65 + rand(10)).chr + rand(1..10).to_s
      direction = [true, false].sample
      if grid.place_ship(Ship.new(len), grid.x_of(coordinates),
                     grid.y_of(coordinates), direction=="Across")
      ship_number += 1
      end
    end
  puts "HAL 9000 has placed its ships.\n"
  end
end
