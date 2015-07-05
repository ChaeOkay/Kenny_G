# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kenny_g/version'

Gem::Specification.new do |spec|
  spec.name          = "kenny_g"
  spec.version       = KennyG::VERSION
  spec.authors       = ["Chae"]
  spec.email         = ["chaeokay@gmail.com"]
  spec.summary       = %q{Scorekeeping from an almost CPA}
  spec.description   = %q{Replaces using scrap paper and pencil}
  spec.homepage      = %q{https://github.com/ChaeOkay/Kenny_G}
  spec.license       = "MIT"

  spec.files        = `git ls-files`.split($/)
  spec.require_path = "lib"
  spec.required_ruby_version = ">=2.0.0"

  spec.test_files = Dir["spec/*_spec.rb"]

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end
end
