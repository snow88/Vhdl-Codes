library ieee;
use ieee.std_logic_1164.all;
use work.pb.all;

entity bitonic_tb is
end bitonic_tb;

architecture bitbehave of bitonic_tb is
	component bitonic
		port (
		A : in ar;
		B : out ar
		);
	end component;
	
	signal A : ar := (x"1",x"3",x"E",x"9",x"7",x"5",x"4",x"2");     
	signal B : ar;

begin
	lbl: bitonic port map ( A => A, B => B);
	process begin
		wait for 10 ns;
		
		assert false report "reached end";
		wait;
		
	end process;
end bitbehave;