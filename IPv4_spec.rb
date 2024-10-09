require 'rspec'
require './script.rb'

RSpec.describe '#is_IPv4?' do
  context 'when IP is correct' do
    it 'returns true' do
      expect(is_IPv4?("111.222.0.1")).to be true
      expect(is_IPv4?("0.0.0.0")).to be true
      expect(is_IPv4?("255.255.255.255")).to be true
    end
  end

  context 'when IP is incorrect' do
    it 'returns false' do
      expect(is_IPv4?("256.0.0.0")).to be false
      expect(is_IPv4?("111.111.0.01")).to be false
      expect(is_IPv4?("111.111.0.0.1")).to be false
      expect(is_IPv4?("111.111.a.b")).to be false
      expect(is_IPv4?("111.111.-1.1")).to be false
      expect(is_IPv4?("")).to be false
    end
  end
end