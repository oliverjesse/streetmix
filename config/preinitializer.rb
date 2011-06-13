# require "#{File.dirname(__FILE__)}/../vendor/bundler_gems/environment"
#  
# class Rails::Boot
#   def run
#     load_initializer
#     extend_environment
#     Rails::Initializer.run(:set_load_path)
#   end
#  
#   def extend_environment
#     Rails::Initializer.class_eval do
#       old_load = instance_method(:load_environment)
#       define_method(:load_environment) do
#         Bundler.require_env RAILS_ENV
#         old_load.bind(self).call
#       end
#     end
#   end
# end

begin
  require "rubygems"
  require "bundler"
rescue LoadError
  raise "Could not load the bundler gem. Install it with `gem install bundler`."
end

if Gem::Version.new(Bundler::VERSION) <= Gem::Version.new("0.9.24")
  raise RuntimeError, "Your bundler version is too old for Rails 2.3." +
   "Run `gem install bundler` to upgrade."
end

begin
  # Set up load paths for all bundled gems
  ENV["BUNDLE_GEMFILE"] = File.expand_path("../../Gemfile", __FILE__)
  Bundler.setup
rescue Bundler::GemNotFound
  raise RuntimeError, "Bundler couldn't find some gems." +
    "Did you run `bundle install`?"
end