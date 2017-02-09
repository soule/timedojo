# -*- encoding: utf-8 -*-
# stub: mail_view 2.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "mail_view"
  s.version = "2.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Josh Peek"]
  s.date = "2013-12-13"
  s.email = "josh@joshpeek.com"
  s.homepage = "https://github.com/37signals/mail_view"
  s.rubygems_version = "2.5.1"
  s.summary = "Visual email testing"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<tilt>, [">= 0"])
      s.add_development_dependency(%q<rack-test>, ["~> 0.6"])
      s.add_development_dependency(%q<mail>, ["~> 2.2"])
      s.add_development_dependency(%q<tmail>, ["~> 1.2"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<tilt>, [">= 0"])
      s.add_dependency(%q<rack-test>, ["~> 0.6"])
      s.add_dependency(%q<mail>, ["~> 2.2"])
      s.add_dependency(%q<tmail>, ["~> 1.2"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<tilt>, [">= 0"])
    s.add_dependency(%q<rack-test>, ["~> 0.6"])
    s.add_dependency(%q<mail>, ["~> 2.2"])
    s.add_dependency(%q<tmail>, ["~> 1.2"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
