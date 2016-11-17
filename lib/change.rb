require('./app')

class String
  def change()
    amount = self.to_i()
    available_coins = [25,10,5,1]
    coins = []
    index = 0
    coin = available_coins[index]
    remaining_amount = amount
    until remaining_amount == 0
      until remaining_amount >= coin
         index = index + 1
         coin = available_coins[index]
      end
      puts "Amount: #{remaining_amount} | Coin: #{coin}"
      coins.push(available_coins[index])
      remaining_amount -= coin
    end
    coins
    end
end
