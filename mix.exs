defmodule PhoenixHeroku.Mixfile do
  use Mix.Project

  def project do
    [app: :phoenix_heroku,
     version: "0.0.1",
     elixir: "1.0.1",
     elixirc_paths: ["lib", "web"],
     compilers: [:phoenix] ++ Mix.compilers,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {PhoenixHeroku, []},
     applications: [:phoenix, :cowboy, :logger]]
  end

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [{:phoenix, git: "https://github.com/phoenixframework/phoenix.git"},
     {:cowboy, "~> 1.0"}]
  end
end
