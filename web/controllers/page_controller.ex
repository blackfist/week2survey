defmodule KdtSurvey_02.PageController do
  use KdtSurvey_02.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def thanks(conn, _params) do
    render conn, "thanks.html"
  end
end
