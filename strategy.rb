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

=begin
  run = nil

  first_player = visible_players.first || opponents.first
  if first_player
    run = move_away_from!(first_player)
  end

  #  run
  #else
    if rand > 0.9
      'f'
    else
      first_possible_move('nesw')
    end
  #end
=end

  if rand > 0.5
    return 'f'
  else
    return first_possible_move 'nesw'
=begin
    x, y = robot.x, robot.y
    return first_possible_move 'nesw' if x == 0
    return first_possible_move 'eswn' if y == @battle.board.height - 1
    return first_possible_move 'swne' if x == @battle.board.width - 1
    return first_possible_move 'wnes' if y == 0
    return first_possible_move 'wsen'
=end
  end

end
