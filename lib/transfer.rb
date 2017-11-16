class Transfer
  attr_accessor :status, :amount
  attr_reader :sender, :receiver

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def sender
    @sender
  end

  def receiver
    @receiver
  end

  def valid?
    self.sender.valid?
    self.receiver.valid?
  end

  def execute_transaction
    self.sender.balance -= self.amount
    self.receiver.balance -= self.amount
  end
end
