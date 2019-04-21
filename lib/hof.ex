defmodule Hof do
  def tripler(value, func) do
    3 * func.(value)
  end
end
