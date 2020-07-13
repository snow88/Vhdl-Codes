library ieee;
use ieee.std_logic_1164.all;
use work.p.all;

entity batcher_tb is
end batcher_tb;

architecture btbehave of batcher_tb is
	component batcher
		port (
		A : in ar;
		B : out ar
		);
	end component;
	
	signal A : ar := (x"1",x"3",x"6",x"9",x"2",x"8",x"E",x"F");    
	signal B : ar;

begin
	lbl: batcher port map ( A => A, B => B);
	process begin
		wait for 10 ns;
		assert false report "reached end";
		wait;
	end process;
end btbehave;