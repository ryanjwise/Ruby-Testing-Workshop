require 'testing_workshop'

RSpec.describe TestingWorkshop do
  subject(:workshop) { described_class.new }

  describe '#run' do
    it 'prints hello world' do
      expect { workshop.run }.to output("hello world\n").to_stdout
    end
  end
end
