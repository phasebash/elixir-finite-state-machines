defmodule Phasebash.Vending.VendingMachine do
  alias Phasebash.Vending.Core.MachineState
  alias Phasebash.Vending.VendingMachine

  defstruct [:machine]

  def new do
    %__MODULE__{
      machine: MachineState.new()
    }
  end

  def coin_inserted(%VendingMachine{} = this, coin) do
    with {:ok, new_state} <- this.machine.state.coin_inserted(this, coin) do
      {:ok, new_state}
    end
  end

  def product_selected(_product) do
    {:ok, nil}
  end

  def return_coins() do
    {:ok, nil}
  end
end
