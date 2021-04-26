defmodule ExlirStateMachines.Graphs.TryOne do

  def food do
    graph = [
      {nil, [:wake]},
      {:wake, [:memes, :bathroom]},
      {:memes, [:bathroom]},
      {:bathroom, [:breakfast]},
      {:breakfast, [:gym, :work]},
      {:work, nil}
    ]
  end

  def process_wake(%ElixirStateMachines.Graphs.State{} = state) do

  end

end
