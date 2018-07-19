class Checkout

  INVENTORY = { bread: 0.89, milk: 1.25, tea: 2, coffee: 2.5,
    cereal: 2.30, pasta: 0.99, apples: 2.85, bananas: 3, lemons: 2,
    chips: 0.95, chocolates: 13.50, wine: 12.75, beer: 8 }


  def view_price(item)
    puts "#{INVENTORY[item.to_sym]}"
  end


end
