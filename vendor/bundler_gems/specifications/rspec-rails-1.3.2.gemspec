# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rspec-rails}
  s.version = "1.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["RSpec Development Team"]
  s.date = %q{2010-01-12}
  s.description = %q{Behaviour Driven Development for Ruby on Rails.}
  s.email = ["rspec-devel@rubyforge.org"]
  s.extra_rdoc_files = ["License.txt", "Manifest.txt", "TODO.txt", "generators/rspec/templates/previous_failures.txt"]
  s.files = [".document", "Contribute.rdoc", "History.rdoc", "License.txt", "Manifest.txt", "README.rdoc", "Rakefile", "TODO.txt", "Upgrade.rdoc", "generators/integration_spec/integration_spec_generator.rb", "generators/integration_spec/templates/integration_spec.rb", "generators/rspec/CHANGES", "generators/rspec/rspec_generator.rb", "generators/rspec/templates/previous_failures.txt", "generators/rspec/templates/rcov.opts", "generators/rspec/templates/rspec.rake", "generators/rspec/templates/script/autospec", "generators/rspec/templates/script/spec", "generators/rspec/templates/spec.opts", "generators/rspec/templates/spec_helper.rb", "generators/rspec_controller/USAGE", "generators/rspec_controller/rspec_controller_generator.rb", "generators/rspec_controller/templates/controller_spec.rb", "generators/rspec_controller/templates/helper_spec.rb", "generators/rspec_controller/templates/view_spec.rb", "generators/rspec_default_values.rb", "generators/rspec_model/USAGE", "generators/rspec_model/rspec_model_generator.rb", "generators/rspec_model/templates/model_spec.rb", "generators/rspec_scaffold/rspec_scaffold_generator.rb", "generators/rspec_scaffold/templates/controller_spec.rb", "generators/rspec_scaffold/templates/edit_erb_spec.rb", "generators/rspec_scaffold/templates/helper_spec.rb", "generators/rspec_scaffold/templates/index_erb_spec.rb", "generators/rspec_scaffold/templates/new_erb_spec.rb", "generators/rspec_scaffold/templates/routing_spec.rb", "generators/rspec_scaffold/templates/show_erb_spec.rb", "init.rb", "lib/autotest/discover.rb", "lib/autotest/rails_rspec.rb", "lib/spec/rails.rb", "lib/spec/rails/example.rb", "lib/spec/rails/example/assigns_hash_proxy.rb", "lib/spec/rails/example/controller_example_group.rb", "lib/spec/rails/example/cookies_proxy.rb", "lib/spec/rails/example/functional_example_group.rb", "lib/spec/rails/example/helper_example_group.rb", "lib/spec/rails/example/integration_example_group.rb", "lib/spec/rails/example/model_example_group.rb", "lib/spec/rails/example/render_observer.rb", "lib/spec/rails/example/routing_example_group.rb", "lib/spec/rails/example/routing_helpers.rb", "lib/spec/rails/example/view_example_group.rb", "lib/spec/rails/extensions.rb", "lib/spec/rails/extensions/action_controller/rescue.rb", "lib/spec/rails/extensions/action_controller/test_case.rb", "lib/spec/rails/extensions/action_controller/test_response.rb", "lib/spec/rails/extensions/action_view/base.rb", "lib/spec/rails/extensions/active_record/base.rb", "lib/spec/rails/extensions/active_support/test_case.rb", "lib/spec/rails/extensions/spec/matchers/have.rb", "lib/spec/rails/extensions/spec/runner/configuration.rb", "lib/spec/rails/interop/testcase.rb", "lib/spec/rails/matchers.rb", "lib/spec/rails/matchers/ar_be_valid.rb", "lib/spec/rails/matchers/assert_select.rb", "lib/spec/rails/matchers/change.rb", "lib/spec/rails/matchers/have_text.rb", "lib/spec/rails/matchers/include_text.rb", "lib/spec/rails/matchers/redirect_to.rb", "lib/spec/rails/matchers/render_template.rb", "lib/spec/rails/matchers/route_to.rb", "lib/spec/rails/mocks.rb", "lib/spec/rails/version.rb", "spec/autotest/mappings_spec.rb", "spec/rails_suite.rb", "spec/resources/controllers/action_view_base_spec_controller.rb", "spec/resources/controllers/application.rb", "spec/resources/controllers/controller_spec_controller.rb", "spec/resources/controllers/example.txt", "spec/resources/controllers/redirect_spec_controller.rb", "spec/resources/controllers/render_spec_controller.rb", "spec/resources/controllers/rjs_spec_controller.rb", "spec/resources/helpers/addition_helper.rb", "spec/resources/helpers/explicit_helper.rb", "spec/resources/helpers/more_explicit_helper.rb", "spec/resources/helpers/plugin_application_helper.rb", "spec/resources/helpers/view_spec_helper.rb", "spec/resources/models/animal.rb", "spec/resources/models/person.rb", "spec/resources/models/thing.rb", "spec/resources/views/controller_spec/_partial.html.erb", "spec/resources/views/controller_spec/action_setting_flash_after_session_reset.html.erb", "spec/resources/views/controller_spec/action_setting_flash_before_session_reset.html.erb", "spec/resources/views/controller_spec/action_setting_the_assigns_hash.html.erb", "spec/resources/views/controller_spec/action_with_errors_in_template.html.erb", "spec/resources/views/controller_spec/action_with_template.html.erb", "spec/resources/views/layouts/application.html.erb", "spec/resources/views/layouts/simple.html.erb", "spec/resources/views/objects/_object.html.erb", "spec/resources/views/render_spec/_a_partial.html.erb", "spec/resources/views/render_spec/action_with_alternate_layout.html.erb", "spec/resources/views/render_spec/some_action.html.erb", "spec/resources/views/render_spec/some_action.js.rjs", "spec/resources/views/rjs_spec/_replacement_partial.html.erb", "spec/resources/views/rjs_spec/hide_div.js.rjs", "spec/resources/views/rjs_spec/hide_page_element.js.rjs", "spec/resources/views/rjs_spec/insert_html.js.rjs", "spec/resources/views/rjs_spec/replace.js.rjs", "spec/resources/views/rjs_spec/replace_html.js.rjs", "spec/resources/views/rjs_spec/replace_html_with_partial.js.rjs", "spec/resources/views/rjs_spec/visual_effect.js.rjs", "spec/resources/views/rjs_spec/visual_toggle_effect.js.rjs", "spec/resources/views/tag_spec/no_tags.html.erb", "spec/resources/views/tag_spec/single_div_with_no_attributes.html.erb", "spec/resources/views/tag_spec/single_div_with_one_attribute.html.erb", "spec/resources/views/view_spec/_partial.html.erb", "spec/resources/views/view_spec/_partial_used_twice.html.erb", "spec/resources/views/view_spec/_partial_with_local_variable.html.erb", "spec/resources/views/view_spec/_partial_with_sub_partial.html.erb", "spec/resources/views/view_spec/_spacer.html.erb", "spec/resources/views/view_spec/accessor.html.erb", "spec/resources/views/view_spec/block_helper.html.erb", "spec/resources/views/view_spec/entry_form.html.erb", "spec/resources/views/view_spec/explicit_helper.html.erb", "spec/resources/views/view_spec/foo/show.html.erb", "spec/resources/views/view_spec/implicit_helper.html.erb", "spec/resources/views/view_spec/multiple_helpers.html.erb", "spec/resources/views/view_spec/path_params.html.erb", "spec/resources/views/view_spec/should_not_receive.html.erb", "spec/resources/views/view_spec/template_with_partial.html.erb", "spec/resources/views/view_spec/template_with_partial_using_collection.html.erb", "spec/resources/views/view_spec/template_with_partial_with_array.html.erb", "spec/resources/views/view_spec/view_helpers.html.erb", "spec/spec/rails/example/assigns_hash_proxy_spec.rb", "spec/spec/rails/example/configuration_spec.rb", "spec/spec/rails/example/controller_example_group_spec.rb", "spec/spec/rails/example/controller_isolation_spec.rb", "spec/spec/rails/example/cookies_proxy_spec.rb", "spec/spec/rails/example/error_handling_spec.rb", "spec/spec/rails/example/example_group_factory_spec.rb", "spec/spec/rails/example/helper_example_group_spec.rb", "spec/spec/rails/example/model_example_group_spec.rb", "spec/spec/rails/example/routing_example_group_spec.rb", "spec/spec/rails/example/shared_routing_example_group_examples.rb", "spec/spec/rails/example/test_unit_assertion_accessibility_spec.rb", "spec/spec/rails/example/view_example_group_spec.rb", "spec/spec/rails/extensions/action_view_base_spec.rb", "spec/spec/rails/extensions/active_record_spec.rb", "spec/spec/rails/interop/testcase_spec.rb", "spec/spec/rails/matchers/ar_be_valid_spec.rb", "spec/spec/rails/matchers/assert_select_spec.rb", "spec/spec/rails/matchers/errors_on_spec.rb", "spec/spec/rails/matchers/have_text_spec.rb", "spec/spec/rails/matchers/include_text_spec.rb", "spec/spec/rails/matchers/redirect_to_spec.rb", "spec/spec/rails/matchers/render_template_spec.rb", "spec/spec/rails/matchers/should_change_spec.rb", "spec/spec/rails/mocks/ar_classes.rb", "spec/spec/rails/mocks/mock_model_spec.rb", "spec/spec/rails/mocks/stub_model_spec.rb", "spec/spec/rails/sample_modified_fixture.rb", "spec/spec/rails/sample_spec.rb", "spec/spec/rails/spec_spec.rb", "spec/spec_helper.rb"]
  s.homepage = %q{http://rspec.info}
  s.post_install_message = %q{**************************************************

  Thank you for installing rspec-rails-1.3.2

  If you are upgrading, do this in each of your rails apps
  that you want to upgrade:

    $ ruby script/generate rspec

  Please be sure to read History.rdoc and Upgrade.rdoc
  for useful information about this release.

**************************************************
}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rspec}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{rspec-rails 1.3.2}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rspec>, [">= 1.3.0"])
      s.add_runtime_dependency(%q<rack>, [">= 1.0.0"])
      s.add_development_dependency(%q<cucumber>, [">= 0.3.99"])
      s.add_development_dependency(%q<hoe>, [">= 2.3.3"])
    else
      s.add_dependency(%q<rspec>, [">= 1.3.0"])
      s.add_dependency(%q<rack>, [">= 1.0.0"])
      s.add_dependency(%q<cucumber>, [">= 0.3.99"])
      s.add_dependency(%q<hoe>, [">= 2.3.3"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.3.0"])
    s.add_dependency(%q<rack>, [">= 1.0.0"])
    s.add_dependency(%q<cucumber>, [">= 0.3.99"])
    s.add_dependency(%q<hoe>, [">= 2.3.3"])
  end
end
