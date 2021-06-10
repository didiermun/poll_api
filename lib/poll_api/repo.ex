defmodule PollApi.Repo do
  use Ecto.Repo,
    otp_app: :poll_api,
    adapter: Ecto.Adapters.Postgres
end
