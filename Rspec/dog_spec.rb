require 'rspec'
require_relative 'dog'

describe Dog do
    describe '#bark' do
        it 'returns string "Woof!"' do
            expect(subject.bark).to eql("Woof!")
        end
    end    

    describe '#hungry?' do
        it 'returns true if hunger_level more than 5' do
            hungry_dog = Dog.new(6)
            expect(hungry_dog.hungry?).to eql(true)
        end

    end

end