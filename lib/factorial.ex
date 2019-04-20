# defmodule Fact do
#   def factorial(n) when n > 1 do
#     n * factorial(n - 1)
#   end

#   def factorial(n) when n <= 1, do: 1 end

# end

defmodule Fact do
  def factorial(n) do
    factorial(1, n, 1)
  end

  defp factorial(current, n, result) when current <= n do
    new_result = result * current
    IO.puts("#{current} yields #{new_result}.")
    factorial(current + 1, n, new_result)
  end

  defp factorial(_current, _n, result) do
    IO.puts("finished!")
    result
  end
end
