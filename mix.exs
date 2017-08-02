defmodule ElixirCards.Mixfile do
  use Mix.Project

  def project do
    [
      app: :elixircards,
      version: "0.0.1",
      elixir: "~> 1.4",
      escript: [main_module: Elixircards],
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    []
  end
end
