# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
ext = File.expand_path('../ext', __FILE__)
$LOAD_PATH.unshift(ext) unless $LOAD_PATH.include?(ext)
require 'ztx/version'

Gem::Specification.new do |spec|
  spec.name          = "ztx"
  spec.version       = Tx::VERSION
  spec.authors       = ["Vy Dao Nguyen"]
  spec.email         = ["vydn@zigexn.vn"]

  spec.summary       = %q{Fork of old Tx gem, a library for a compact trie data structure, compatible with Ruby 2.2/2.3.}
  spec.description   = %q{Fork of old Tx gem, a library for a compact trie data structure, compatible with Ruby 2.2/2.3.}
  spec.homepage      = "https://github.com/vydao/ztx"
  spec.license       = "MIT"
  spec.extra_rdoc_files = ["doc_src/README.txt"]
  spec.has_rdoc      = true
  spec.extensions = ["ext/extconf.rb"]
  spec.rdoc_options = ["--quiet", "--title", "tx-ruby Reference", "--main", "doc_src/README.txt"]

  spec.files         = Dir["README.md","Gemfile","Rakefile", "test/*", "lib/ztx/version.rb", "lib/ztx.rb", "lib/i386-msvcrt/tx_core.so", "ext/depend", "ext/tx_swig.h", "ext/tx.cpp", "ext/tx_swig.i", "ext/swig.patch", "ext/Makefile", "ext/tx_swig_wrap.cxx", "ext/tx.hpp", "ext/tx_swig.cpp", "ext/extconf.rb", "ext/ssv.cpp", "ext/ssv.hpp"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib", "lib/i386-msvcrt"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
