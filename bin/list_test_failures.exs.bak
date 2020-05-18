#!/usr/bin/env elixir

defmodule Mix.Tasks.ListTestFailures do
  @moduledoc """
  Show list of test files failing
  """
  use Mix.Task

  @shortdoc "Lists a project's test failures"
  @preferred_cli_env :test

  def run(_args) do
    manifest_file = Path.join(Mix.Project.manifest_path(), ".mix_test_failures")
    {allowed_files, _failed_ids} = ExUnit.Filters.failure_info(manifest_file)

    Enum.each(allowed_files, fn file ->
      IO.puts(file)
    end)
  end
end
