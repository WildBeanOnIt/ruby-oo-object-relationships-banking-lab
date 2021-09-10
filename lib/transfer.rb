require 'pry'
class Transfer

  attr_reader :status, :sender, :receiver, :amount
  attr_accessor :status

  def initialize(sender, receiver, amount)
    #binding.pry
    @receiver = receiver
    @sender = sender
    @amount = amount
    @status = "pending"
  end

  def valid?
    #binding.pry
    # if sender.status == 'false' && receiver.status == 'false'
    #   return true
    # else
    #   return false
    # end
    
    sender.valid? && receiver.valid?

  end

  def execute_transaction

    if valid? && sender.balance > amount && self.status == 'pending'
      sender.balance -= amount
      receiver.balance += amount

      self.status = "complete"

    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
    #binding.pry
  end

  def reverse_transfer
    self.receiver.balance -= amount 
    self.sender.balance += amount
    self.status = "reversed"

    binding.pry
  end


  # your code here
end
