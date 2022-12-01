puts "Enter a sentence:"
gets stdin sentence
puts "Enter a word:"
gets stdin word

set match [ lsearch -all -regexp -nocase $sentence $word]; #this line excutes only without any punctuation marks
puts [join $match " "]

