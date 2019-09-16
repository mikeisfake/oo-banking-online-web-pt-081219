class Transfer
  
  attr_reader :sender, :reciever
  
  def initialize(sender, reciever, amount)
    @sender = sender
    @reciever = reciever
  end
  
end
