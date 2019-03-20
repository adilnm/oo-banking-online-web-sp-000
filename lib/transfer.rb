class Transfer
     attr_accessor :sender,:receiver,:amount, :status
  def initialize(sender,receiver,amount)
    @sender=sender
    @receiver=receiver
    @amount=amount
    @status="pending"
  end
  
  def valid?(c)
    send=BankAccount.new(@sender)
    receive=BankAccount.new(@receiver)
    send.valid? && receive.valid?
  end
  
end
