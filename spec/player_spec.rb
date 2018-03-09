require 'player'

describe 'player' do
  describe '#name' do
    timmy = Player.new("Timmy")
      it 'returns the same' do
      expect(timmy.name).to eq('Timmy')
    end
  end
end
