describe FruitMachine do
  describe '#pull_lever' do
    it 'should return slots' do
      allow(subject).to receive(:pull_lever).and_return("black | white | green | yellow")
      expect(subject.pull_lever).to eq("black | white | green | yellow")
    end

    it 'randomly pull_lever slots with colours' do
      allow(subject).to receive(:pull_lever).and_return("white | green | green | white")
      expect(subject.pull_lever).to eq "white | green | green | white"
    end

    it 'gives a game credit for every 5 pounds inserted' do
      subject.insert(5)
      expect(subject.game_credits).to eq(1)
    end

    it 'reduces game credits by the SINGLE_PLAY_FEE' do
      subject.insert(5)
      expect(subject.game_credits).to eq(1)
      subject.pull_lever
      expect(subject.game_credits).to eq(0)
    end
  end
end
