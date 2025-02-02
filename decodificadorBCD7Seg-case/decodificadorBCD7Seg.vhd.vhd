LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY decodificadorBCD7Seg IS

PORT(
	bcd : IN  std_logic_vector(3 DOWNTO 0);
	abcdefg : OUT std_logic_vector(6 downto 0));
END decodificadorBCD7Seg;

ARCHITECTURE arch OF decodificadorBCD7Seg IS
BEGIN

process(bcd)
begin
case bcd is
when "0000" => abcdefg <= "0000001";
when "0001" => abcdefg <= "1001111";
when "0010" => abcdefg <= "0010010";
when "0011" => abcdefg <= "0000110";
when "0100" => abcdefg <= "1001100";
when "0101" => abcdefg <= "0100100";
when "0110" => abcdefg <= "0100000";
when "0111" => abcdefg <= "0001111";
when "1000" => abcdefg <= "0000000";
when others => abcdefg <= "0000100";
end case;
end process;


END ARCHITECTURE;
