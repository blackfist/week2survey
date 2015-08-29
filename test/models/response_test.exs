defmodule KdtSurvey_02.ResponseTest do
  use KdtSurvey_02.ModelCase

  alias KdtSurvey_02.Response

  @valid_attrs %{exercise: "some content", helpful: "some content", nervous: "some content", read: "some content", video: "some content", warmup: "some content", week1: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Response.changeset(%Response{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Response.changeset(%Response{}, @invalid_attrs)
    refute changeset.valid?
  end
end
