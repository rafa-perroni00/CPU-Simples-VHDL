LIBRARY ieee;
USE ieee.std_logic_1164.all;


ENTITY reg IS

PORT(
R: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
Rin, Clock: IN STD_LOGIC;
Q: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END reg;

ARCHITECTURE Behavior OF reg IS
BEGIN
PROCESS (Clock, Rin)
BEGIN
IF Clock'EVENT AND Clock = '0' AND Rin = '1' THEN
Q <= R;
END IF;
END PROCESS;
END Behavior;