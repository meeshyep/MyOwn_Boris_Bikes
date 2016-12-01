require 'test_docking_station'

describe DockingStation do

  attr_reader :bike

  it { is_expected.to respond_to :release_bike}
  it { is_expected.to respond_to(:dock).with(1).argument}

  # it 'releases a working bike' do
  #   bike = subject.release_bike
  #   expect(bike).to be_working
  # end

  it 'docks a bike' do
    expect(subject.dock(bike)).to eq bike
  end

  describe '#release_bike' do
    it 'raises an error if there are no bikes' do
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end
  end

end
