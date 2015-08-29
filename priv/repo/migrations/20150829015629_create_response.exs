defmodule KdtSurvey_02.Repo.Migrations.CreateResponse do
  use Ecto.Migration

  def change do
    create table(:responses) do
      add :week1, :string
      add :read, :string
      add :video, :string
      add :exercise, :string
      add :warmup, :string
      add :helpful, :string
      add :nervous, :string

      timestamps
    end

  end
end
