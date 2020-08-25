class Transfer
  attr_reader :sender, :receiver, :amount
  attr_accessor :status


  def initialize (sender, receiver, status = "pending", amount)
    @sender = sender
    @receiver = receiver
    @status = status
    @amount = amount
  end

def valid?
  sender.valid? && receiver.valid?
end

def execute_transaction
  if self.valid? && status == "pending"
    receiver.deposit(amount)
    sender.balance -= amount
    @status = "complete"
  elsif amount > sender.balance
    @status = "rejected"
    "Transaction rejected. Please check your account balance."
  end
end



end
