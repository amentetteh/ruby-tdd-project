# frozen_string_literal: true

require 'rspec'
require_relative '../solver'

describe Solver do
  before :each do
    @solver = Solver.new
  end
  it 'Given 1 as argument 0 shoulld be returned' do
    expect(@solver.factorial(0)).to eql 1
  end
  it 'When the value is > 0 factorial is returned' do
    expect(@solver.factorial(5)).to eql 120
  end
  it 'Raise Argument exception when the value is < 0' do
    expect { @solver.factorial(-1) }.to raise_error(ArgumentError)
  end
  it 'When the value is "hello"  "olleh" is returned' do
    expect(@solver.reverse('hello')).to eql 'olleh'
  end
  it 'When the value is divisible by 3 "fizz" is returned' do
    expect(@solver.fizzbuzz(9)).to eql 'fizz'
  end
  it 'When the value is divisible by 3 and 5 "fizzbuzz" is returned' do
    expect(@solver.fizzbuzz(15)).to eql 'fizzbuzz'
  end
  it 'When the value is divisible by 5 "buzz" is returned' do
    expect(@solver.fizzbuzz(10)).to eql 'buzz'
  end
end
