$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "vcard/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "vcard"
  s.version     = Vcard::VERSION
  s.authors     = ["29sul"]
  s.email       = ["contato@29sul.com.br"]
  s.homepage    = "http://29sul.com.br"
  s.summary     = "Gem para exportar em formato VCARD."
  s.description = "Gem para exportar em formato VCARD."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "> 4.0.0"

  s.add_development_dependency "sqlite3"
end
