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
  sender.valed? && reciever.valid?
end

def execute_transaction


end



end
