require 'guard/compat/plugin'
require 'guard/code_climate/version'
require 'guard/shell'
require 'shellwords'

module Guard
  # Guard gem/plugin to manage CodeClimate runs
  # TODO: compose guard-shell vs. inherit.
  #   Inheritence provides unused functionality
  class CodeClimate < Shell
    # Run analyzer for this project
    def run_all
      guard_shell.eager('codeclimate analyze')
    end

    # Ignore individual modifications
    def run_on_modifications(files)
      # noop
    end

    private def guard_shell
      @guard_shell ||= ::Guard::Dsl.new
    end
  end
end
