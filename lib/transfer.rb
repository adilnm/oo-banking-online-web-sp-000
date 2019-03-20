class Transfer
     attr_accessor :sender,:receiver,:amount, :status
  def initialize(sender,receiver,amount)
    @sender=sender
    @receiver=receiver
    @amount=amount
    @status="pending"
  end
  
  def valid?
    send=BankAccount.new(@sender)
    receive=BankAccount(@receiver)
    send.valid? && receive.valid?
  end
  
end
