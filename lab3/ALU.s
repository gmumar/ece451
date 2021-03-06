# SUE version MMI_SUE5.5.4

proc SCHEMATIC_ALU {} {
  make Func -origin {490 410}
  make Func -origin {490 750}
  make input -name Ri -origin {270 540}
  make input -name Si -origin {180 540}
  make input -orient R90 -name Phi2 -origin {700 390}
  make input -orient R90 -name notCi_1 -origin {650 400}
  make inverter -origin {1490 550}
  make output -name Fi -origin {1570 550}
  make input -name notS -origin {360 550}
  make input -name notR -origin {330 570}
  make input -orient R90 -name {L[3:0]} -origin {490 290}
  make input -orient R90 -name {N[3:0]} -origin {1300 390}
  make input -orient R90 -name {M[3:0]} -origin {490 650}
  make Carry -origin {900 530}
  make TFunc -origin {1300 550}
  make_wire 400 430 270 430
  make_wire 400 410 180 410
  make_wire 490 290 490 310
  make_wire 620 410 620 530
  make_wire 620 530 770 530
  make_wire 580 410 620 410
  make_wire 580 750 620 750
  make_wire 650 400 650 510
  make_wire 650 510 770 510
  make_wire 700 390 700 490
  make_wire 700 490 770 490
  make_wire 1300 390 1300 450
  make_wire 1540 550 1570 550
  make_wire 400 390 330 390
  make_wire 360 370 400 370
  make_wire 330 730 400 730
  make_wire 330 390 330 570
  make_wire 330 570 330 730
  make_wire 360 710 400 710
  make_wire 360 370 360 550
  make_wire 360 550 360 710
  make_wire 270 770 400 770
  make_wire 270 430 270 540
  make_wire 270 540 270 770
  make_wire 180 750 400 750
  make_wire 180 410 180 540
  make_wire 180 540 180 750
  make_wire 620 550 620 750
  make_wire 620 550 770 550
  make_wire 1400 550 1460 550
  make_wire 1060 550 1060 530
  make_wire 1060 530 1030 530
  make_wire 1060 550 1200 550
  make_wire 1090 490 1030 490
  make_wire 1090 570 1200 570
  make_wire 1090 490 1090 570
  make_wire 1200 530 1120 530
  make_wire 1120 530 1120 510
  make_wire 1120 510 1030 510
  make_wire 1040 590 1160 590
  make_wire 1160 510 1160 590
  make_wire 1160 510 1200 510
  make_wire 1040 550 1040 590
  make_wire 1030 550 1040 550
}

proc ICON_ALU args {
  icon_setup $args {{origin {0 0}} {orient R0} {name {}} {M {}} {dpc {}}}
  icon_term -type input -origin {-90 -40} -name Ri
  icon_term -type input -origin {-90 -20} -name Si
  icon_term -type input -origin {-90 0} -name notS
  icon_term -type input -origin {-90 20} -name notR
  icon_term -type output -origin {90 0} -name Fi
  icon_term -type input -origin {-40 -110} -orient R90 -name {L[3:0]}
  icon_term -type input -origin {-20 -110} -orient R90 -name {M[3:0]}
  icon_term -type input -origin {0 -110} -orient R90 -name notCi_1
  icon_term -type input -origin {20 -110} -orient R90 -name Phi2
  icon_term -type input -origin {40 -110} -orient R90 -name {N[3:0]}
  icon_property -origin {0 0} -size large -anchor center -label ALU
  icon_line -90 -110 90 -110 90 110 -90 110 -90 -110
  icon_property -origin {-80 -40} -label Ri
  icon_property -origin {-80 -20} -label Si
  icon_property -origin {-80 0} -label notS
  icon_property -origin {-80 20} -label notR
  icon_property -origin {80 0} -anchor e -label Fi
  icon_property -origin {-40 -100} -rotate 1 -label L
  icon_property -origin {-20 -100} -rotate 1 -label M
  icon_property -origin {0 -100} -rotate 1 -label notCi_1
  icon_property -origin {20 -100} -rotate 1 -label Phi2
  icon_property -origin {40 -100} -rotate 1 -label N
  icon_property -origin {-90 330} -type user -name name
  icon_property -origin {-90 350} -type user -name M
  icon_property -origin {-90 370} -type user -name dpc
}

