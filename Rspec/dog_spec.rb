require 'rspec'
require_relative 'dog'

RSpec.describe Dog do
    describe '#bark' do
        it 'returns string "Woof!"' do
            expect(subject.bark).to eql("Woof!")
        end
    end    

    describe '#hungry?' do
        it 'returns true if hunger_level more than 5' do
            dog= described_class.new(6)
            expect(dog).to be_hungry
        end

        it 'returns false if hunger_level is less than or equal to 5' do
            dog= described_class.new(5)
            expect(dog).to_not be_hungry
        end

    end

end