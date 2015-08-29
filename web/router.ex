defmodule KdtSurvey_02.Router do
  use KdtSurvey_02.Web, :router

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

  scope "/", KdtSurvey_02 do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/responses", ResponseController
  end

  # Other scopes may use custom stacks.
  # scope "/api", KdtSurvey_02 do
  #   pipe_through :api
  # end
end
