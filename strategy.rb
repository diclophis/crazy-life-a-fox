# crazy like a fox strategy

on_turn do
=begin
  first_player = visible_players.first || opponents.first
  if first_player
    run = move_away_from!(visible_players.first)
    charge = move_towards!(visible_players.first)
    if charge
      return charge
    elsif run
      return run
    end
  end
=end

  return first_possible_move 'nesw'
end
