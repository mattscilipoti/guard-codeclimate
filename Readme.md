# Guard::CodeClimate

This guard "plugin" runs the [CodeClimate CLI](https://github.com/codeclimate/codeclimate) against tour project, when run_all is fired.  It does NOT run against individual files.

This project is derived from https://github.com/metavida/guard-codeclimate, which composes https://github.com/guard/guard-shell.  It changes the process to only run against the entire project.

## Install

1. Ensure the CodeClimate CLI is [installed](https://github.com/codeclimate/codeclimate#os-x).

- Add it to your Gemfile:
  ```
  gem 'guard-codeclimate'
  ```

- And then add a basic setup to your Guardfile:
  ```
  guard init codeclimate
  ```

## Usage

When you run `guard`, it will analyze your project.

## TODO

Allow to change process via configuration.  e.g. configure to allow for running against individual modifications.
