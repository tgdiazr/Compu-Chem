#This script is designed for Gnuplot to generate graphs illustrating the Density of States (DOS) for materials such as SiOH-Aptms-Contaminants. The data used for these visualizations was obtained from calculations performed using Density Functional Theory (DFT) in the Siesta program.
set autoscale
set term qt font "Arial ,18"
set multiplot layout 2,3

####Plot_4#####
unset grid

set xlabel  "E-E_{F}  (eV)"  font "Arial,  20" offset 0,-0.5,0
set ylabel "PDOS (States/eV)" font "Arial, 20" offset -0.5,0,0
set yrange[0.0:250.0]
set xrange[-6.0:6.0]
set xtics font "Arial, 20"
set ytics font "Arial, 20"


plot   'SiH-O-Aptms-Caffeine_Caffeine_Si-O-Aptms-Caffeine.dat'  u  ($1+4.854263):($2)     smooth csplines ls 2 lc rgb "blue"  lw 2   t  "SiOH-APT-CF" ,\
       'SiH-O-Aptms-Caffeine_Caffeine_Si-O-Aptms.dat' u  ($1+4.854263):($2)     smooth csplines ls 2 lc rgb "green"          lw 2   t  "SiOH-APT"  ,\
       'SiH-O-Aptms-Caffeine_Caffeine.dat'  u  ($1+4.854263):($2)               smooth csplines ls 2 lc rgb "orange"  lw 2  t "CF",\

###Plot_5###
unset grid

set xlabel  "E-E_{F}  (eV)"  font "Arial,  20" offset 0,-0.5,0
set ylabel "PDOS (States/eV)" font "Arial, 20" offset -0.5,0,0
set yrange[0.0:250.0]
set xrange[-6.0:6.0]
set xtics font "Arial, 20"
set ytics font "Arial, 20"

plot   'SiH-O-Paracetamol_Si-O-Aptms-Paracetamol.dat'  u  ($1+5.232842):($2)     smooth csplines ls 2 lc rgb "blue"    lw 2  t "SiOH-APT-PC" ,\
       'SiH-O-Paracetamol_Si-O-Aptms.dat'              u  ($1+5.232842):($2)     smooth csplines ls 2 lc rgb "green"   lw 2  t "SiOH-APT"  ,\
       'SiH-O-Paracetamol_SiH-O-Paracetamol_Paracetamol.dat'             u  ($1+5.232842):($2)     smooth csplines ls 2 lc rgb "orange"  lw 2  t "PC",\


####Plot_3#####
unset grid
set xlabel  "E-E_{F}  (eV)"  font "Arial,  20" offset 0,-0.5,0
set ylabel "PDOS (States/eV)" font "Arial, 20" offset -0.5,0,0
set yrange[0.0:250.0]
set xrange[-6.0:6.0]
set xtics font "Arial, 20"
set ytics font "Arial, 20"
#
plot   'SiH-O-Aptms-AM_SiH-O-Aptms-AM.dat'  u  ($1+4.736785):($2)    smooth csplines ls 2 lc rgb "blue"    lw 2  t "SiOH-APT-AM" ,\
       'SiH-O-Aptms-AM_SiH-O-Aptms.dat'     u  ($1+4.736785):($2)    smooth csplines ls 2 lc rgb "green"   lw 2  t  "SiOH-APT"  ,\
                     'Aptms.dat' u  ( $1+4.736785):($2)   smooth csplines ls 2 lc rgb "orange"  lw 2  t  "AM"  ,\
###Plot_7###

unset grid

set xlabel  "E-E_{F}  (eV)"  font "Arial,  20" offset 0,-0.5,0
set ylabel "PDOS (States/eV)" font "Arial, 20" offset -0.5,0,0
set yrange[0.0:250.0]
set xrange[-6.0:6.0]
set xtics font "Arial, 20"
set ytics font "Arial, 20"


plot   'Si-O-Aptes-AM.dat'  u  ($1+4.583433):($2)     smooth csplines ls 2 lc rgb "blue"    lw 2  t "SiOH-APTE-AM" ,\
       'Si-O-Aptes.dat'              u  ($1+4.583433):($2)     smooth csplines ls 2 lc rgb "green"   lw 2  t "SiOH-APTE"  ,\
       'AM.dat'             u  ($1+4.583433):($2)     smooth csplines ls 2 lc rgb "orange"  lw 2  t "AM",\


###Plot_6###
#
unset grid
#
set xlabel  "E-E_{F}  (eV)"  font "Arial,  20" offset 0,-0.5,0
set ylabel "PDOS (States/eV)" font "Arial, 20" offset -0.5,0,0
set yrange[0.0:250.0]
set xrange[-6.0:6.0]
set xtics font "Arial, 20"
set ytics font "Arial, 20"
#
#
plot   'SiH_APTMS_Ast.dat'  u  ($1+ 4.583433):($2)     smooth csplines ls 2 lc rgb "blue"    lw 2  t "SiOH-APT-AST" ,\
       'SiH_APTMS.dat'              u  ($1+ 4.583433):($2)     smooth csplines ls 2 lc rgb "green"   lw 2  t "SiOH-APT"  ,\
              'Ast.dat'             u  ($1+ 4.583433):($2)     smooth csplines ls 2 lc rgb "orange"  lw 2  t "AST",\
###Plot_6###

unset grid

set xlabel  "E-E_{F}  (eV)"  font "Arial,  20" offset 0,-0.5,0
set ylabel "PDOS (States/eV)" font "Arial, 20" offset -0.5,0,0
set yrange[0.0:250.0]
set xrange[-6.0:6.0]
set xtics font "Arial, 20"
set ytics font "Arial, 20"
##
##
plot   'Si-O-Aptes-AST.dat'  u  ($1+ 4.583433):($2)     smooth csplines ls 2 lc rgb "blue"    lw 2  t "SiOH-APTE-AST" ,\
       'Si-O-Aptes.dat'              u  ($1+ 4.583433):($2)     smooth csplines ls 2 lc rgb "green"   lw 2  t "SiOH-APTE"  ,\
         'Ast-1.dat'             u  ($1+ 4.583433):($2)     smooth csplines ls 2 lc rgb "orange"  lw 2  t "AST",\

###############
unset multiplot
###End_format##







