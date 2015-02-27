# SUE version MMI_SUE5.5.4

proc SCHEMATIC_Carry {} {
  make inverter -origin {730 390}
  make inverter -origin {620 550}
  make inverter -origin {620 670}
  make nmos -orient R270 -origin {730 470}
  make nmos -origin {860 670}
  make output -name Ci_1 -origin {980 390}
  make output -name notCi -origin {980 470}
  make output -name P -origin {980 550}
  make global -name gnd -origin {860 710}
  make input -name Phi -origin {260 250}
  make input -name notCi_1 -origin {270 470}
  make input -name notP -origin {270 550}
  make input -name notG -origin {270 670}
  make pmos -W 1 -origin {860 250}
  make pmos -W 1 -origin {510 250}
  make pmos -W 1 -origin {370 250}
  make output -name notP -origin {980 600}
  make global -orient RXY -name vdd -origin {670 190}
  make_wire 450 250 310 250
  make_wire 800 250 450 250
  make_wire 510 190 370 190
  make_wire 860 190 860 210
  make_wire 370 190 370 210
  make_wire 510 190 510 210
  make_wire 670 190 510 190
  make_wire 670 190 860 190
  make_wire 730 530 730 550
  make_wire 860 290 860 470
  make_wire 270 550 510 550
  make_wire 510 550 590 550
  make_wire 370 290 370 670
  make_wire 670 670 800 670
  make_wire 860 470 860 630
  make_wire 670 550 730 550
  make_wire 730 550 980 550
  make_wire 510 600 980 600
  make_wire 510 550 510 600
  make_wire 770 470 860 470
  make_wire 860 470 980 470
  make_wire 780 390 980 390
  make_wire 270 670 370 670
  make_wire 370 670 590 670
  make_wire 260 250 310 250
  make_wire 510 550 510 290
  make_wire 700 390 620 390
  make_wire 620 390 620 470
  make_wire 620 470 270 470
  make_wire 620 470 690 470
}

proc ICON_Carry args {
  icon_setup $args {{origin {0 0}} {orient R0} {name {}} {M {}} {dpc {}}}
  icon_term -type input -origin {-130 -40} -name Phi
  icon_term -type input -origin {-130 -20} -name notCi_1
  icon_term -type input -origin {-130 0} -name notP
  icon_term -type input -origin {-130 20} -name notG
  icon_term -type output -origin {130 -40} -name Ci_1
  icon_term -type output -origin {130 -20} -name notCi
  icon_term -type output -origin {130 0} -name P
  icon_term -type output -origin {130 20} -name notP
  icon_property -origin {0 0} -size large -anchor center -label Carry
  icon_line -130 -60 130 -60 130 60 -130 60 -130 -60
  icon_property -origin {-120 -40} -label Phi
  icon_property -origin {-120 -20} -label notCi_1
  icon_property -origin {-120 0} -label notP
  icon_property -origin {-120 20} -label notG
  icon_property -origin {120 -40} -anchor e -label Ci_1
  icon_property -origin {120 -20} -anchor e -label notCi
  icon_property -origin {120 0} -anchor e -label P
  icon_property -origin {120 20} -anchor e -label notP
  icon_property -origin {-130 280} -type user -name name
  icon_property -origin {-130 300} -type user -name M
  icon_property -origin {-130 320} -type user -name dpc
}
