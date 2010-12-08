# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dm-sqlite-adapter}
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dan Kubb"]
  s.date = %q{2010-09-07}
  s.description = %q{Sqlite3 Adapter for DataMapper}
  s.email = %q{dan.kubb@gmail.com}
  s.extra_rdoc_files = ["LICENSE"]
  s.files = [".gitignore", "Gemfile", "LICENSE", "Rakefile", "VERSION", "dm-sqlite-adapter.gemspec", "lib/dm-sqlite-adapter.rb", "lib/dm-sqlite-adapter/adapter.rb", "lib/dm-sqlite-adapter/spec/setup.rb", "spec/adapter_spec.rb", "spec/rcov.opts", "spec/spec.opts", "spec/spec_helper.rb", "tasks/local_gemfile.rake", "tasks/spec.rake", "tasks/yard.rake", "tasks/yardstick.rake"]
  s.homepage = %q{http://github.com/datamapper/dm-sqlite-adapter}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{datamapper}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Sqlite3 Adapter for DataMapper}
  s.test_files = ["spec/adapter_spec.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<do_sqlite3>, ["~> 0.10.2"])
      s.add_runtime_dependency(%q<dm-do-adapter>, ["~> 1.0.2"])
      s.add_development_dependency(%q<rspec>, ["~> 1.3"])
    else
      s.add_dependency(%q<do_sqlite3>, ["~> 0.10.2"])
      s.add_dependency(%q<dm-do-adapter>, ["~> 1.0.2"])
      s.add_dependency(%q<rspec>, ["~> 1.3"])
    end
  else
    s.add_dependency(%q<do_sqlite3>, ["~> 0.10.2"])
    s.add_dependency(%q<dm-do-adapter>, ["~> 1.0.2"])
    s.add_dependency(%q<rspec>, ["~> 1.3"])
  end
end
