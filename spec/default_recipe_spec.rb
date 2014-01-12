require 'spec_helper'

describe 'git_ppa::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'should add ppa repository' do
    chef_run.node.set['lsb']['codename'] = 'precise'

    expect(chef_run).to add_apt_repository('git-ppa').with({
      uri: 'http://ppa.launchpad.net/git-core/ppa/ubuntu',
      distribution: 'precise',
      components: ['main'],
      key: 'git-ppa.gpg.key'
    })
  end

  it 'should upgrade git package' do
    expect(chef_run).to upgrade_package('git')
  end
end
