defmodule GraphqlAbsintheWeb.Router do
  use GraphqlAbsintheWeb, :router

  pipeline :browser do
    plug(:accepts, ["html"])
    plug(:fetch_session)
    plug(:fetch_live_flash)
    plug(:put_root_layout, {GraphqlAbsintheWeb.LayoutView, :root})
    plug(:protect_from_forgery)
    plug(:put_secure_browser_headers)
  end

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/api" do
    pipe_through(:api)

    forward("/graphiql", Absinthe.Plug.GraphiQL, schema: GraphqlAbsintheWeb.Schema)

    forward("/", Absinthe.Plug, schema: GraphqlAbsintheWeb.Schema)
  end
end
