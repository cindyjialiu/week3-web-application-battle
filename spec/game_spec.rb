require 'game.rb'

describe Game do

  describe '#attack' do
    it 'damages the player' do
      game = Game.new("fake_timmy", "fake_shaun")
      fake_timmy = double("Player")
      fake_shaun = double("Player")
      expect(fake_shaun).to receive(:receive_damage)
      game.attack(fake_shaun)
    end
  end

  describe '#player1' do
    it 'returns player1' do
      game = Game.new("fake_timmy", "fake_shaun")
      fake_timmy = double("Player")
      fake_shaun = double("Player")
      expect(game.player1).to eq "fake_timmy"
    end
  end

  describe '#player2' do
    it 'returns player2' do
      game = Game.new("fake_timmy", "fake_shaun")
      fake_timmy = double("Player")
      fake_shaun = double("Player")
      expect(game.player2).to eq "fake_shaun"
    end
  end
end
