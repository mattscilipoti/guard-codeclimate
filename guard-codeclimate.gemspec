# -*- encoding: utf-8 -*-
require File.expand_path("../lib/guard/code_climate/version", __FILE__)

Gem::Specification.new do |s|
  s.name         = "guard-codeclimate"
  s.author       = "Marcos Wright-Kuhns"
  s.email        = "webmaster@wrightkuhns.com"
  s.summary      = "Guard gem for running Code Climate analysis"
  s.homepage     = "https://github.com/metavida/guard-codeclimate"
  s.license      = 'MIT'
  s.version      = Guard::CodeClimateVersion::VERSION

  s.description  = <<-DESC
    Guard::CodeClimate automatically runs `codeclimate analyze`
    when watched files are modified.
  DESC

  s.add_dependency 'guard', '>= 2.0.0'
  s.add_dependency 'guard-compat', '~> 1.0'
  s.add_dependency 'guard-shell', '~> 0.7.1'

  s.files        = %w(Readme.md LICENSE)
  s.files       += Dir["{lib}/**/*"]
end
