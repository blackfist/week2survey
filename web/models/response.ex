defmodule KdtSurvey_02.Response do
  use KdtSurvey_02.Web, :model

  schema "responses" do
    field :week1, :string
    field :read, :string
    field :video, :string
    field :exercise, :string
    field :warmup, :string
    field :helpful, :string
    field :nervous, :string

    timestamps
  end

  @required_fields ~w(week1 read video exercise warmup helpful nervous)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
