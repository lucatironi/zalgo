# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "zalgo/version"

Gem::Specification.new do |s|
  s.name        = "zalgo"
  s.version     = Zalgo::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Luca Tironi"]
  s.email       = ["luca.tironi@gmail.com"]
  s.homepage    = "https://github.com/lucatironi/zalgo"
  s.summary     = %q{He who waits behind the wall}
  s.description = %q{All is lost}

  s.rubyforge_project = "zalgo"

  s.add_dependency('htmlentities')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
