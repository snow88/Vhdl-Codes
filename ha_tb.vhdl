library ieee;
use ieee.std_logic_1164.all;
 
entity ha_tb is
end ha_tb;
 
architecture test of ha_tb is

	component ha
	port (
    a  : in std_logic;
    b  : in std_logic;
    o  : out std_logic;
    c  : out std_logic
    );
	end component;
		
  signal a, b, o, c : std_logic;
begin
   half_adder: ha port map(a => a, b => b, o => o, c => c);
   
   process begin
	a <= '0';
	b <= '0';
	wait for 1 ns;
	
	a <= '1';
	b <= '0';
	wait for 1 ns;
	
	assert false report "reached end";
	wait;
	
   end process;
end test;