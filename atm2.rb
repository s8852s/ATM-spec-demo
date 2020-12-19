class ATM

    attr_reader :balance
    #attr_reader通常都吃符號


    def initialize(amount)
      @balance = amount
    end
  
    def deposit(amount)
      if amount > 0
        @balance = @balance + amount
      end
    end
  
    def withdraw(amount)
      if amount > 0 && is_enough?(amount)
        @balance = @balance - amount
      end
    end
  
    # def balance
    #   @balance
    # end
    # =attr_reader :balance
  
    private
    def is_enough?(amount)
      @balance >= amount
    end
  end