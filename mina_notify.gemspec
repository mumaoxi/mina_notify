# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mina_notify'
require 'mina_notify/version'

Gem::Specification.new do |spec|
  spec.name = "mina_notify"
  spec.version = MinaNotify::VERSION
  spec.authors = ["saxer"]
  spec.licenses = ["MIT"]
  spec.email = ["15201280641@qq.com"]


  spec.summary = %q{mina deploy notify}
  spec.description = %q{mina deploy deploys}
  spec.homepage = "https://github.com/mumaoxi/mina_notify.git"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir = "bin"
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "mina", "~> 0.3.3"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "faraday", "~> 0.9.1"
end
