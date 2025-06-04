defmodule TrashSupport.Application do
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [TrashSupport.CitusRepo, TrashSupport.PlainPostgresRepo]

    opts = [strategy: :one_for_one, name: TrashSupport.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
