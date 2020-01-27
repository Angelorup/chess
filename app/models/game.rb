class Game < ApplicationRecord
    has_many :moves
    has_many :pieces
    after_create :create_board


    def create_board
        #white pieces
        (1..8).times do |x_coord|
            Pawn.create(game_id: id, white: true, x_coord: x_coord, y_coord: 7, type: "Pawn_white")
        end
        [2, 7].each do |x_coord|
            Knight.create(game_id: id, white: true, x_coord: x_coord, y_coord: 8, type: "Knight_white")
        end
        [1, 8].each do |x_coord|
            Rook.create(game_id: id, white: true, x_coord: x_coord, y_coord: 8, type: "Rook_white")
        end
        [3, 6].each do |x_coord|
            Bishop.create(game_id: id, white: true, x_coord: x_coord, y_coord: 8, type: "Bishop_white")
        end

        King.create(game_id: id, white: true, x_coord: 5, y_coord: 8, name: "King_white")

        Queen.create(game_id: id, white: true, x_coord: 4, y_coord: 8, name: "Queen_white")

        #black pieces

        (1..8).times do |x_coord|
            Pawn.create(game_id: id, white: true, x_coord: x_coord, y_coord: 2, type: "Pawn_black")
        end
        [2, 7].each do |x_coord|
            Knight.create(game_id: id, white: true, x_coord: x_coord, y_coord: 1, type: "Knight_black")
        end
        [1, 8].each do |x_coord|
            Rook.create(game_id: id, white: true, x_coord: x_coord, y_coord: 1, type: "Rook_black")
        end
        [3, 6].each do |x_coord|
            Bishop.create(game_id: id, white: true, x_coord: x_coord, y_coord: 1, type: "Bishop_black")
        end

        King.create(game_id: id, white: true, x_coord: 5, y_coord: 1, name: "King_black")

        Queen.create(game_id: id, white: true, x_coord: 4, y_coord: 1, name: "Queen_black")
    end
end
