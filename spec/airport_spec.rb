require 'airport'
require 'plane'

# A plane currently in the airport can be requested to take off.
#
# No more planes can be added to the airport, if it's full.
# It is up to you how many planes can land in the airport and how that is impermented.
#
# If the airport is full then no planes can land

describe Airport do

  let(:airport)       { Airport.new }
  let(:plane)         { Plane.new}
  
  context 'airport capacity' do
  
   it 'has no planes when created' do
      expect(airport.empty?).to be true
    end

    it 'cant take anymore than six planes' do
      expect(airport.capacity).to eq (6)
    end

    it 'knows how many planes it has' do
      expect(airport.plane_count).to eq (0)
      airport.land!(plane)
      expect(airport.plane_count).to eq (1)
    end

  end


  context 'taking off and landing' do
    
    it 'can land a plane' do
      airport.land!(plane)
      expect(airport.planes).to eq [plane]
    end
    
    it 'a plane can take off' do
      airport.take_off!(plane)
      expect(airport.plane_count).to eq (0)
    end

  end
  
  context 'traffic control' do
    it 'a plane cannot land if the airport is full' do
      plane_count == capacity
      expect(airport.land!(plane)).to receive
    end
    
    # Include a weather condition using a module.
    # The weather must be random and only have two states "sunny" or "stormy".
    # Try and take off a plane, but if the weather is stormy, the plane can not take off and must remain in the airport.
    # 
    # This will require stubbing to stop the random return of the weather.
    # If the airport has a weather condition of stormy,
    # the plane can not land, and must not be in the airport
    
    context 'weather conditions' do

      it 'a plane cannot take off when there is a storm brewing' do
      end
      
      it 'a plane cannot land in the middle of a storm' do
      end

    end
  
  end
end