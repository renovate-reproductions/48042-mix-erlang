defmodule Reproduction.MixProject do
  use Mix.Project

  def project do
    [
      app: :reproduction,
      version: "0.1.0",
      elixir: "~> 1.13",
      deps: deps()
    ]
  end

  defp deps do
    [
      {:elixir_uuid, "~> 1.2"},
      {:cucumber_messages, ">= 34.0.0 and < 36.0.0"},
      {:ex_doc, "~> 0.40.3", only: :dev, runtime: false}
    ]
  end
end
