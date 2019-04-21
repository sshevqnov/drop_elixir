defmodule Bounce do
  def report do
    receive do
      msg ->
        IO.puts(String.upcase("Recived #{msg}"))
        report()
    end
  end

  def factorial do
    receive do
      n ->
        IO.inspect(Fact.factorial(n))
        factorial()
    end
  end
end
