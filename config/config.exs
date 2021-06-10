# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :poll_api,
  ecto_repos: [PollApi.Repo]

# Configures the endpoint
config :poll_api, PollApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7ec90mjjR97hqDxPXdf7YWWNC8Iga16yrxsgaDgS1tIVgu1UUZjODPn5e0JsOkEk",
  render_errors: [view: PollApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: PollApi.PubSub,
  live_view: [signing_salt: "T6PjtaYs"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
