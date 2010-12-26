# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'seed-fu/version'

Gem::Specification.new do |s|
  s.name        = "seed-fu"
  s.version     = SeedFu::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Michael Bleigh", "Jon Leighton"]
  s.email       = ["michael@intridea.com", "j@jonathanleighton.com"]
  s.homepage    = "http://github.com/mbleigh/seed-fu"
  s.summary     = "Easily manage seed data in your Active Record application"
  s.description = "Seed Fu is an attempt to once and for all solve the problem of inserting and maintaining seed data in a database. It uses a variety of techniques gathered from various places around the web and combines them to create what is hopefully the most robust seed data system around."

  s.add_dependency "activerecord", "~> 3.0.0"
  s.add_dependency "activesupport", "~> 3.0.0"

  s.add_development_dependency "rspec", "~> 2.0"
  s.add_development_dependency "pg"
  s.add_development_dependency "mysql2"
  s.add_development_dependency(RUBY_VERSION >= '1.9.1' ? "sqlite3" : "sqlite3-ruby")

  s.files        = Dir.glob("{lib}/**/*") + %w(LICENSE README.md CHANGELOG.md)
  s.require_path = 'lib'
end
