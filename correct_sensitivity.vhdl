```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity correct_sensitivity is
  port (
    clk : in std_logic;
    a : in std_logic;
    b : in std_logic;
    c : out std_logic
  );
end entity correct_sensitivity;

architecture behavioral of correct_sensitivity is
begin
  process (clk)  -- Correct sensitivity list
  begin
    if rising_edge(clk) then
      c <= a and b;
    end if;
  end process;
end architecture behavioral;
```