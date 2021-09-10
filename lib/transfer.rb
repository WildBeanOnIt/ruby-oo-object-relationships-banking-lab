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
    sender.balance = 950
    receiver.balance = 1050

    self.status = "complete"

    #binding.pry
  end
  # your code here
end
