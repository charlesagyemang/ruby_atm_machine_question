require 'rspec'
require './atm.rb'

describe 'ATM' do 
	it 'atm should have a dispense_cash function' do 
		atm = Atm.new(110, [100,20,10,5])
		puts atm.dispense_cash
		expect(atm).to respond_to(:dispense_cash)
	end	

	it 'dispesnses the correct denomination to users' do 
		expect(Atm.new(110, [100,20,10,5]).dispense_cash).to eq({100 => 1, 20 => 0, 10 => 1, 5 => 0})
		expect(Atm.new(245, [20,10,5]).dispense_cash).to eq({20 => 12, 10 => 0, 5 => 1})
	end	
end	