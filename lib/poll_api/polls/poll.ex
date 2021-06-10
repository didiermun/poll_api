defmodule PollApi.Polls.Poll do
  use Ecto.Schema
  import Ecto.Changeset

  schema "polls" do
    field :question, :string
    has_many(:options, Option, on_replace: :delete)

    timestamps()
  end

  @doc false
  def changeset(poll, attrs) do
    poll
    |> cast(attrs, [:question])
    |> cast_assoc(:options)
    |> validate_required([:question])
  end
end
