set f [open "input3.txt" r]
set str ""
set value ""
while {[gets $f line]>=0} {
#	puts $line
	if {[regexp {variable_name= } $line]} {
		lappend str [lrange $line 1 end]
	}
	if {[regexp {value= } $line]} {
		lappend value [lrange $line 1 end]
	}
}
set a [string map {"," " "} $str]
#puts $a
set b [string map {"," " "} $value]
#puts $b

set length [llength $a]
for {set i 0} {$i < $length} {incr i} {
	puts "[lindex $a $i] = [lindex $b $i]"
}
