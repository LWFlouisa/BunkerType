system("clear")

gets.chomp

require "naive_bayes"

fruits = NaiveBayes.new(:correct, :incorrect, :depends)

## Correct grammar
fruits.train(:correct, "le pomme rouge es ne jete.",           "The apple red is tossed out.")
fruits.train(:correct, "la orange orange es ne jete.",     "The orange orange is tossed out.")
fruits.train(:correct, "les bananes jaune es ne jete.",   "The bananas yellow is tossed out.")
fruits.train(:correct, "la orange orange es mange.",            "The orange orange is eaten.")
fruits.train(:correct, "les banane jaune es mange.",            "The banana yellow is eaten.")
fruits.train(:correct, "le pomme rouge es mange.",                  "The apple red is eaten.")
fruits.train(:correct, "les banane jaune es ne jete.",  "The banana yellow is not tossed out")

## Incorrect grammar
fruits.train(:incorrect, "le pomme orange es ne jete.",         "The apple red is tossed out.")
fruits.train(:incorrect, "la orange green es ne jete.",     "The orange orange is tossed out.")
fruits.train(:incorrect, "la orange yellow es ne jete.",    "The orange orange is tossed out.")
fruits.train(:incorrect, "les bananes orange es ne jete.", "The bananas yellow is tossed out.")
fruits.train(:incorrect, "les banane red es mange.",             "The banana yellow is eaten.")

## Depends
fruits.train(:depends,   "le pomme yellow es ne jete.",           "The apple red is tossed out.")
fruits.train(:incorrect, "les bananes green es ne jete.",    "The bananas yellow is tossed out.")

fruits_set = File.readlines("_input/dialogue.txt")

size_limit = fruits_set.size.to_i

index = 0

size_limit.times do
  classification = fruits.classify(fruits_set[index].strip.to_s)

  print "#{fruits_set[index].strip} "        
  print classification
  puts " "

  index = index + 1
end
