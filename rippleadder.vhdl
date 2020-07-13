library ieee;
use ieee.std_logic_1164.all;

entity rippleadder is
	port (
		A : in std_logic_vector (3 downto 0);
		B : in std_logic_vector (3 downto 0);
		Cin : in std_logic;
		S : out std_logic_vector (3 downto 0);
		Cout : out std_logic
		);
end rippleadder;

architecture rbehave of rippleadder is
	component fa
		port (
		a  : in std_logic;
		b  : in std_logic;
		cin : in std_logic;
		o  : out std_logic;
		cout  : out std_logic
		);
	end component;
	
	signal c1,c2,c3 : std_logic;
begin
FA1: fa port map( A(0), B(0), Cin, S(0), c1);
FA2: fa port map( A(1), B(1), c1, S(1), c2);
FA3: fa port map( A(2), B(2), c2, S(2), c3);
FA4: fa port map( A(3), B(3), c3, S(3), Cout);
end rbehave;