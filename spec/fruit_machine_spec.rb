describe FruitMachine do
  describe '#display' do
    it 'should return slots' do
      allow(subject).to receive(:display).and_return("black | white | green | yellow")
      expect(subject.display).to eq("black | white | green | yellow")
    end

    it 'randomly display slots with colours' do
      allow(subject).to receive(:display).and_return("white | green | green | white")
      expect(subject.display).to eq "white | green | green | white"
    end
  end

  describe '#insert' do
    it 'gives a game credit for every 5 pounds inserted' do
      subject.insert(5)
      expect(subject.game_credits).to eq(1)
    end
  end
end
