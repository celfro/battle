require 'player'

describe Player do
  subject(:alexis) { Player.new ('Alexis') }

  describe '#name' do
    it 'returns the name' do
      expect(alexis.name).to eq('Alexis')
    end
  end
end
