class Fixnum
  define_method(:get_change) do
    remaining      = self
    quarter_count  = 0
    dime_count     = 0
    nickel_count   = 0
    penny_count    = 0

    # coins = {25 => 0, 10 => 0, 5 => 0, 1 => 0}
    # new_hash = {}
    #
    # until remaining == 0
    #   new_hash = coins.each do |coin_amount, coin_count|
    #     coin_count = coin_count + (remaining / coin_amount)
    #     remaining = remaining % coin_amount
    #     coin_count = 12
    #   end
    # end
    #
    # new_hash

    if remaining >= 25
      quarter_count = quarter_count + (remaining / 25)
      remaining = remaining % 25
    end
    if remaining >= 10
      dime_count = dime_count + (remaining / 10)
      remaining = remaining % 10
    end
    if remaining >= 5
      nickel_count = nickel_count + (remaining / 5)
      remaining = remaining % 5
    end
    if remaining >= 1
      penny_count = penny_count + (remaining / 1)
    end

    "You have #{quarter_count} quarters, #{dime_count} dimes, #{nickel_count} nickels, and #{penny_count} pennies."

  end
end
