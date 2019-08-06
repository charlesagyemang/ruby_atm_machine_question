require 'rspec'
require './group.rb'

describe 'MRES' do 
	it "Return this sample hash" do 

		files = {
		  'Input.txt' => 'Randy',
		  'Code.py' => 'Stan',
		  'Output.txt' => 'Randy'
		}
		groups = Grouper.new
			
		expect(groups.group_by_owners(files)).to eq({
			'Randy' => ["Input.txt","Output.txt"],
			'Stan'  => ["Code.py"]
			})
	end	
end	