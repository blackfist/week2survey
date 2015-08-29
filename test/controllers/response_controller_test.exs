defmodule KdtSurvey_02.ResponseControllerTest do
  use KdtSurvey_02.ConnCase

  alias KdtSurvey_02.Response
  @valid_attrs %{exercise: "some content", helpful: "some content", nervous: "some content", read: "some content", video: "some content", warmup: "some content", week1: "some content"}
  @invalid_attrs %{}

  setup do
    conn = conn()
    {:ok, conn: conn}
  end

  test "lists all entries on index", %{conn: conn} do
    conn = get conn, response_path(conn, :index)
    assert html_response(conn, 200) =~ "Listing responses"
  end

  test "renders form for new resources", %{conn: conn} do
    conn = get conn, response_path(conn, :new)
    assert html_response(conn, 200) =~ "New response"
  end

  test "creates resource and redirects when data is valid", %{conn: conn} do
    conn = post conn, response_path(conn, :create), response: @valid_attrs
    assert redirected_to(conn) == response_path(conn, :index)
    assert Repo.get_by(Response, @valid_attrs)
  end

  test "does not create resource and renders errors when data is invalid", %{conn: conn} do
    conn = post conn, response_path(conn, :create), response: @invalid_attrs
    assert html_response(conn, 200) =~ "New response"
  end

  test "shows chosen resource", %{conn: conn} do
    response = Repo.insert! %Response{}
    conn = get conn, response_path(conn, :show, response)
    assert html_response(conn, 200) =~ "Show response"
  end

  test "renders page not found when id is nonexistent", %{conn: conn} do
    assert_raise Ecto.NoResultsError, fn ->
      get conn, response_path(conn, :show, -1)
    end
  end

  test "renders form for editing chosen resource", %{conn: conn} do
    response = Repo.insert! %Response{}
    conn = get conn, response_path(conn, :edit, response)
    assert html_response(conn, 200) =~ "Edit response"
  end

  test "updates chosen resource and redirects when data is valid", %{conn: conn} do
    response = Repo.insert! %Response{}
    conn = put conn, response_path(conn, :update, response), response: @valid_attrs
    assert redirected_to(conn) == response_path(conn, :show, response)
    assert Repo.get_by(Response, @valid_attrs)
  end

  test "does not update chosen resource and renders errors when data is invalid", %{conn: conn} do
    response = Repo.insert! %Response{}
    conn = put conn, response_path(conn, :update, response), response: @invalid_attrs
    assert html_response(conn, 200) =~ "Edit response"
  end

  test "deletes chosen resource", %{conn: conn} do
    response = Repo.insert! %Response{}
    conn = delete conn, response_path(conn, :delete, response)
    assert redirected_to(conn) == response_path(conn, :index)
    refute Repo.get(Response, response.id)
  end
end
