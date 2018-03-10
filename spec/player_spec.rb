require 'player'

describe 'player' do
    timmy = Player.new("Timmy")
    shaun = Player.new("Shaun")

  describe '#name' do
      it 'returns the same' do
      expect(timmy.name).to eq('Timmy')
    end
  end

  describe '#hit points' do
    it 'returns the hit points' do
      expect(timmy.hit_points).to eq Player::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(shaun).to receive(:receive_damage)
      timmy.attack(shaun)
    end
    end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect {shaun.receive_damage}.to change {shaun.hit_points}.by(-10)
    end
  end
end
