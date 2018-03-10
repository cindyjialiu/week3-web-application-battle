require 'game.rb'

describe Game do


  describe '#attack' do
    it 'damages the player' do
      game = Game.new
      fake_timmy = double("Player")
      fake_shaun = double("Player")
      expect(fake_shaun).to receive(:receive_damage)
      game.attack(fake_shaun)
    end
  end
end
