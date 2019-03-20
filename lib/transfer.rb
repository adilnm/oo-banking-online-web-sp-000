class Transfer
     attr_accessor :sender,:reciever,:transfer_amount
  def initialize(sender,reciever,transfer_amount)
    @sender=sender
    @reciever=reciever
    @transfer_amount=transfer_amount
  end
end
