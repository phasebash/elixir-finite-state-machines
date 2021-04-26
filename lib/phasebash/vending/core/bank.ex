defmodule Phasebash.Vending.Core.Bank do
  defstruct ~w[pennies nickles dimes quarters]a

  def new(pennies, nickles, dimes, quarters) do
    %__MODULE__{
      pennies: pennies,
      nickles: nickles,
      dimes: dimes,
      quarters: quarters
    }
  end
end
