library ieee;
use ieee.std_logic_1164.all;

entity rippleadder_tb is
end rippleadder_tb;

architecture rtbehave of rippleadder_tb is
	component rippleadder
		port (
		A : in std_logic_vector (3 downto 0);
		B : in std_logic_vector (3 downto 0);
		Cin : in std_logic;
		S : out std_logic_vector (3 downto 0);
		Cout : out std_logic
		);
	end component;

	signal A,B,S : std_logic_vector (3 downto 0);
	signal Cin,Cout : std_logic;
	
begin
	lbl : rippleadder port map ( A => A, B => B, Cin => Cin, S => S, Cout => Cout);
	process begin
		Cin <= '0';
		
		A <= "1011";
		B <= "0010";
		wait for 1 ns;
		
		A <= "0010";
		B <= "0001";
		wait for 1 ns;

		assert false report "reached end";
		wait;
		
	end process;
end rtbehave;