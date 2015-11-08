defmodule Inspire.QuoteController do
  use Inspire.Web, :controller
  alias Inspire.Quote

  def index(conn, _params) do
    render conn, "index.html", quotes: Repo.all(Quote)
  end

  def new(conn, _params) do
    changeset = Quote.changeset(%Quote{})
    render conn, "new.html", changeset: changeset
  end

  def create(conn, %{ "quote" => quote_params }) do
    changeset = Quote.changeset(%Quote{}, quote_params)
    {:ok, user} = Repo.insert(changeset)

    conn
    |> put_flash(:info, "new quote created!")
    |> redirect(to: quote_path(conn, :index))
  end
end
