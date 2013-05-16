require 'chefspec'

describe 'chrome::default' do
  let (:chef_run) { ChefSpec::ChefRunner.new.converge 'chrome::default' }
  it 'should do something' do
    pending 'Your recipe examples go here.'
  end
end
