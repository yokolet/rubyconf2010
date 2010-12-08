# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{do_jdbc}
  s.version = "0.10.2"
  s.platform = %q{java}

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Alex Coles"]
  s.date = %q{2010-05-18}
  s.description = %q{Provides JDBC support for usage in DO drivers for JRuby}
  s.email = %q{alex@alexbcoles.com}
  s.extra_rdoc_files = ["README.markdown", "ChangeLog.markdown", "LICENSE"]
  s.files = ["lib/do_jdbc/version.rb", "lib/do_jdbc.rb", "tasks/compile.rake", "tasks/release.rake", "LICENSE", "Rakefile", "ChangeLog.markdown", "README.markdown", "lib/do_jdbc_internal.jar"]
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{dorb}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{DataObjects JDBC support library}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<data_objects>, ["= 0.10.2"])
      s.add_development_dependency(%q<rake-compiler>, ["~> 0.7"])
    else
      s.add_dependency(%q<data_objects>, ["= 0.10.2"])
      s.add_dependency(%q<rake-compiler>, ["~> 0.7"])
    end
  else
    s.add_dependency(%q<data_objects>, ["= 0.10.2"])
    s.add_dependency(%q<rake-compiler>, ["~> 0.7"])
  end
end
