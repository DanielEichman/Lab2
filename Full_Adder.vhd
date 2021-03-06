----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: Daniel Eichman
-- 
-- Create Date:    23:35:34 02/08/2014 
-- Design Name: 
-- Module Name:    Full_Adder - Structural 
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

entity Full_Adder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           S : out  STD_LOGIC);
end Full_Adder;

architecture Structural of Full_Adder is
begin
S <= A xor B xor Cin;--Sum 
Cout <= (A and B) or (A and Cin) or (B and Cin);--Carry out
end Structural;

