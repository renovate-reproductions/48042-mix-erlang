# 48042-mix-erlang

Reproduction for [renovatebot/renovate#48042](https://github.com/renovatebot/renovate/pull/48042), reported in [discussion #47987](https://github.com/renovatebot/renovate/discussions/47987).

## Current behavior

`mix.exs` requires `elixir: "~> 1.13"` and pins no Erlang version (same as [cucumber/gherkin](https://github.com/cucumber/gherkin/tree/main/elixir)).
Renovate installs the latest Elixir (1.20.x), but falls back to Erlang 26.
Elixir 1.20 needs Erlang/OTP 27 or newer, so `install-tool elixir` fails and the `mix.lock` update fails.

## Expected behavior

Renovate picks an Erlang version that the Elixir requirement supports (Erlang 27–29 for Elixir 1.20) and updates `mix.lock`.

## Branches

- `main`: no constraints, Elixir and Erlang come from `mix.exs`.
- `constraints-elixir`: `constraints.elixir` set to `1.15.8` in `renovate.json`, which wins over `mix.exs` and gives Erlang 24–26.
