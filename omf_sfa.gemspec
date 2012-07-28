# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omf-sfa/version"

Gem::Specification.new do |s|
  s.name        = "omf_web"
  s.version     = OMF::SFA::VERSION
  s.authors     = ["NICTA"]
  s.email       = ["omf-user@lists.nicta.com.au"]
  s.homepage    = "https://www.mytestbed.net"
  s.summary     = %q{OMF's SFA compliant AM.}
  s.description = %q{OMF's Aggregate manager with SFA and new REST API.}

  s.rubyforge_project = "omf_sfa"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
#  s.add_development_dependency "minitest", "~> 2.11.3"
  s.add_runtime_dependency "erector", "~> 0.8.3"
  s.add_runtime_dependency "rack", "~> 1.3.5"
  s.add_runtime_dependency "thin", "~> 1.3.1"
  s.add_runtime_dependency "log4r", "~> 1.1.10"
  s.add_runtime_dependency "maruku", "~> 0.6.0"
  s.add_runtime_dependency "json", "~> 1.7.3"
end