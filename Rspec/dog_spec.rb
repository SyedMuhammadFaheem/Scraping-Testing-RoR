require 'rspec'
require_relative 'dog'

describe Dog do
    describe '#bark' do
        subject {Dog.new}
        it 'returns string "Woof!"' do
            expect(subject.bark).to eql('Woof!')
        end

    end    
end