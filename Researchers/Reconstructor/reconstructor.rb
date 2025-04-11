def mapped_value_probability
  require "naive_bayes"

  reconstructive = NaiveBayes.new(:hair, :eyes, :nose, :mouth, :chin)

  reconstructive.train(:hair,   "Scrambled: Hair Unscrambled: Hair", "word")
  reconstructive.train(:eyes,   "Scrambled: Chin Unscrambled: Eyes", "word")
  reconstructive.train(:nose,   "Scrambled: Eyes Unscrambled: Nose", "word")
  reconstructive.train(:mouth, "Scrambled: Nose Unscrambled: Mouth", "word")
  reconstructive.train(:chin,  "Scrambled: Mouth Unscrambled: Chin", "word")

  classification = reconstructive.classify(@datapoint)

  print classification

  puts " "
end


## Collects numbers 0-4 as mapping to a hash table.
dataset       = File.readlines("_data/datasets/functions.txt")

## Read in an array of values that gets mapped to the hash table.
mapped_values = File.readlines("_data/mapped_values/conversion_map.txt")

# Scramble the dataset.
scrambled   = dataset.shuffle

# The actual row and the row of scranbled dataset
actual_row = 0
row1       = 0

# Specify that the loop limit is equal to the size of normal dataset.
limitation = dataset.size.to_i

# Create a loop based on the size limitation.
limitation.times do
  current_scrambled_line   = scrambled[row1].to_i     # Read in current scrambled line using row1 as the indexed value.
  actual_datapoint         = dataset[actual_row].to_i # The actual row number is used as the index for mapping to an actual datapoint.

  num_to_part = {
    0 => mapped_values[0], # "Hair",
    1 => mapped_values[1], # "Eyes",
    2 => mapped_values[2], # "Nose",
    3 => mapped_values[3], # "Mouth",
    4 => mapped_values[4], # "Chin",
  }

  scrambled_part = num_to_part[current_scrambled_line]  # Using the current_scrambled_line as the parsed string, becomes the scrambled part displayed.
  actual_representation = num_to_part[actual_datapoint] # Using the actual data point as the parsed string, the actual representation shows the original unscrambled datapoint.

  print "Scrambled: #{scrambled_part.strip} Unscrambled: #{actual_representation}".strip

  # Add one to row1 and actual row to iterate through the mapped values.
  row1 = row1 + 1
  actual_row = actual_row + 1

  #@datapoint = "Scrambled: #{scrambled_part.strip} Unscrambled: #{actual_representation}"

  print @datapoint

  mapped_value_probability
  
  # Write the scrambled and unscrambled datasets to files.
  open("_scrambled/dataset.txt", "a") { |f|
    f.puts scrambled_part
  }

  open("_unscrambled/dataset.txt", "a") { |f|
    f.puts actual_representation
  }
end
