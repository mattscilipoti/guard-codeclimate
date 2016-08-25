# -*- encoding: utf-8 -*-
require File.expand_path('../lib/guard/code_climate/version', __FILE__)

Gem::Specification.new do |s|
  s.name         = 'guard-codeclimate'
  s.author       = 'Matt Scilipoti, derived from Marcos Wright-Kuhns'
  s.email        = 'mscilipoti@stsci.edu'
  s.summary      = 'Guard gem for running Code Climate analysis'
  s.homepage     = 'http://lab.git.hbbl.us/guard-codeclimate'
  s.license      = 'MIT'
  s.version      = Guard::CodeClimateVersion::VERSION

  s.description  = <<-DESC
    Guard::CodeClimate automatically runs `codeclimate analyze`
    when watched files are modified.
  DESC

  s.add_runtime_dependency 'guard', '~> 2.0'
  s.add_runtime_dependency 'guard-shell', '~> 0.7'
  s.add_development_dependency 'guard-compat', '~> 1.0'

  s.files        = %w(Readme.md LICENSE)
  s.files       += Dir['{lib}/**/*']
end
