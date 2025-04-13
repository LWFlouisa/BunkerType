translate = {
  "Anu Ea"  => "An airborn",
  "Ana Ea"  => "An airborn",
  "Anos Ea" => "An airborn",

  "Anu Denki"  => "An electric",
  "Ana Denki"  => "An electric",
  "Anos Denki"  => "An electric",

  "Anu Kaiyo"  => "An aetherial",
  "Ana Kaiyo"  => "An aetherial",
  "Anos Kaiyo" => "An aetherial",

  "Anos Tsuchi" => "A heavenly",
  "Anos Tenchi" => "An earthen",
  "Ana Shi"     => "A deadly",

  "Homard Au Cochon" => "Lobster in the pig",
  "Tesutosujettos"   => "Test Subject",
  "Ursinehomme"      => "Bear Man",

  "de les corrompue"  => "of corruption.",
  "de le recupere"    => "of recuperation.",
  "de le soufflé"     => "of airblown.",
  "de le carbonise"   => "of charring.",
  "de la noyee"       => "of female drownings.",
  "de le noye"        => "of male drownings.",
  "de le fissure"     => "of Earthquakes.",
  "de les abandonnés" => "of abandonment.",
}

print "What would you like to translate? >> "; trans = gets.chomp

puts translate[trans]
