defmodule TrashSupport.CitusRepo do
  use Ecto.Repo,
    otp_app: :trash_support,
    adapter: Ecto.Adapters.Postgres

  def min_pg_version do
    %Version{major: 15, minor: 0, patch: 0}
  end
end
