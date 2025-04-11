require "naive_bayes"

man_or_beast = NaiveBayes.new(:test_subject, :bear_man, :lobster_pig)

man_or_beast.train(:test_subject, "Ana Tsuchi Tesutosujettos de les corrompue",  "man")
man_or_beast.train(:test_subject, "Anos Shi Tesutosujettos de le fissure",       "man")
man_or_beast.train(:test_subject, "Anos Kaiyo Tesutosujettos de le fissure",     "man")
man_or_beast.train(:test_subject, "Anos Kaiyo Tesutosujettos de les abandonnes", "man")
man_or_beast.train(:test_subject, "Ana Shi Tesutosujettos de le noye",           "man")
man_or_beast.train(:test_subject, "Anos Denki Tesutosujettos de la noyee",       "man")
man_or_beast.train(:test_subject, "Ana Shi Homard Au Cochon de les abandonnes",  "man")
man_or_beast.train(:test_subject, "Anos Ea Tesutosujettos de les abandonnes",    "man")
man_or_beast.train(:test_subject, "Anos Tenchi Tesutosujettos de le recupere",   "man")
man_or_beast.train(:test_subject, "Anos Tenchi Tesutosujettos de le recupere",   "man")
man_or_beast.train(:test_subject, "Anos Tenchi Tesutosujettos de le recupere",   "man")
man_or_beast.train(:test_subject, "Anos Denki Tesutosujettos de le carbonise",   "man")
man_or_beast.train(:test_subject, "Anos Tenchi Tesutosujettos de les corrompue", "man")
man_or_beast.train(:test_subject, "Anoa Shi Tesutosujettos de le fissure",       "man")
man_or_beast.train(:test_subject, "Anos Denki Tesutosujettos de la noyee",       "man")
man_or_beast.train(:test_subject, "Anos Ea Tesutosujettos de le noye",           "man")

## Beast
man_or_beast.train(:bear_man, "Ana Tsuchi Ursinehomme de la noyee",        "bearman")
man_or_beast.train(:bear_man, "Anos Tenchi Ursinehomme de le recupere",    "bearman")
man_or_beast.train(:bear_man, "Ana Tsuchi Ursinehomme de le carbonise",    "bearman")

## Lobster Pig
man_or_beast.train(:lobster_pig, "Ana Tsuchi Homard Au Cochon de la noyee",     "lobsterpig")
man_or_beast.train(:lobster_pig, "Ana Shi Homard Au Cochon de les abandonnes",  "lobsterpig")
man_or_beast.train(:lobster_pig, "Anos Ea Homard Au Cochon de le fissure",      "lobsterpig")
man_or_beast.train(:lobster_pig, "Anos Ea Homard Au Cochon de le carbonise",    "lobsterpig")
man_or_beast.train(:lobster_pig, "Anos Kaiyo Homard Au Cochon de le soufflé",   "lobsterpig")
man_or_beast.train(:lobster_pig, "Anos Kaiyo Homard Au Cochon de le soufflé",   "lobsterpig")
man_or_beast.train(:lobster_pig, "Anos Kaiyo Tesutosujettos de les abandonnes", "lobsterpig")

# Anos Tenchi Ursinehomme de le recupere
# Anos Tenchi Tesutosujettos de le recupere
# Ana Tsuchi Tesutosujettos de le carbonise
# Anos Ea Homard Au Cochon de le fissure
# Anos Denki Tesutosujettos de le carbonise
# Anos Ea Homard Au Cochon de le carbonise
# Anos Tenchi Tesutosujettos de les corrompue
# Ana Tsuchi Ursinehomme de le carbonise
# Anos Kaiyo Homard Au Cochon de le soufflé
# Anos Danki Tesutosujettos de le fissure
# Ana Tsuchi Tesutosujettos de le fissure
# Ana Tsuchi Homard Au Cochon de le soufflé
# Anos Kaiyo Ursinehomme de le carbonise
# Ana Shi Tesutosujettos de les abandonnes
# Anos Kaiyo Usinehomme de les corrompue
# Anos Denki Homard Au Cochon de le recupere
# Ana Shi Tesutosujettos de la noyee

#puts man_or_beast.classify("Ana Tsuchi Ursinehomme de la noyee")

enemies_set = File.readlines("_enemynames/enemies.txt")

size_limit = enemies_set.size.to_i

index = 0

size_limit.times do
  classification = man_or_beast.classify(enemies_set[index].to_s)

  print "#{enemies_set[index].strip} #{classification}"        
  #print classification
  #print classification[2]
  puts " "

  index = index + 1
end
