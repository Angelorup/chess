class Piece < ApplicationRecord
    belongs_to :game
    def color
        white? ? 'white' : 'black'
    end
    def white?
        white
    end

    def black?
        !white
    end

    def x_distance(new_x_coord)
        x_dist = (new_x_coord - x_coord).abs
    end

    def y_distance(new_y_coord)
        y_dist = (new_y_coord - y_coord).abs
    end
    # returns true if piece is moving from bottom to top
    def up?(new_y_coord)
        (y_coord - new_y_coord) > 0
    end

    # returns true if piece is moving from top to bottom
    def down?(new_y_coord)
        (y_coord - new_y_coord) < 0
    end

    def diagonal?(x_distance, y_distance)
        x_distance == y_distance
    end
end
