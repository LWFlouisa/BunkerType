translate = {
  "Anu Ea"      => "An airborn",
  "Ana Ea"      => "An airborn",
  "Anos Ea"     => "An airborn",
  "Anu Denki"   => "An electric",
  "Ana Denki"   => "An electric",
  "Anos Denki"  => "An electric",
  "Anu Kaiyo"   => "An aetherial",
  "Ana Kaiyo"   => "An aetherial",
  "Anos Kaiyo"  => "An aetherial",
  "Anu Tsuchi"  => "A heavenly",
  "Ana Tsuchi"  => "A heavenly",
  "Anos Tsuchi" => "A heavenly",
  "Anu Tenchi"  => "An earthen",
  "Ana Tenchi"  => "An earthen",
  "Anos Tenchi" => "An earthen",
  "Anu Shi"     => "A deadly",
  "Ana Shi"     => "A deadly",
  "Anos Shi"    => "A deadly",

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

  ## First section
  "Anos Tsuchi Tesutosujettos de les corrompue"   => "A heavenly test subject subjected to corrupting influences.",
  "Anos Denki Ursinehomme de le carbonise"        => "A bear man with electric and fire magic ability.",
  "Ana Shi Ursinehomme de le recupere"            => "A deadly bear-man recovered from battle.",
  "Ana Tsuchi Homard Au Cochon de le souffle"     => "A monster with a pigs face and a lobster's body whom makes souffles.",

  "Ana Tsuchi Ursinehomme de la noyee"            => "A heavenly bear-man whom drowned at sea.",
  "Anos Ea Ursinehomme de le noye"                => "A once airbone bear-woman whom drowned at sea.",
  "Anos Denki Tesutosujettos de le souffle"       => "A test subject tortured by blowing electrical currents.",
  "Anos Tsuchi Tesutosujettos de la noyee"        => "A drowned test subject from heaven.",
  "Anos Tenchi Homard Au Cochon de la noyee"      => "A lobster pig that's the reincarnated spirit of a drowned privateer with the power of Earth.",
  "Anos Denki Tesutosujettos de les corrompue"    => "A test subject tortured by electric currents subjected to corrupting influences.",
  "Anos Danki Usinehomme de les abandonnes"       => "An abandoned bear-man cub with electric magic abilities.",
  "Anos Tenchi Ursinehomme de les corrompue"      => "A bear-man from heaven subjected to corrupting influences.",
  "Anos Denki Homard Au Cochon de les abandonnes" => "A lobster pig with electric magic powered abandoned as a crawling.",
  "Anos Kaiyo Ursinehomme de le recupere"         => "An aetherial bear-man recovered from a previous battle.",
  "Ana Shi Tesutosujettos de le souffle"          => "A test subject whom died from an explosion.",

  ## Second Section
  "Anos Kaiyo Tesutosujettos de le carbonise"     => "A test subject from heaven whom uses fire magic.",
  "Anos Tenchi Ursinehomme de la noyee"           => "A bear-man controlling Earth magic whom drowned at sea.",
  "Ana Tsuchi Ursinehomme de le noye"             => "A drowned wear-bear from heaven.",
  "Ana Tsuchi Tesutosujettos de le souffle"       => "A heavenly test subject whom controls air magic.",
  "Ana Tsuchi Homard Au Cochon de le noye"        => "A male lobster from the heavens whom drowned in a previous life as a privateer.",
  "Ana Tsuchi Ursinehomme de les abandonnes"      => "A bear man from the heavens abandoned as a cub.",
  "Anos Tenchi Ursinehomme de le fissure"         => "A bear man from heaven whom controls Earthquakes.",
  "Ana Tsuchi Homard Au Cochon de la noyee"       => "A female lobster pig from the heaven whom drowned in a previous life as a privateer.",
  "Ana Tsuchi Tesutosujettos de la noyee"         => "A female test subject from the heavens whom drowned.",

  ## Third Section
  "Anos Tenchi Tesutosujettos de le fissure"      => "A test subject with unknown gender from heaven whom controls Earthquakes.", 
  "Ana Shi Tesutosujettos de le fissure"          => "A deadly test subject whom controls Earthquakes.",
  "Anos Tenchi Tesutosujettos de les corrompue"   => "A test subject whom controls Earth magic subjected to corrupting influences.",
  "Ana Shi Homard Au Cochon de le recupere"       => "A deadly lobster pig whom recovered from a previous battle.",
  "Ana Shi Homard Au Cochon de le noye"           => "A deadly lobster pig whom is the reincarnated spirit of a drowned privateer",
  "Anos Tenchi Tesutosujettos de la noyee"        => "A test subject from the heavens whom drowned at sea,",
  "Anos Kaiyo Ursinehomme de le fissure"          => "An aetherial bear man whom controls Earth quakes.",
  "Ana Tsuchi Tesutosujettos de le fissure"       => "A female test subject from heaven whom controls Earthquakes.",
  "Anos Ea Homard Au Cochon de le fissure"        => "An airborn lobster pig whom controls Earthquakes.",
  "Anoa Shi Ursinehomme de le noyee"              => "A deadly bear man whom drowned at sea.",
  "Anos Ea Usinehomme de la noyee"                => "An airborn bear nab whom drowned at sea,",
  "Anos Denki Homard Au Cochon de le noye"        => "An electrically charged lobster pig whom drowned at sea.",
}

#print "What would you like to translate? >> "; trans = gets.chomp

#puts translate[trans]

enemies_set = File.readlines("_enemynames/enemies.txt")

size_limit = enemies_set.size.to_i

index = 0

size_limit.times do
  #begin
    trans = enemies_set[index].to_s.strip

    print trans + " "
    print translate[trans]       
    puts " "

    index = index + 1
  #rescue
    #puts "Line being read properly as a string."
  #end
end
