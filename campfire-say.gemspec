# -*- ruby; encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.name = 'campfire-say'
  gem.summary = 'Post to Campfire from the command line'
  gem.version = '0.0.1'
  gem.author = 'Daniel Brockman'
  gem.email = 'daniel@brockman.se'
  gem.files = `git ls-files`.split($\)
  gem.executable = 'campfire-say'
  gem.add_dependency 'tinder', '~> 1.8.0'
end
