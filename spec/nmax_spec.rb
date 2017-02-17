require 'spec_helper'

describe Nmax do
  context 'when all inputs are valid' do
    it 'returns n maximum elements from file' do
      data = File.open('spec/data/test.txt')

      result = Nmax.max_integers(data, 3)

      expect(result).to eq [10_000_000_002, 10_000_000_001, 10_000_000_000]
    end
  end

  context 'when invalid data' do
    it 'returns nil' do
      data = File.open('spec/data/empty.txt')

      result = Nmax.max_integers(data, 5)

      expect(result).to eq nil
    end
  end

  context 'when invalid count' do
    it 'returns nil' do
      data = File.open('spec/data/test.txt')

      result = Nmax.max_integers(data, -2)

      expect(result).to eq nil
    end
  end
end
