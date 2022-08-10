defmodule GraphqlAbsinthe.Repo do
  use Ecto.Repo,
    otp_app: :graphql_absinthe,
    adapter: Ecto.Adapters.Postgres
end
