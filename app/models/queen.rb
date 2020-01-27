class Queen < Piece
    def valid_move?(new_x_coord, new_y_coord, id = nil, color = nil)
        x_dist = x_distance(new_x_coord)
        y_dist = y_distance(new_y_coord)

        (x_dist >= 1 && y_dist == 0) || (y_dist >= 1 && x_dist == 0) || (x_dist >= 1 && y_distance >= 1) && diagonal?(x_dist, y_dist)
    end
end
