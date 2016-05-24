library ieee;
use ieee.std_logic_1164.all;

entity simon_tb is
end entity;

architecture test of simon_tb is
    signal   r_key        : std_logic_vector(63 downto 0);
    signal   r_plaintext  : std_logic_vector(31 downto 0);

    signal   r_ciphertext : std_logic_vector(31 downto 0);

    component simon is
        port (
            key        : in  std_logic_vector(63 downto 0);
            plaintext  : in  std_logic_vector(31 downto 0);

            ciphertext : out std_logic_vector(31 downto 0)
        );
    end component simon;
begin
    dut : simon
        port map (
            key        => r_key,
            plaintext  => r_plaintext,

            ciphertext => r_ciphertext
        );

    process
    begin
        r_key       <= x"1918111009080100";
        r_plaintext <= x"65656877";

        wait;
    end process;
end architecture;
