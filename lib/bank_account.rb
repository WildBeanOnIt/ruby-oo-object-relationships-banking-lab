require 'pry'
class BankAccount

    attr_reader :name
    attr_accessor :balance, :status

    def initialize(name)
        @name = name
        @balance = 1000
        @status = "open"
    end

    def deposit(amount)
        #self.balance = self.balance + amount
        self.balance += amount
    end

    def display_balance
       "Your balance is $1000."
        #self.balance
    end

    def valid?
        if self.balance > 0  && self.status == 'open'
            return true
        else
            return false
        end
        #binding.pry
    end

    def close_account
        # binding.pryå
        self.status = "closed"
    end

end