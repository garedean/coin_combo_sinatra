require('rspec')
require('get_change')

describe('Fixnum#get_change') do
  it('returns the correct change when called on 1') do
    expect((1).get_change()).to(eq("You have 0 quarters, 0 dimes, 0 nickels, and 1 pennies."))
  end

  it('returns the correct change when called on higher numbers') do
    expect((49).get_change()).to(eq("You have 1 quarters, 2 dimes, 0 nickels, and 4 pennies."))
  end

  it('returns no change when called on 0') do
    expect((0).get_change()).to(eq("You have 0 quarters, 0 dimes, 0 nickels, and 0 pennies."))
  end

end
