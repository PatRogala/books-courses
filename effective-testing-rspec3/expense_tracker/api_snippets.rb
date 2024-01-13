class API < Sinatra::Base
  def initialize(ledger:)
    @ledger = ledger
    super()
  end
end

# Later, callers do this:
app = API.new(ledger: Ledger.new)
