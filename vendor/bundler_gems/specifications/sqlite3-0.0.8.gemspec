# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sqlite3}
  s.version = "0.0.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jakub Ku\305\272ma"]
  s.date = %q{2010-02-08}
  s.description = %q{SQLite3 FFI bindings for Ruby 1.9}
  s.email = %q{qoobaa@gmail.com}
  s.extra_rdoc_files = ["LICENSE", "README.rdoc"]
  s.files = [".document", ".gitignore", "LICENSE", "README.rdoc", "Rakefile", "VERSION", "lib/sqlite3.rb", "lib/sqlite3/api.rb", "lib/sqlite3/constants.rb", "lib/sqlite3/database.rb", "lib/sqlite3/driver.rb", "lib/sqlite3/encoding.rb", "lib/sqlite3/errors.rb", "lib/sqlite3/extensions.rb", "lib/sqlite3/pragmas.rb", "lib/sqlite3/resultset.rb", "lib/sqlite3/statement.rb", "sqlite3.gemspec", "test/fixtures/SQLite.gif", "test/helper.rb", "test/test_active_record.rb", "test/test_database_initialization.rb", "test/test_database_queries_utf_16.rb", "test/test_database_queries_utf_8.rb", "test/test_statement.rb"]
  s.homepage = %q{http://github.com/qoobaa/sqlite3}
  s.post_install_message = %q{==== WARNING ===================================================================
This is an early alpha version of SQLite3/Ruby FFI bindings!
Currently we support Ruby 1.9 ONLY.

If you need native bindings for Ruby 1.8 - install sqlite3-ruby instead.
You may need to uninstall this sqlite3 gem as well.

Thank you for installing sqlite3 gem! Suggestions: qoobaa@gmail.com
================================================================================
}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{SQLite3 FFI bindings for Ruby 1.9}
  s.test_files = ["test/test_database_queries_utf_8.rb", "test/test_statement.rb", "test/test_active_record.rb", "test/test_database_queries_utf_16.rb", "test/test_database_initialization.rb", "test/helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ffi>, [">= 0.6.0"])
      s.add_development_dependency(%q<test-unit>, [">= 2.0"])
      s.add_development_dependency(%q<activerecord>, [">= 2.3.5"])
    else
      s.add_dependency(%q<ffi>, [">= 0.6.0"])
      s.add_dependency(%q<test-unit>, [">= 2.0"])
      s.add_dependency(%q<activerecord>, [">= 2.3.5"])
    end
  else
    s.add_dependency(%q<ffi>, [">= 0.6.0"])
    s.add_dependency(%q<test-unit>, [">= 2.0"])
    s.add_dependency(%q<activerecord>, [">= 2.3.5"])
  end
end
