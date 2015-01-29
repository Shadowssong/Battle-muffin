# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'battle-muffin'
  spec.version       = '1.0.0'
  spec.authors       = ['Greg Lombardo']
  spec.email         = ['shadowssong@gmail.com']
  spec.description   = %q{Query battle.net api}
  spec.summary       = %q{Query battle.net api}
  spec.homepage      = 'https://github.com/shadowssong/battle-muffin'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'httparty'
  spec.add_development_dependency 'pry'
end
