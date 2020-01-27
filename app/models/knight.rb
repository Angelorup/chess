class Knight < Piece
    def valid_move?(new_x_coord, new_y_coord, id = nil, color = nil)
        x_dist = x_distance(new_x_coord)
        y_dist = y_distance(new_y_coord)

        (x_dist >= 2 && y_dist == 1) || (x_dist >= 1 && y_dist == 2)
    end
end
