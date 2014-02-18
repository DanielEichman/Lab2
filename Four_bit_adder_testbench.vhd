--------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Daniel Eichman
--
-- Create Date:   21:34:17 02/11/2014
-- Design Name:   
-- Module Name:   C:/Users/C16Daniel.Eichman/Documents/AFA/ECE281Dir/Lab2/Four_bi_adder_testbench.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Four_bit_adder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Four_bit_adder_testbench IS
END Four_bit_adder_testbench;
 
ARCHITECTURE behavior OF Four_bit_adder_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Four_bit_adder
    PORT(
		signal A: IN std_logic_vector( 3 downto 0);
		signal B: IN std_logic_vector( 3 downto 0);
		signal Oput: OUT std_logic_vector( 3 downto 0);
		signal sub: IN std_logic;
		signal overflow: OUT std_logic
	);
   END COMPONENT;
	--initialize input's that helped debug
	signal A: std_logic_vector (3 downto 0) := (others => '0');
	signal B: std_logic_vector (3 downto 0) := (others => '0');
	signal Oput: std_logic_vector (3 downto 0);
	signal sub: std_logic := '0';
	signal overflow: std_logic;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Four_bit_adder PORT MAP (
										A=>A,
										B=>B,
										Oput=>Oput,
										sub=>sub,
										overflow=>overflow
								);
   stim_proc: process
   begin	

     	for I in 0 to 15 loop--Loop for A
			wait for 50 ns;
				for I in 0 to 15 loop--Loop for B
					wait for 50 ns;
					--This was there as i attached the output for evey value as you can't see them in the photo
--					REPORT "When A = "
--						 & std_logic'image(A(3))				
--						 & std_logic'image(A(2))
--						 & std_logic'image(A(1))				
--						 & std_logic'image(A(0))
--						 &"And B = "
--						 & std_logic'image(B(3))				
--						 & std_logic'image(B(2))
--						 & std_logic'image(B(1))				
--						 & std_logic'image(B(0))
--						 &"And sub = "
--						 & std_logic'image(sub)
--						 &"Output = "
--						 & std_logic'image(Oput(3))				
--						 & std_logic'image(Oput(2))
--						 & std_logic'image(Oput(1))				
--						 & std_logic'image(Oput(0))
--						 &"Overflow = "
--						 & std_logic'image(overflow)
--					SEVERITY NOTE;
					assert (Oput = A + B) report "Error"
					SEVERITY NOTE;
					B<=B+1;
				end loop;
			A <= A + 1;
		end loop;
		sub<='1';--changed to SUBTRACTION
		for I in 0 to 15 loop--loop for A
			wait for 50 ns;
				for I in 0 to 15 loop--loop for B
					wait for 50 ns;
					--This was there as i attached the output for evey value as you can't see them in the photo
--					REPORT "When A = "
--						 & std_logic'image(A(3))				
--						 & std_logic'image(A(2))
--						 & std_logic'image(A(1))				
--						 & std_logic'image(A(0))
--						 &"And B = "
--						 & std_logic'image(B(3))				
--						 & std_logic'image(B(2))
--						 & std_logic'image(B(1))				
--						 & std_logic'image(B(0))
--						 &"And sub = "
--						 & std_logic'image(sub)
--						 &"Output = "
--						 & std_logic'image(Oput(3))				
--						 & std_logic'image(Oput(2))
--						 & std_logic'image(Oput(1))				
--						 & std_logic'image(Oput(0))
--						 &"Overflow = "
--						 & std_logic'image(overflow)
--					SEVERITY NOTE;
					assert (Oput = A - B) report "Error"
					SEVERITY NOTE;
					B<=B+1;
				end loop;
			A <= A + 1;
		end loop;
		wait;
   end process;

END;
