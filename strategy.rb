# crazy like a fox strategy

@do_rand_rot = true

module Wang
  def rand_rot
    "f" + (rand * 360.0).to_i.to_s
  end
end

extend Wang

on_turn do
  "f"
end
