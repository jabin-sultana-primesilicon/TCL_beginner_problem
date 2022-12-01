set f [open "input6.txt" r]
set count 0
while {[gets $f line]>=0} {
	set a [string length $line] 
	for {set i 0} {$i < $a} {incr i} {
		set b [string index $line $i]
		set c [string tolower $b]
		if {![regexp {a} $c] && ![regexp {e} $c] && ![regexp {i} $c] && ![regexp {o} $c] && ![regexp {u} $c] && ![regexp { } $c] && ![regexp {\.} $c]} {
		      incr count
		}
	}
}
puts "Number of consonants: $count"
close $f
