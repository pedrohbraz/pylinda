set terminal png
set output "collect.png"

#set terminal latex
#set output "collect.tex"

#set term postscript eps enhanced
#set output "collect.eps"

set size 1, 1
set xrange[0:50]
set yrange[0:*]
set grid xtics
set grid ytics

set ylabel "Seconds"
set xlabel "Tuple Size (Elements)"

#set title "Time Taken To In 10,000 tuples"

plot "collect.txt" using 1:2 title "Traditional" with lines, \
     "collect.txt" using 1:3 title "Registered" with lines, \
     "collect.txt" using 1:4 title "Unregistered" with lines
