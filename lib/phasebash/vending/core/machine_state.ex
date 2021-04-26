defmodule Phasebash.Vending.Core.MachineState do
  alias Phasebash.Vending.Core.MachineState

  @callback coin_inserted(state :: %MachineState{}, coin :: term) ::
              {:ok, new_state :: %MachineState{}} | {:error, reason :: term}

  @callback product_selected(state :: %MachineState{}, product :: term) ::
              {:ok, new_state :: %MachineState{}} | {:error, reason :: term}

  @callback return_coins(state :: %MachineState{}) ::
              {:ok, new_state :: %MachineState{}} | {:error, reason :: term}

  defstruct ~w[bank inserted products state]a

  alias Phasebash.Vending.Core.Bank

  def new do
    %__MODULE__{
      bank: Bank.new(50, 50, 50, 10),
      inserted: Bank.new(50, 50, 50, 10),
      products: %{
        fresca: 75,
        coke: 100,
        water: 50
      },
      state: Phasebash.Vending.Core.ReadyState
    }
  end
end
