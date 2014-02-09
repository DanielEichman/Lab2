Lab2
====
##PreLab
###1 bit adder Truth Table 

| Cin | A | B | Cout | S |
|-----|---|---|------|---|
| 0   | 0 | 0 | 0    | 0 |
| 0   | 0 | 1 | 0    | 1 |
| 0   | 1 | 0 | 0    | 1 |
| 0   | 1 | 1 | 1    | 0 |
| 1   | 0 | 0 | 0    | 1 |
| 1   | 0 | 1 | 1    | 0|
| 1   | 1 | 0 | 1    | 0 |
| 1   | 1 | 1 | 1    | 1 |

Cout =  AB + ACin + BCin + ABCin
Cout = AB + ACin + BCin

S = A xor B xor C

###1 bit adder Schematic Structural 
![alt tag](https://raw2.github.com/DanielEichman/Lab2/master/1_bit_adder_Schematic.JPG)

###1 bit adder VHDL
###1 bit adder Testbench	
###1 bit adder Testbench Output
