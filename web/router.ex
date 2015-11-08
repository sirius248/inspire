defmodule Inspire.Router do
  use Inspire.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Inspire do
    pipe_through :browser

    get "/", QuoteController, :index
    resources "/quotes", QuoteController, only: [:index, :new, :create]
  end

  # Other scopes may use custom stacks.
  # scope "/api", Inspire do
  #   pipe_through :api
  # end
end
