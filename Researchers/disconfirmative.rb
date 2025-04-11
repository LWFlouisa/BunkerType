# Assume A is "This is an #{a}" with A being a noun.

#         tree        rock        animal
# tree    tree,tree   tree,rock   tree,animal
# rock    rock,tree   rock,rock   rock,animal
# animal  animal,tree animal,rock animal,animal

# If #{a} does not an expectation:
#   A disconfirmative is "This is not an #{a}, because #{b}"
#
#   Calculate statistics for disconfirmative.
# Else
#   A confirmative is "This is an #{a}, because {c}.
#
#   Calculate statistics for disconfirmative.

# def disconfirmative
def disconfirm
  require "naive_bayes"

  disconfirmative
  ## Disconfirmative
  disconfirmative.train(:disconfirmative,     "This not a / an dirt, because it does not grow fruit or break down into dirt, except in certain conditions.", "word")
  disconfirmative.train(:disconfirmative,     "This not a / an rock, because it does not make animal sounds or break down into dirt.",                       "word")
  disconfirmative.train(:disconfirmative,     "This not a / an cow, because it does not make animal sounds or break down into dirt.",                        "word")

  ## Not Disconfirmative
  disconfirmative.train(:not_disconfirmative, "It is indeed a / an tree, because it does not make animal sounds or break down into dirt.",                   "word")

  data = @reason

  classification = confirmative.classify(data)

  print classification
  puts " "
end

# def confirmative
def confirm
  require "naive_bayes"

  confirmative = NaiveBayes.new(:confirmative, :not_confirmative)

  ## Confirmative
  confirmative.train(:confirmative,     "It is indeed a / an tree, because it does not make animal sounds or break down into dirt.",                         "word")
  confirmative.train(:confirmative,     "It is indeed a / an animal, because it does not grow fruit or break down into dirt, except in certain conditions.", "word")
  confirmative.train(:confirmative,     "It is indeed a / an rock, because it does not grow fruit and does not make animal sounds.",                         "word")

  ## Not Confirmative
  confirmative.train(:not_confirmative, "This not a / an dirt, because it does not grow fruit or break down into dirt, except in certain conditions.",       "word")

  data = @reason

  classification = confirmative.classify(data)

  print classification
  puts " "
end

possible_states = [
  [["tree",   "tree"], ["tree",   "rock"], ["tree",   "animal"]],
  [["rock",   "tree"], ["rock",   "rock"], ["rock",   "animal"]],
  [["animal", "tree"], ["animal", "rock"], ["animal", "animal"]],
]

row_options = [0, 1, 2]
col_options = [0, 1, 2]
arr_options = [0, 1]

cur_row = row_options.sample
cur_col = col_options.sample
cur_arr = arr_options.sample

a_disconfirmative = possible_states[cur_row][cur_col][cur_arr]

if    a_disconfirmative ==   "tree"; noun_reason = "it does not make animal sounds or break down into dirt."
elsif a_disconfirmative ==   "rock"; noun_reason = "it does not grow fruit and does not make animal sounds."
elsif a_disconfirmative == "animal"; noun_reason = "it does not grow fruit or break down into dirt, except in certain conditions."
end

puts ">> What is a / an #{a_disconfirmative}?"

print "This is an / a << "; noun = gets.chomp

if not noun == a_disconfirmative
  @reason = "This not a / an #{noun}, because #{noun_reason}."

  print @reason

  disconfirm
else
  @reason = "It is indeed a / an #{noun}, because #{noun_reason}."

  print @reason

  confirm
end 
