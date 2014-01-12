require 'spec_helper'

describe 'git_ppa::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'should upgrade git package' do
    expect(chef_run).to upgrade_package('git')
  end
end
