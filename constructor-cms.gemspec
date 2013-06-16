# encoding: utf-8

require File.expand_path('../core/lib/constructor_core/version', __FILE__)

Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = %q{constructor-cms}
  s.version = ConstructorCore::VERSION
  s.summary = %q{ConstructorCms}
  s.authors = ['Ivan Zotov']
  s.require_paths = %w(lib)
  s.email = 'ivanzotov@gmail.com'
  s.homepage = 'http://ivanzotov.github.com/constructor'
  s.description = 'Constructor – content management system'
  s.test_files        = `git ls-files -- spec/*`.split("\n")
  s.files = %w(
    lib/constructor-cms.rb
    lib/constructor-cms/engine.rb
    script/rails
    LICENSE.md
    README.md
    config/routes.rb
  )

  s.add_dependency 'constructor-core', ConstructorCore::VERSION
  s.add_dependency 'constructor-pages', ConstructorCore::VERSION
  s.add_dependency 'russian'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails'
end
