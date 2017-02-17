require 'spec_helper'

describe Nmax do
  context 'when all inputs are valid' do
    let(:data) { File.open('spec/data/test.txt') }

    it 'should return n maximum elements from file' do
      result = Nmax.max_integers(data, 3)
      expect(result).to eq [10000000002, 10000000001, 10000000000]
    end
  end

  context 'when invalid data' do
    let(:data) { File.open('spec/data/empty.txt') }

    it 'should return nil' do
      result = Nmax.max_integers(data, 5)
      expect(result).to eq nil
    end
  end

  context 'when invalid count' do
    let(:data) { File.open('spec/data/test.txt') }

    it 'should return nil' do
      result = Nmax.max_integers(data, -2)
      expect(result).to eq nil
    end
  end
end
