lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'correios/cep/version'

Gem::Specification.new do |spec|
  spec.name          = "correios-cep"
  spec.version       = Correios::CEP::VERSION
  spec.authors       = ["Prodis a.k.a. Fernando Hamasaki de Amorim"]
  spec.email         = ["prodis@gmail.com"]
  spec.description   = %q{Correios CEP gem gets updated Brazilian address from a zipcode, directly from Correios database. No HTML parsers.}
  spec.summary       = spec.description
  spec.homepage      = "http://prodis.blog.br/correios-cep-gem-para-consulta-de-enderecos-por-cep"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.platform              = Gem::Platform::RUBY
  spec.required_ruby_version = Gem::Requirement.new(">= 1.9.3")

  spec.add_dependency "log-me" #,   "= 0.0.7"
  spec.add_dependency "nokogiri" #, "~> 1.6"


  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec",   "~> 3.1"
  spec.add_development_dependency "vcr",     "~> 2.9"
  spec.add_development_dependency "webmock", "~> 1.15"
end
