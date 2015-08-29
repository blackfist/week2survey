defmodule KdtSurvey_02.PageControllerTest do
  use KdtSurvey_02.ConnCase

  test "GET /" do
    conn = get conn(), "/"
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end
