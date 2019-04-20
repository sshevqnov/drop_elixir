defmodule Overall do
  def product([]), do: 0
  def product(list), do: product(list, 1)
  def product([], accumulated_product), do: accumulated_product

  def product([head | tail], accumulated_product) do
    product(tail, head * accumulated_product)
  end
end
