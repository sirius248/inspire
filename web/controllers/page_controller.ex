defmodule Inspire.PageController do
  use Inspire.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
