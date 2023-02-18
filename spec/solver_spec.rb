require_relative '../solver.rb'

describe Solver do
  before :each do
    @solver = Solver.new
  end

  context 'When testing a Solver class' do
    it 'solver should be an instance of Solver class' do
      expect(@solver).to be_an_instance_of Solver
    end
  end

  context 'When testing a factorial method' do
    it 'should raise an error when n<=0' do
      expect{ @solver.factorial(-2) }.to raise_error ('number should be >=0')
    end
  end
end