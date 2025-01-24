```vhdl
library ieee;
use ieee.std_logic_1164.all;

entity wrong_sensitivity is
  port (
    clk : in std_logic;
    a : in std_logic;
    b : in std_logic;
    c : out std_logic
  );
end entity wrong_sensitivity;

architecture behavioral of wrong_sensitivity is
begin
  process (clk, a, b)  -- Incorrect sensitivity list
  begin
    if rising_edge(clk) then
      c <= a and b;
    end if;
  end process;
end architecture behavioral;
```