defmodule Drop do
  @moduledoc """
  Функции вычисления скорости свободного падения объекта в вакууме.
  """
  @doc """
  Вычисляет скорость свободного падения объекта на Земле,
  как если бы он падал в вакууме (то есть без сопротивления воздуха).
  Параметр distance определяет высоту в метрах, с которой падает объект,
  а возвращаемое значение выражает скорость в метрах в секунду.
  """
  @spec fall_velocity(tuple()) :: float()
  def fall_velocity({planermo, distance}) do
    gravity =
      case planermo do
        :earth -> 9.8
        :moon -> 1.6
        :mars -> 3.71
        _ -> 9.8
      end

    :math.sqrt(2 * gravity * abs(distance))
  end
end
