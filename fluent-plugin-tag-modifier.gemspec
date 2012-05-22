# -*- encoding: utf-8 -*-
require File.expand_path('../lib/fluent-plugin-tag-modifier/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Shinji Tanaka"]
  gem.email         = ["shinji.tanaka@gmail.com"]
  gem.description   = %q{This is a fluentd plugin to modify the tag of the messages based on the 'tag' field of its body.}
  gem.summary       = %q{fluentd plugin to modify the tag of messages}
  gem.homepage      = "https://github.com/stanaka/fluent-plugin-tag-modifier"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "fluent-plugin-tag-modifier"
  gem.require_paths = ["lib"]
  gem.version       = "0.0.1"
end
