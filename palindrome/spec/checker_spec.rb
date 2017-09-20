require 'spec_helper'
require_relative '../app/checker'

describe Checker do
  subject(:checker) { Checker.new }

  context 'is palindrome using' do
    it 'a simple word' do
      expect(checker.is_palindrome?('arara')).to be true
    end

    it 'a phrase without special characteres' do
      phrase = "roma me tem amor"
      expect(checker.is_palindrome?(phrase)).to be true
    end

    it 'a phrase with special characteres' do
      phrase = "Socorram-me, subi no ônibus em Marrocos"
      expect(checker.is_palindrome?(phrase)).to be true
    end

    it 'a capitalized word' do
      phrase = "Roma me Tem Amor"
      expect(checker.is_palindrome?(phrase)).to be true
    end
  end

  context 'is not a palindrome' do
    it 'with a wrong word' do
      expect(checker.is_palindrome?('test')).to be false
    end

    it 'using nil as argument' do
      expect(checker.is_palindrome?(nil)).to be false
    end
  end
end
