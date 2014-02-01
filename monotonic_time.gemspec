lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'monotonic_time'
  spec.version       = '0.0.1'
  spec.authors       = ['Dmitry Maksyoma']
  spec.email         = ['ledestin@gmail.com']
  spec.summary       = 'Monotonic clock time in seconds'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/ledestin/monotonic_time'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'

  spec.add_runtime_dependency 'hitimes', '~> 1.2'
end
