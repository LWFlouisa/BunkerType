## Shuffle
items = File.readlines("lib/inventory/item_list.txt")
index = 0

shuffled_item = items.shuffle

## Iterate
item_limit = items.size.to_i

item_limit.times do
  current_item = shuffled_items[index]

  puts current_item

  if current_item[index] == items[index]
    puts "Writing matched item to new item list."

    File.open("lib/inventory/item_list.txt", "a") { |f|
      f.puts current_item
    }
  else
    puts "Shuffled item doesn't not match item in standard index."
  end
end

# Reset the index
index = 0

## Sort
new_list  = File.readlines("lib/inventory/item_list.txt")
new_limit = new_list.size.to_i

new_limit.times do
  def item_stats
    require "naive_bayes"

    item_stats = NaiveBayes.new(:potion, :antidote, :cureall)

    ## This is a potion
    item_stats.train(:potion, "potion", "item")
 
    ## This is an antidote
    item_stats.train(:antidote, "antidote", "item")

    ## This is a cure all
    item_stats.train(:cureall, "cureall", "item")

    ## Classify items
    classification = item_stats.classify(@current_match)

    print classification
    puts " "
  end

  @current_match = new_list[index]

  print @current_match
  print " "

  index = index + 1
end
