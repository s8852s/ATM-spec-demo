class ATM
	def initialize(amount)
		@amont = amount
    end

	def deposit(amount)
        if amount > 0
          @amount = @amount + amount
        end
      end

    def withdraw(amount)
        if m > 0 && @amont >= amount
            @amount = @amount - amount
        end
    end

    def balance
    @amount
    end
end