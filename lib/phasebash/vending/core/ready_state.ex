defmodule Phasebash.Vending.Core.ReadyState do
  @behaviour Phasebash.Vending.Core.MachineState

  def coin_inserted(state, _coin) do
    {:ok, state}
  end

  def product_selected(_state, _product) do
    {:error, "no coins inserted"}
  end

  def return_coins(_state) do
    {:error, "no coins inserted"}
  end
end
