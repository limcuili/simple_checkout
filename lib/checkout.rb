class Checkout
  attr_reader :scanned_items, :item

  INVENTORY = { bread: 0.89, milk: 1.25, tea: 2, coffee: 2.5,
    cereal: 2.30, pasta: 0.99, apples: 2.85, bananas: 3, lemons: 2,
    chips: 0.95, chocolates: 13.50, wine: 12.75, beer: 8 }

  def initialize
    @scanned_items = []
  end

  def view_price(item)
    puts "#{INVENTORY[item.to_sym]}"
  end

  def scan(item = nil)
    if item == nil
      puts 'You did not scan anything'
      return @scanned_items
    elsif INVENTORY.key?(item.to_sym)
      @item = item.to_sym
      @scanned_items << { @item => INVENTORY[item.to_sym] }
      return @scanned_items
    else
      puts 'That item does not exist. Please try again.'
      return @scanned_items
    end
  end
end
