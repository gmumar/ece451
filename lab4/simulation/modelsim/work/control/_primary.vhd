library verilog;
use verilog.vl_types.all;
entity control is
    port(
        phi1            : in     vl_logic;
        phi2            : in     vl_logic;
        ctrl            : in     vl_logic_vector(6 downto 0);
        L               : out    vl_logic_vector(3 downto 0);
        M               : out    vl_logic_vector(3 downto 0);
        N               : out    vl_logic_vector(3 downto 0);
        ARdEn           : out    vl_logic_vector(3 downto 0);
        BRdEn           : out    vl_logic_vector(3 downto 0);
        WriteEn         : out    vl_logic_vector(3 downto 0);
        FBEn            : out    vl_logic_vector(3 downto 0);
        notFBEn         : out    vl_logic_vector(3 downto 0);
        ASelect         : out    vl_logic;
        BSelect         : out    vl_logic;
        DSelect         : out    vl_logic;
        zeroSelect      : out    vl_logic;
        shl             : out    vl_logic;
        notshl          : out    vl_logic;
        shr             : out    vl_logic;
        notshr          : out    vl_logic;
        phi1_1          : out    vl_logic;
        phi1_2          : out    vl_logic;
        phi1_3          : out    vl_logic;
        notphi1_1       : out    vl_logic;
        notphi1_2       : out    vl_logic;
        phi2_1          : out    vl_logic
    );
end control;
