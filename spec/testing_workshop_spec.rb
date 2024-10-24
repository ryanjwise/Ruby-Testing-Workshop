require 'testing_workshop'

RSpec.describe TestingWorkshop do
  subject(:workshop) { described_class.new }

  describe 'Setup Verification' do
    it 'is defined and can be instantiated' do
      expect(workshop).to be_instance_of(TestingWorkshop)
    end
  end
end
