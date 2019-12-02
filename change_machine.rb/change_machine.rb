require 'rspec'


class ChangeMachine
  def change(num)
    coins_available = [25, 10, 5, 1]
    coins = []
    if num < 5
      num.times do
        coins << 1
      end
      return coins

    # if num == 1
    #   return [1]
    # elsif num == 2
    #   return [1, 1]
    # elsif num == 3
    #   return [1, 1, 1]
    # elsif num == 4
    #   return [1, 1, 1, 1]
    # elsif num == 5
    #   return [5]
    # # elsif num == 8
    # #   return [5, 1 , 1, 1]
    # elsif num == 10
    #   return [10]
    # elsif num == 13
    #   return [10, 1, 1, 1]
    # elsif num == 15
    #   return [10, 5]  
    # elsif num == 16
    #   return [10, 5, 1]
    # # elsif num == 18
    # #   return [10, 5, 1, 1, 1]
    # # elsif num == 20
    # #   return [10, 10]       
    # elsif num == 23
    #   return [10, 10, 1, 1, 1]
    # # elsif num == 25
    # #   return [25]
    # end
    # return [num]
#   end
# end


RSpec.describe ChangeMachine do
  describe '#change' do
    it 'should return [1] when given 1' do
      machine = ChangeMachine.new
      expect(machine.change(1)).to eq([1])
    end
    it 'should return [1, 1] when given 2' do
      machine = ChangeMachine.new
      expect(machine.change(2)).to eq([1, 1])
    end
    it 'should return [5] when given 5' do
      machine = ChangeMachine.new
      expect(machine.change(5)).to eq([5])
    end
    it 'should return [5, 1] when given 6' do
      machine = ChangeMachine.new
      expect(machine.change(6)).to eq([5, 1])
    end
    it 'should return [10] when given 10' do
      machine = ChangeMachine.new
      expect(machine.change(10)).to eq([10])
    end
    it 'should return [10, 5, 1, 1, 1, 1] when given 19' do
      machine = ChangeMachine.new
      expect(machine.change(19)). to eq([10, 5, 1, 1, 1, 1])
    end
    it 'should return [10, 10, 1, 1, 1] when given 23' do
      machine = ChangeMachine.new
      expect(machine.change(23)).to eq([10, 10, 1, 1, 1])
    end
    it 'should return [25] when given 25' do
      machine = ChangeMachine.new
      expect(machine.change(25)).to eq([25])
    end
    it 'should return [25, 25, 25, 25, 10, 5, 1, 1, 1, 1]' do
      machine = ChangeMachine.new
      expect(machine.change(119)).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
  end
end  
