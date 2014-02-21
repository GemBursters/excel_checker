# -*- encoding: utf-8 -*-
require File.expand_path('../lib/excel_checker/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Aaditi-Jain"]
  gem.email         = ["aaditi.jain@tcs.com"]
  gem.description   = %q{Checks for valid content type of excel files.}
  gem.summary       = %q{Accepts only excel files by checking the content type of the same.}
  gem.homepage      = "https://github.com/Aaditi/Gem-Bursters"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "excel_checker"
  gem.require_paths = ["lib"]
  gem.version       = ExcelChecker::VERSION
  gem.add_development_dependency "rspec","2.4.0"
  gem.add_development_dependency "rake"
end
