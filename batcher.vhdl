library ieee;
use ieee.std_logic_1164.all;

package p is
	type ar is array (0 to 7) of std_logic_vector (3 downto 0);   
end package;              

library ieee;                           
use ieee.std_logic_1164.all;
use work.p.all;

entity batcher is
	port (
		A : in ar;     
		B : out ar
		);
end batcher;

architecture bbehave of batcher is
	component compplus
		port (
		a,b : in std_logic_vector (3 downto 0);         
		o1,o2 : out std_logic_vector (3 downto 0)
	);
	end component;
	
	signal t1,t2 : ar;

begin
P1: compplus port map ( A(0), A(4), t1(0), t1(4)); 
P2: compplus port map ( A(1), A(5), t1(1), t1(5)); 
P3: compplus port map ( A(2), A(6), t1(2), t1(6)); 
P4: compplus port map ( A(3), A(7), t1(3), t1(7)); 

P5: compplus port map ( t1(2), t1(4), t2(2), t2(4)); 
P6: compplus port map ( t1(3), t1(5), t2(3), t2(5)); 

P7: compplus port map ( t1(1), t1(2), B(1), B(2)); 
P8: compplus port map ( t2(3), t2(4), B(3), B(4)); 
P9: compplus port map ( t2(5), t1(6), B(5), B(6)); 

P10: compplus port map ( t1(0), t1(0), B(0), B(0)); 
P11: compplus port map ( t1(7), t1(7), B(7), B(7)); 
end bbehave;