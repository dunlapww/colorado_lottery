require './lib/game'

RSpec.describe Game do
  describe 'game' do
    it 'exists' do
      pick_4 = Game.new('Pick 4', 2)
      expect(pick_4).to be_a Game
    end

    it 'has attributes' do
      pick_4 = Game.new('Pick 4', 2)
      expect(pick_4.name).to eq('Pick 4')
      expect(pick_4.cost).to eq(2)
    end

    it 'has a national_drawing? method' do
      mega_millions = Game.new('Mega Millions', 5, true)
      pick_4 = Game.new('Pick 4', 2)
      expect(mega_millions.national_drawing?).to eq(true)
      expect(pick_4.national_drawing?).to eq(false)
    end
  end
end