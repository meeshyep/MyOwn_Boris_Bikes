require 'docking_station'

describe DockingStation do

  attr_reader :bike

  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bike) }

  it 'allows a bike to be docked' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
  end

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'raises an error if the docking station capacity has been reached' do
      20.times { subject.dock Bike.new}
      expect { subject.dock Bike.new }.to raise_error 'There is no room to dock your bike'
    end
  end
end
