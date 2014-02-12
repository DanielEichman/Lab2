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

### 1 bit adder interface
![alt tag](https://raw2.github.com/DanielEichman/Lab2/master/interface.JPG)
###1 bit adder VHDL
![Link] (https://raw2.github.com/DanielEichman/Lab2/master/Full_Adder.vhd)
###1 bit adder Testbench
![Link] (https://raw2.github.com/DanielEichman/Lab2/master/Full_Adder_testbench.vhd)
###1 bit adder Testbench Output

| Cin | A | B | Cout | S |
|-----|---|---|------|---|
| 0   | 0 | 0 | 0    | 0 |
| 0   | 0 | 1 | 0    | 1 |
| 0   | 1 | 0 | 0    | 1 |
| 0   | 1 | 1 | 1    | 0 |
| 1   | 0 | 0 | 0    | 1 |
| 1   | 0 | 1 | 1    | 0 |
| 1   | 1 | 0 | 1    | 0 |
| 1   | 1 | 1 | 1    | 1 |

![alt tag](https://raw2.github.com/DanielEichman/Lab2/master/Full_Adder_testbench.JPG)
##Lab
###4 bit adder Testbench
![Link] (https://github.com/DanielEichman/Lab2/blob/master/Four_bit_adder_testbench.vhd)
###4 bit adder VHDL
![Link](https://github.com/DanielEichman/Lab2/blob/master/Four_bit_adder.vhd)
###.ucf File
![Link](https://github.com/DanielEichman/Lab2/blob/master/Four_bit_adder.ucf)
###Any other files used to implement extra functionality
None.
###Final circuit schematic with device labels 
###4 bit adder Testbench output
![alt tage](https://raw2.github.com/DanielEichman/Lab2/master/Four_bit_Adder_testbench.JPG)
![Data File](https://github.com/DanielEichman/Lab2/blob/master/Four_bit_testbench.txt)
###Full account of design process

### Error log
The only error I had was switching the inputs order in the truth table. Luckily we are creating an adder so it didn't matter. 


