require 'plane'

describe Plane do

 # When we create a new plane, it should have a "flying" status, thus planes can not be created in the airport.
#
# When we land a plane at the airport, the plane in question should have its status changed to "landed"
#
# When the plane takes of from the airport, the plane's status should become "flying"

  let(:plane) { Plane.new }
  
  it 'has a flying status when created' do
    expect(plane.flying?).to be true
  end
  
  it 'has a flying status when in the air' do
    expect(plane.flying?).to be true
  end
  
  # it 'should not be flying when it has landed' do
  #   plane.land!
  #   expect(plane.flying?).to be false
  # end

  # it 'can land at an airport' do
  # expect(plane).to receive(land!)
  # end

  it 'can take off' do
  end
  
  it 'changes its status to flying after taking of' do
  end

end
 
# grand final
# Given 6 planes, each plane must land. When the airport is full, every plane must take off again.
# Be careful of the weather, it could be stormy!
# Check when all the planes have landed that they have the right status "landed"
# Once all the planes are in the air again, check that they have the status of flying!

describe "The gand finale (last spec)" do

  it 'all planes can land and all planes can take off' do
  end

end





