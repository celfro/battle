require 'player'

describe Player do
  subject(:alexis) { Player.new ('Alexis') }
  subject(:celia) { Player.new('Celia') }

  describe '#name' do
    it 'returns the name' do
      expect(alexis.name).to eq('Alexis')
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(alexis.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(celia).to receive(:receive_damage)
      alexis.attack(celia)
    end
  end

  describe '#receive_damage' do
    it 'reduces players points' do
      expect { alexis.receive_damage }.to change { alexis.hit_points }.by(-10)
    end
  end
end
