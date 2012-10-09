# -*- encoding: utf-8 -*-
require File.expand_path('../lib/prison_parser/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jason Dew"]
  gem.email         = ["jason.dew@gmail.com"]
  gem.description   = %q{Parses save game files from the Prison Architect game}
  gem.summary       = %q{Prison Architect savegame parser}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "prison_parser"
  gem.require_paths = ["lib"]
  gem.version       = PrisonParser::VERSION

  gem.add_dependency "treetop"

  gem.add_development_dependency "guard"
  gem.add_development_dependency "guard-rspec"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "growl"
  gem.add_development_dependency "rb-fsevent", "~> 0.9.1"
  gem.add_development_dependency "awesome_print"
end
