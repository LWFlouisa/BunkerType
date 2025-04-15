7.times do

#          le      la      les
# le   le, le  le, la  le, les
# la   la, le  la, la  la, les
# les les, le les, la les, les

#         pomme orange banane
# pomme   p,p   p,o    p,b
# orange  o,p   o,o    o,b
# banane  b,p   b,o    b,b

#         rouge orange jaune
# rouge   r,r   r,o    r,j
# orange  o,r   o,o    o,j
# jaune   j,r   j,o    j,j

#               es             es ne
# es     es,    es     es,    es ne
# es ne  es ne, es     es ne, es ne  

#        mange jete
# mange  m,m   m,j
# jete   j,m   j,j

possible_word_classes = [
  [ ["le",  "le"], ["le",  "la"], ["le",  "les"] ],
  [ ["la",  "le"], ["la",  "la"], ["la",  "les"] ],
  [ ["les", "le"], ["les", "la"], ["les", "les"] ],
]

possible_classified_nouns = [
  [ ["pomme",  "pomme"], ["pomme",  "orange"], ["pomme",  "banane"] ],
  [ ["orange", "pomme"], ["orange", "orange"], ["orange", "banane"] ],
  [ ["banane", "pomme"], ["banane", "orange"], ["banane", "banane"] ],
]

possible_adjectives = [
  [ ["rouge",  "rouge"], ["rouge",  "orange"], ["rouge",  "jaune"] ],
  [ ["orange", "rouge"], ["orange", "orange"], ["orange", "jaune"] ],
  [ ["jaune",  "rouge"], ["jaune",  "orange"], ["jaune",  "jaune"] ],
]

possible_subjects = [
  [["es",    "es"], ["es",    "es ne"]],
  [["es ne", "es"], ["es ne", "es ne"]],
]

possible_verbs = [
  [["mange", "mange"], ["mange", "jete"]],
  [["jete",  "mange"], ["jete",  "jete"]],
]

## Effects what class noun and adjective is chosen.
row_class_noun_adjective = [0, 1, 2]
col_class_noun_adjective = [0, 1, 2]
arr_class_noun_adjective = [0, 1]

cur_row_class_noun_adjective = row_class_noun_adjective.sample
cur_col_class_noun_adjective = col_class_noun_adjective.sample
cur_arr_class_noun_adjective = arr_class_noun_adjective.sample

word_class       = possible_word_classes[cur_row_class_noun_adjective][cur_col_class_noun_adjective][cur_arr_class_noun_adjective]
classified_nouns = possible_classified_nouns[cur_row_class_noun_adjective][cur_col_class_noun_adjective][cur_arr_class_noun_adjective]
adjectives       = possible_adjectives[cur_row_class_noun_adjective][cur_col_class_noun_adjective][cur_arr_class_noun_adjective]

## Effects what subject and verb is chosen.
row_subject_verb = [0, 1]
col_subject_verb = [0, 1]
arr_subject_verb = [0, 1]

cur_row_subject_verb = row_subject_verb.sample
cur_col_subject_verb = col_subject_verb.sample
cur_arr_subject_verb = arr_subject_verb.sample

subjects = possible_subjects[cur_row_subject_verb][cur_col_subject_verb][cur_arr_subject_verb]
verbs    = possible_verbs[cur_row_subject_verb][cur_col_subject_verb][cur_arr_subject_verb]

File.open("_input/dialogue.txt", "a") { |f|
  f.puts "#{word_class} #{classified_nouns} #{adjectives} #{subjects} #{verbs}."
}

end
