class Transfer
  
  attr_reader :sender, :receiver, :amount
  attr_accessor :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    @sender.valid? && @receiver.valid? ? true : false 
  end 
  
  def execute_transaction
    if valid? && @sender.balance > @amount
      1.times do 
        @sender.balance -= @amount
        @receiver.balance += @amount
        @status = "complete"
      end 
    end 
  end 
  
end
