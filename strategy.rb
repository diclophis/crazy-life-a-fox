# crazy like a fox strategy

@do_rand_rot = true

module Wang
  def rand_rot
    "f" + (rand * 360.0).to_i.to_s
  end
end

extend Wang

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

  if true || @do_rand_rot
    @do_rand_rot = !@do_rand_rot
    return rand_rot
  else
    if rand > 0.5
      return 'f'
    else
      x, y = robot.x, robot.y
      if x == 0
        first_possible_move 'nesw'
      elsif y == 0
        first_possible_move 'wnes'
      else
        first_possible_move 'wsen'
      end
    end
  end

=begin
    x, y = robot.x, robot.y
    return first_possible_move 'nesw' if x == 0
    return first_possible_move 'eswn' if y == @battle.board.height - 1
    return first_possible_move 'swne' if x == @battle.board.width - 1
    return first_possible_move 'wnes' if y == 0
    return first_possible_move 'wsen'
=end
end
