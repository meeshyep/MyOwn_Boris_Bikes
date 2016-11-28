require 'docking_station'

describe DockingStation do

it "Can release a bike from a docking station" do
  it { is_expected.to respond_to :release_bike }
end

end
