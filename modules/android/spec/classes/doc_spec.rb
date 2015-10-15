require 'spec_helper'

describe 'android::doc' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
    }
  end

  let(:title) { 'doc' }

  it do
    should contain_android__definition(title).with(
      :ensure    => 'present',
      :dest_path => 'docs'
    )
  end
end
