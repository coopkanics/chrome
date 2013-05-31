require 'chefspec'

describe 'chrome::chrome' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'chrome::chrome' }
  it 'verify the stable chrome package is installed' do
    expect(chef_run).to install_package 'google-chrome-stable'
  end
end
