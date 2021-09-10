require 'pry'
class Transfer

  attr_reader :status, :sender, :receiver, :amount

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

    # transfer.valid?

  end
  # your code here
end
