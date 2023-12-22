library ieee;
use ieee.std_logic_1164.all;

entity Molassas2 is
port ( Ll, Lh, Tc :in     std_logic;
		 Vout, Vin	:inout  std_logic;
		 l1, l2, T3  :out std_logic); 
		 
	end entity Molassas2;
	
	architecture MolassasOp of Molassas2 is
	begin
	
	Vout <= not((not Ll and not Lh)
					or (Ll and Tc) 
	            or (not Lh and not Vout));
					
	l1  <= Ll; -- LED indicator
	l2  <= Lh; -- LED indicator
	T3  <= Tc; -- Temperature 
	
	Vin <= (not Vout and not Tc);
	
	
	end architecture MolassasOp;