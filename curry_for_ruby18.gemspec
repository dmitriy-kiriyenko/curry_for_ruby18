# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "curry_for_ruby18/version"

Gem::Specification.new do |s|
  s.name        = "curry_for_ruby18"
  s.version     = CurryForRuby18::VERSION
  s.authors     = ["Dmitriy Kiriyenko"]
  s.email       = ["dmitriy.kiriyenko@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Just a Proc#curry for ruby 1.8.x}
  s.description = %q{Just a Proc#curry for ruby 1.8.x. For more info about currying: http://en.wikipedia.org/wiki/Currying.
                     For more information about currying in Ruby: http://www.khelll.com/blog/ruby/ruby-currying/}

  s.rubyforge_project = "curry_for_ruby18"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
end
