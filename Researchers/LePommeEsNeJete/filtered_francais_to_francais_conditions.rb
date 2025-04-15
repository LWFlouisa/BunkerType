#                               la orange orange es mange.  les banane jaune es mange.  la orange orange es ne jete.  les banane jaune es ne jete.
# la orange orange es mange.
# les banane jaune es mange.
# la orange orange es ne jete.
# les banane jaune es ne jete.

statements = [
  [["la orange orange es mange.",   "la orange orange es mange."], ["le orange orange es mange.",   "les banane jaune es mange."], ["le orange orange es mange.",   "les banane jaune es ne jete."]],
  [["les banane jaune es mange.",   "la orange orange es mange."], ["les banane jaune es mange.",   "les banane jaune es mange."], ["le banane jaune es mange.",    "les banane jaune es ne jete."]],
  [["la orange orange es ne jete.", "la orange orange es mange."], ["le orange orange es ne jete.", "les banane jaune es mange."], ["le orange ornage es ne jete.", "les banane jaune es ne jete."]],
  [["les banane jaune es ne jete.", "la orange orange es mange."], ["le banane jaune es ne jete.",  "les banane jaune es mange."], ["le banane jaune es ne jete.",  "les banane jaune es ne jete."]],
], [
  [["les banane jaune es mange.",   "la orange orange es mange."], ["les banane jaune es mange.",   "les banane jaune es mange."], ["le banane jaune es mange.",    "les banane jaune es ne jete."]],
  [["la orange orange es ne jete.", "la orange orange es mange."], ["le orange orange es ne jete.", "les banane jaune es mange."], ["le orange ornage es ne jete.", "les banane jaune es ne jete."]],
  [["les banane jaune es ne jete.", "la orange orange es mange."], ["le banane jaune es ne jete.",  "les banane jaune es mange."], ["le banane jaune es ne jete.",  "les banane jaune es ne jete."]],
  [["la orange orange es mange.",   "la orange orange es mange."], ["le orange orange es mange.",   "les banane jaune es mange."], ["le orange orange es mange.",   "les banane jaune es ne jete."]],
], [
  [["la orange orange es ne jete.", "la orange orange es mange."], ["le orange orange es ne jete.", "les banane jaune es mange."], ["le orange ornage es ne jete.", "les banane jaune es ne jete."]],
  [["les banane jaune es ne jete.", "la orange orange es mange."], ["le banane jaune es ne jete.",  "les banane jaune es mange."], ["le banane jaune es ne jete.",  "les banane jaune es ne jete."]],
  [["la orange orange es mange.",   "la orange orange es mange."], ["le orange orange es mange.",   "les banane jaune es mange."], ["le orange orange es mange.",   "les banane jaune es ne jete."]],
  [["les banane jaune es mange.",   "la orange orange es mange."], ["les banane jaune es mange.",   "les banane jaune es mange."], ["le banane jaune es mange.",    "les banane jaune es ne jete."]],
], [
  [["les banane jaune es ne jete.", "la orange orange es mange."], ["le banane jaune es ne jete.",  "les banane jaune es mange."], ["le banane jaune es ne jete.",  "les banane jaune es ne jete."]],
  [["la orange orange es mange.",   "la orange orange es mange."], ["le orange orange es mange.",   "les banane jaune es mange."], ["le orange orange es mange.",   "les banane jaune es ne jete."]],
  [["les banane jaune es mange.",   "la orange orange es mange."], ["les banane jaune es mange.",   "les banane jaune es mange."], ["le banane jaune es mange.",    "les banane jaune es ne jete."]],
  [["la orange orange es ne jete.", "la orange orange es mange."], ["le orange orange es ne jete.", "les banane jaune es mange."], ["le orange ornage es ne jete.", "les banane jaune es ne jete."]],
]

6.times do
  context_options = [0, 1, 2, 3]
  row_options     = [0, 1, 2, 3]
  col_options     = [0, 1, 2]
  arr_options     = [0, 1]

  cur_con = context_options.sample
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  created_statement = statements[cur_con][cur_row][cur_col][cur_arr]
  ideal_statement   = statements[0][2][2][1]

  if created_statement == ideal_statement
    puts ">> #{created_statement}"

    statement_conditions = {
      "la orange orange es mange."   => "les banane jaune es mange.",
      "les banane jaune es mange."   => "la orange orange es ne jete.",
      "la orange orange es ne jete." => "les banane jaune es ne jete.",
      "les banane jaune es ne jete." => "la orange orange es mange.",
    }

    puts ">> The next statement is: #{statement_conditions[created_statement]}"
  else
    #puts ">> Je ne avoir un mot pour toi."
  end
end
