# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'string_irc/version'

Gem::Specification.new do |gem|
  gem.name          = "string_irc"
  gem.version       = StringIrc::VERSION
  gem.authors       = ["Spring_MT"]
  gem.email         = ["today.is.sky.blue.sky@gmail.com"]
  gem.homepage      = 'https://github.com/SpringMT/string_irc'
  gem.summary       = %q{TODO: Write a gem summary}

  gem.rubyforge_project = 'string_irc'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.description = <<description

description
end
