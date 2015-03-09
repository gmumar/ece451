# SUE version MMI_SUE5.5.4

proc SCHEMATIC_Carry_test {} {
  make global -name gnd -origin {260 50}
  make global -name gnd -origin {330 130}
  make pwl_source -name ci -edges 600ns -origin {330 50}
  make output -name notCi -origin {770 0}
  make global -name gnd -origin {400 260}
  make pwl_source -name notci -edges {200ns 600ns 800ns} -origin {400 130}
  make output -name P -origin {770 20}
  make global -name gnd -origin {470 350}
  make output -name Ci_1 -origin {770 -20}
  make pwl_source -name clk -initial_voltage vddp -pulse_voltage 0 -edges {100ns 200ns 300ns 400ns 500ns 600ns 700ns 800ns 900ns 1000ns 1100ns 1200ns 1300ns 1400ns} -origin {260 10}
  make pwl_source -name bla -initial_voltage vddp -pulse_voltage 0 -edges {200ns 400ns 800ns 1000ns} -origin {470 210}
  make Carry -origin {620 0}
  make_wire 260 -40 260 -30
  make_wire 260 -40 490 -40
  make_wire 330 90 330 130
  make_wire 400 170 400 260
  make_wire 470 250 470 350
  make_wire 330 -20 330 10
  make_wire 400 0 400 90
  make_wire 470 20 470 170
  make_wire 330 -20 490 -20
  make_wire 400 0 490 0
  make_wire 490 20 470 20
  make_wire 750 -20 770 -20
  make_wire 750 0 770 0
  make_wire 750 20 770 20
}

proc ICON_Carry_test args {
  icon_setup $args {{origin {0 0}} {orient R0} {name {}} {M {}} {dpc {}}}
  icon_term -type input -origin {-130 -40} -name Phi
  icon_term -type input -origin {-130 -20} -name notCi_1
  icon_term -type input -origin {-130 0} -name notP
  icon_term -type input -origin {-130 20} -name notG
  icon_term -type output -origin {130 -20} -name Ci_1
  icon_term -type output -origin {130 0} -name notCi
  icon_term -type output -origin {130 20} -name P
  icon_term -type output -origin {0 0} -name Ci
  icon_term -type output -origin {0 0} -name sdf
  icon_property -origin {0 0} -size large -anchor center -label Carry_test
  icon_line -130 -60 130 -60 130 60 -130 60 -130 -60
  icon_property -origin {-120 -40} -label Phi
  icon_property -origin {-120 -20} -label notCi_1
  icon_property -origin {-120 0} -label notP
  icon_property -origin {-120 20} -label notG
  icon_property -origin {120 -20} -anchor e -label Ci_1
  icon_property -origin {120 0} -anchor e -label notCi
  icon_property -origin {120 20} -anchor e -label P
  icon_property -origin {-130 280} -type user -name name
  icon_property -origin {-130 300} -type user -name M
  icon_property -origin {-130 320} -type user -name dpc
}

