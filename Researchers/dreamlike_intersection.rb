def city_statistics
  require "naive_bayes"

  visualization = NaiveBayes.new(:dreamlike, :realistic)

  ## Dreamlike
  visualization.train(:dreamlike, "If Atlanta in canvas is 640x480 in pixels, it intersects and melts in with Murfreesboro at 213x160 pixels. The intersecting blur appears as the sum of both canvases, a fictional city: Atlanta Street, Murfreesboro at 746x560 pixels. Effectively blending two real world towns or cities.", "word")
  visualization.train(:dreamlike, "If Fairland in canvas is 640x480 in pixels, it intersects and melts in with California at 213x160 pixels. The intersecting blur appears as the sum of both canvases, a fictional city: Fairland Street, California at 746x560 pixels. Effectively blending two real world towns or cities.", "word")
  visualization.train(:realistic, "If San Diego in canvas is 320x240 in pixels, it intersects and melts in with Las Angeles at 106x80 pixels. The intersecting blur appears as the sum of both canvases, a fictional city: San Diego Street, Las Angeles at 373x280 pixels. Effectively blending two real world towns or cities.", "word")
  #visualization.train(:dreamlike, "Dog", "word")

  ## Realistic
  visualization.train(:realistic, "If Atlanta in canvas is 640x480 in pixels, it intersects and melts in with Georgia at 213x160 pixels. The intersecting blur appears as the sum of both canvases, a fictional city: Atlanta Street, Georgia at 746x560 pixels. Effectively blending two real world towns or cities.", "word")
  #visualization.train(:realistic, "Cat", "word")

  classification = visualization.classify(@hypothesis)

  print classification
end

print "What is the height size ( in pixels ) of your main canvas? >> "; main_canvas_height  = gets.chomp.to_i
print "What is the width size ( in pixels ) of your main canvas? >> ";  main_canvas_width   = gets.chomp.to_i
print "What is the name of your city in main canvas? >> ";              city_in_main        = gets.chomp
print "What is the name of the neighboring city? >> ";                  neighboring_city    = gets.chomp

reduced_height = main_canvas_height / 3
reduced_width  = main_canvas_width / 3

sum_height = main_canvas_height + reduced_height / 2
sum_width  = main_canvas_width + reduced_width / 2

$hypothesis = "If #{city_in_main} in canvas is #{main_canvas_height}x#{main_canvas_width} in pixels, it intersects and melts in with #{neighboring_city} at #{reduced_height}x#{reduced_width} pixels. The intersecting blur appears as the sum of both canvases, a fictional city: #{city_in_main} Street, #{neighboring_city} at #{sum_height}x#{sum_width} pixels. Effectively blending two real world towns or cities."

puts $hypothesis

city_statistics
