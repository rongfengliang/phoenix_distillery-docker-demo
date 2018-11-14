# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :phoenix_distillery, PhoenixDistilleryWeb.Endpoint,
  url: [host: "localhost"],
  port: [port: 9090],
  secret_key_base: "F1AtWktsCSLdvwNyz+wQb7p93jP3X2eYx5zTFN3o9yildrUfG+3vDzDCAhIHZG9A",
  render_errors: [view: PhoenixDistilleryWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixDistillery.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
