require('rspec')
require('get_change.rb')

describe('Fixnum#coin_combo') do
  it('returns "one penny" when called on .01') do
    expect((1).coin_combo()).to(eq("1 penny"))
  end
end
