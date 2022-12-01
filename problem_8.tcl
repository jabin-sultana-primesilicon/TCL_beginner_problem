set list1 [list {Washington 1789} {Adams 1797} {Jefferson 1801} {Madison 1809} {Monroe 1817} {Adams 1825}]
puts "Enter two indexes number between 0 and 5:"
puts "1st index number:"
gets stdin first
puts "2nd index number:"
gets stdin second
set str ""
for {set i $first} {$i <= $second} {incr i} {
	set a [lindex $list1 $i]
	lappend str $a	
}
puts "Main list:  $str"
puts "Alphabetically: [lsort -index 0 $str]"
puts "Chronologically: [lsort -index 1 -integer $str]"
