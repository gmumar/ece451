library verilog;
use verilog.vl_types.all;
entity decoder is
    port(
        a               : in     vl_logic_vector(1 downto 0);
        x               : out    vl_logic_vector(3 downto 0);
        clk             : in     vl_logic
    );
end decoder;
