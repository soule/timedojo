# -*- encoding: utf-8 -*-
# stub: dotiw 3.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "dotiw"
  s.version = "3.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ryan Bigg", "Lauran Jansen"]
  s.date = "2016-03-08"
  s.description = "dotiw is a gem for Rails that overrides the\n              default distance_of_time_in_words and provides\n              a more accurate output. Do you crave accuracy\n              down to the second? So do I. That's why I made\n              this gem. - Ryan"
  s.email = ["radarlistener@gmail.com", "github@lauranjansen.com"]
  s.homepage = "https://github.com/radar/dotiw"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.5.1"
  s.summary = "Better distance_of_time_in_words for Rails"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<actionpack>, [">= 3"])
      s.add_runtime_dependency(%q<i18n>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.0"])
      s.add_development_dependency(%q<tzinfo>, [">= 0"])
    else
      s.add_dependency(%q<actionpack>, [">= 3"])
      s.add_dependency(%q<i18n>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 3.0"])
      s.add_dependency(%q<tzinfo>, [">= 0"])
    end
  else
    s.add_dependency(%q<actionpack>, [">= 3"])
    s.add_dependency(%q<i18n>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 3.0"])
    s.add_dependency(%q<tzinfo>, [">= 0"])
  end
end
