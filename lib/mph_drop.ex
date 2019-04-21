defmodule MphDrop do
  def mph_drop, do: spawn(Drop, :drop, []) |> convert

  def convert(drop_pid) do
    receive do
      {planermo, distance} ->
        send(drop_pid, {planermo, distance})
        convert(drop_pid)

      {planermo, distance, velocity} ->
        mph_velocity = 2.23693629 * velocity
        IO.write("On #{planermo}, a fall of #{distance} meters ")
        IO.puts("yields a velocity of #{mph_velocity} mph.")
        convert(drop_pid)
    end
  end
end
