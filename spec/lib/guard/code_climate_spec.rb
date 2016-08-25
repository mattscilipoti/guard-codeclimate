require 'guard/compat/test/helper'
require 'guard/code_climate'

RSpec.describe Guard::CodeClimate do
  subject(:guard_plugin) { Guard::CodeClimate.new }
  let(:mock_guard_shell) { instance_double('Guard::Dsl') }

  before(:each) do
    # insert guard_shell stub, to avoid running the actual, slow analysis
    allow(mock_guard_shell).to receive(:eager) do
      # noop
    end
    allow(subject).to receive(:guard_shell) { mock_guard_shell }
  end

  describe '#start' do
    it 'works' do
      # TODO: does this test that it "works"?
      subject.start
    end
  end

  describe '#stop' do
    it 'works' do
      # TODO: does this test that it "works"?
      subject.stop
    end
  end

  describe '#run_all' do
    it 'analyzes the project' do
      expect(mock_guard_shell).to receive(:eager).with('codeclimate analyze')
      subject.run_all
    end
  end

  describe '#run_on_modifications' do
    it 'does nothing' do
      expect(mock_guard_shell).not_to receive(:eager)
      expect($stdout).not_to receive(:puts).with('foo')
      subject.run_on_modifications(%w(foo))
    end
  end
end

RSpec.describe Guard::Dsl do
  describe '#n' do
    it 'uses Guard to notify' do
      expect(Guard::Compat::UI).to receive(:notify)
        .with('foo', title: 'bar', image: 'baz')
      subject.n('foo', 'bar', 'baz')
    end
  end
end
