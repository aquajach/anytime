Gem::Specification.new do |s|
  s.name        = 'anytime'
  s.version     = '0.1.2'
  s.date        = '2012-09-14'
  s.summary     = "Add a class to client side widget for customization"
  s.description = "A relatively complete version to flexibly switch current time/date in Rails"
  s.authors     = ["Jack Chen"]
  s.email       = 'aquajach@gmail.com'
  s.files       = Dir["lib/**/*.rb"]
  s.homepage    = 'http://rubygems.org/gems/anytime'
  s.add_runtime_dependency 'mocha', '>= 0.10.0'
end