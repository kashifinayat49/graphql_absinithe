defmodule GraphqlAbsintheWeb.PageController do
  use GraphqlAbsintheWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
