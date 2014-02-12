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
![alt tag](https://raw2.github.com/DanielEichman/Lab2/master/Final_Schematic.jpg)
###4 bit adder Testbench output
![alt tage](https://raw2.github.com/DanielEichman/Lab2/master/Four_bit_Adder_testbench.JPG)
![Data File](https://github.com/DanielEichman/Lab2/blob/master/Four_bit_testbench.txt)
###Full account of design process
Prelab
The only error I had was switching the inputs order in the truth table. Luckily we are creating an adder so it didn't matter.
Lab
The design process was not that hard, especially considering we had learnt how to implement an ALU in class. However writing the code was by far the hardest part. Having no reference the syntax was pretty much guess-and-check. The first error I ran into was accessing an individual value of a std_logic_vector. I thought that it would be the same as the .ucf file and use <> brackets but it wasn’t instead it required () brackets. The next issue was using an if-statement. Every online source had a different way of implementing the if-statement; in the end I used a when statement which was a combination of statements from two different sources. After successfully implementing and testing my design (with a limited set of data) on my NEXYS 2, I began to write my test bench. That’s when even more syntax errors happened. I did not have a PORT statement in my entity of my Four_bit_adder this caused my test bench to have many errors. What still puzzles me is why there were no errors when implementing it physically on my NEXYS 2 but there were with the test bench. After that my test bench would only run for 1,000,000 ps. To change that there is a button in the tool bar that sets how long the test bench will run for. Overall this has been the most difficult programing language to learn as there is no reference library, this is ![java’s](http://docs.oracle.com/javase/6/docs/api/). Also the IED is also very complicated and I feel like I do not have a good grasp on it. 



