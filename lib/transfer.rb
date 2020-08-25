class Transfer
  attr_reader :sender, :reciever, :amount
  attr_accessor :status


  def initialize (sender, reciever, status = "pending", amount)
    @sender = sender
    @reciever = reciever
    @status = status
    @amount = amount
  end



end
