defmodule Inspire.QuoteController do
  use Inspire.Web, :controller

  def index(conn, _params) do
    render conn, "index.html", quotes: Repo.all(Inspire.Quote)
  end
end
