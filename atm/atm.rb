class Atm
	def initialize(total, denominations)
		@total = total
		@denominations = denominations
	end


	def dispense_cash
		total = @total
		final_hash = {}
		denominations = @denominations.sort
		@denominations.length.times do |den|	
			#find remainder & Deviser and push to hash
			denom = denominations[-den -1]
			remainder = total.modulo(denom)
			deviser = total / denom
			final_hash[denom] = deviser 	
			#set the total to denom
			total = remainder		
		end	
		final_hash
	end
	
	
end