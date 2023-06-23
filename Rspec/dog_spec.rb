require 'rspec'
require_relative 'dog'

RSpec.describe Dog do

    describe '#bark' do
        it 'returns string "Woof!"' do
            expect(subject.bark).to eql("Woof!")
        end
    end    

    describe '#feed' do
        context 'feed the dog if it is hungry' do
            subject {described_class.new(6)}
            it 'return true' do
                subject.feed
                expect(subject).to_not be_hungry
            end
        end
    end

    describe '#hungry?' do
        context 'when hunger_level is greater than 5' do
            subject {dog= described_class.new(6)}
            it 'returns true' do
                expect(subject).to be_hungry
            end
        end

        context 'if hunger_level is less than or equal to 5' do
            subject {dog= described_class.new(5)}
            it 'returns false' do
                expect(subject).to_not be_hungry
            end
        end
    end

end