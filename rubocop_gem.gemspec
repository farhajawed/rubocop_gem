# frozen_string_literal: true

require_relative 'lib/rubocop_gem/version'

Gem::Specification.new do |spec|
  spec.name          = 'rubocop_gem'
  spec.version       = RubocopGem::VERSION
  spec.authors       = ['Farha Jawed']
  spec.email         = ['farhajw@gmail.com']

  spec.summary       = "My default rubocop configuration"
  spec.description   = 'A set of default rubocop configuration to be used across all my applications'
  spec.homepage      = 'http://farhajawed.netlify.app'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.5.0')

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = `git ls-files`.split("\n")
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rubocop', '~> 1.12.1'
  spec.add_dependency 'rubocop-rails'
  spec.add_dependency 'rubocop-rspec'
end
