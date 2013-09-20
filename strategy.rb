# crazy like a fox strategy

on_turn do
  run = move_away_from!(visible_players.first)
  charge = move_towards!(visible_players.first)
  if can_move?(run)
    run
  else
    charge
  end
end
