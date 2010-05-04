# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{geokit}
  s.version = "1.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Andre Lewis"]
  s.date = %q{2009-09-21}
  s.description = %q{}
  s.email = ["andre@earthcode.com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.markdown", "Rakefile", "geokit.gemspec", "lib/geokit.rb", "lib/geokit/geocoders.rb", "lib/geokit/mappable.rb", "test/test_base_geocoder.rb", "test/test_bounds.rb", "test/test_ca_geocoder.rb", "test/test_geoloc.rb", "test/test_geoplugin_geocoder.rb", "test/test_google_geocoder.rb", "test/test_google_reverse_geocoder.rb", "test/test_inflector.rb", "test/test_ipgeocoder.rb", "test/test_latlng.rb", "test/test_multi_geocoder.rb", "test/test_us_geocoder.rb", "test/test_yahoo_geocoder.rb", "test/test_multi_ip_geocoder.rb"]
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{geokit}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Geokit provides geocoding and distance calculation in an easy-to-use API}
  s.test_files = ["test/test_base_geocoder.rb", "test/test_bounds.rb", "test/test_ca_geocoder.rb", "test/test_geoloc.rb", "test/test_geoplugin_geocoder.rb", "test/test_google_geocoder.rb", "test/test_google_reverse_geocoder.rb", "test/test_inflector.rb", "test/test_ipgeocoder.rb", "test/test_latlng.rb", "test/test_multi_geocoder.rb", "test/test_multi_ip_geocoder.rb", "test/test_us_geocoder.rb", "test/test_yahoo_geocoder.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe>, [">= 1.12.2"])
    else
      s.add_dependency(%q<hoe>, [">= 1.12.2"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 1.12.2"])
  end
end
