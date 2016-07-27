require 'spec_helper'

describe Foobar do
  it 'has a version number' do
    expect(Foobar::VERSION).not_to be nil
  end

  describe "divisibility_test" do
    it "It should return numbers divisible by 3 or 5 or by both for a given input" do
      @foobar = Foobar.new(1,20)
      expect(@foobar.execute).to eq(["3: foo", "5: bar", "6: foo", "9: foo", "10: bar", "12: foo", "15: foobar", "18: foo", "20: bar"])
    end

    it "Return Invalid Input if passed values are not integer" do
      @foobar = Foobar.new(1,'asd')
      expect(@foobar.execute).to eq('Invalid Input')
    end
  end
end
