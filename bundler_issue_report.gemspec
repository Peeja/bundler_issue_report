# -*- encoding: utf-8 -*-
require File.expand_path('../lib/bundler_issue_report/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Peter Jaros"]
  gem.email         = ["peter.a.jaros@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "bundler_issue_report"
  gem.require_paths = ["lib"]
  gem.version       = BundlerIssueReport::VERSION
end
