----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Daniel Eichman
-- 
-- Create Date:    13:49:15 02/11/2014 
-- Design Name: 
-- Module Name:    Four_bit_adder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Four_bit_adder is
Port( 
 A: in std_logic_vector( 3 downto 0);
 B: in std_logic_vector( 3 downto 0);
 Oput: out std_logic_vector( 3 downto 0);
 sub:in std_logic;
 overflow:out std_logic);

end Four_bit_adder;

architecture Behavioral of Four_bit_adder is
	COMPONENT Full_Adder
		Port ( A	: in  STD_LOGIC;
				 B : in  STD_LOGIC;
				 Cin  : in  STD_LOGIC;
	          Cout : out  STD_LOGIC;
				 S : out  STD_LOGIC);
	END COMPONENT;
	signal Cout:std_logic_vector(3 downto 0);
	signal C:std_logic_vector(3 downto 0);
begin
	C(0)<=  not B(0) when sub='1' else B(0);
	C(1)<=  not B(1) when sub='1' else B(1);
	C(2)<=  not B(2) when sub='1' else B(2);
	C(3)<=  not B(3) when sub='1' else B(3);
	
	bit0: Full_Adder PORT MAP(A(0),C(0),sub,    Cout(0),Oput(0));
	bit1: Full_Adder PORT MAP(A(1),C(1),Cout(0),Cout(1),Oput(1));
	bit2: Full_Adder PORT MAP(A(2),C(2),Cout(1),Cout(2),Oput(2));
	bit3: Full_Adder PORT MAP(A(3),C(3),Cout(2),Cout(3),Oput(3));
	overflow <= (Cout(3) xor Cout(2)) when sub ='1' else Cout(3);
end Behavioral;

