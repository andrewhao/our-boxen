require 'spec_helper'
# Rename this file to classname_spec.rb
# Check other boxen modules for examples
# or read http://rspec-puppet.com/tutorial/
describe 'silver_searcher' do
  let(:pre_condition) { "class homebrew {}" }

  it { should contain_class('silver_searcher') }
  it { should contain_package('the_silver_searcher') }
end
