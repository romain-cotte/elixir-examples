defmodule ElixirExamples.Mixfile do
  use Mix.Project

  def project do
    [
      app: :elixir_examples,
      version: "0.0.1",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [
        :kafka_ex,
      ],
      applications: [:kafka_ex],
      # mod: {ElixirExamples, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:distillery, "~> 1.5", runtime: false},
      {:kafka_ex, "~> 0.8.0"},
      {:poison, "~> 3.1"}
    ]
  end

  defp description do
    "Several elixir examples."
  end

  # defp package do
  #   [maintainers: ["Romain Cotte"],
  #    files: ["lib", "config/config.exs", "mix.exs", "README.md"],
  #    licenses: ["MIT"],
  #    links: %{"Github" => "https://github.com/romain-cotte/elixir-examples.git"}]
  # end

end
