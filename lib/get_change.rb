class Fixnum
  define_method(:get_change) do
    remaining      = self
    quarter_count  = 0
    dime_count     = 0
    nickel_count   = 0
    penny_count    = 0

    #coins = [25, 10, 5, 1]
    #output = {"quarters" => 0, "dimes" => 0, "nickels" => 0, "pennies" => 0}

    until remaining == 0
      if remaining >= 25
        quarter_count = quarter_count + (remaining / 25)
        remaining = remaining - (25 * quarter_count)
      end
      if remaining >= 10
        dime_count = dime_count + (remaining / 10)
        remaining = remaining - (10 * dime_count)
      end
      if remaining >= 5
        nickel_count = nickel_count + (remaining / 5)
        remaining = remaining - (5 * nickel_count)
      end
      if remaining >= 1
        penny_count = penny_count + (remaining / 1)
        remaining = remaining - (1 * penny_count)
      end
    end

    returned_coins = "You have #{quarter_count} quarters, #{dime_count} dimes, #{nickel_count} nickels, and #{penny_count} pennies."

  end
end
