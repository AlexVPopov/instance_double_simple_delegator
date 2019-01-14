# frozen_string_literal: true

require_relative '../lab.rb'

RSpec.describe Lab do
  context 'when not stubbed' do
    let(:lab) { Lab.new(Dog.new) }

    it 'barks correctly' do
      expect(lab.bark).to eq 'Woof'
    end

    it 'has correct color' do
      expect(lab.color).to eq 'brown'
    end
  end

  context 'when stubbed' do
    let(:stubbed_lab) { instance_double(Lab, bark: 'Meow', color: 'gold') }

    it 'barks correctly' do
      expect(stubbed_lab.bark).to eq 'Meow'
    end

    it 'has correct color' do
      expect(stubbed_lab.color).to eq 'gold'
    end
  end
end
