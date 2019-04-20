defmodule Ask do
  def main() do
    chars()
    planermo = IO.gets("Which ? > ") |> String.first() |> char_to_planermo
    distance = IO.gets("How far (meters) ? > ") |> String.trim() |> String.to_integer()
    velocity = Drop.fall_velocity({planermo, distance})
    IO.puts("The fall velocity is #{velocity}")
  end

  defp chars() do
    IO.puts("""
      Which planemo are you on?
        1. Earth
        2. Moon
        3. Mars
    """)
  end

  defp char_to_planermo(char) do
    case char do
      "1" -> :earth
      "2" -> :moon
      "3" -> :mars
    end
  end
end
