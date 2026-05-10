LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE std.textio.ALL;

ENTITY photo_read IS
	GENERIC (

		--play with this
		ADDR_WIDTH : INTEGER := 4;

		DATA_WIDTH : INTEGER := 8;
		IMAGE_SIZE : INTEGER := 16;
		IMAGE_FILE_NAME : STRING := "IMAGE_FILE.MIF"
	);
	PORT (

		clock : IN std_logic;
		data : IN std_logic_vector((DATA_WIDTH - 1) DOWNTO 0);
		raddress : IN std_logic_vector((ADDR_WIDTH - 1) DOWNTO 0);u_read_image_VHDL : read_image_VHDL
port map(
-- ports
);

		waddress : IN std_logic_vector((ADDR_WIDTH - 1)DOWNTO 0);
		re : IN std_logic;
		we : IN std_logic;

		q : OUT std_logic_vector((DATA_WIDTH - 1)DOWNTO 0)

	);
END photo_read;


ARCHITECTURE behavioral OF photo_read IS
	TYPE mem_type IS ARRAY(0 TO IMAGE_SIZE) OF std_logic_vector((DATA_WIDTH - 1)DOWNTO 0);
	
	IMPURE FUNCTION init_mem(mif_file_name : IN STRING) RETURN mem_type IS
	FILE mif_file : text OPEN read_mode IS mif_file_name;
	VARIABLE mif_line : line;
	VARIABLE temp_bv : bit_vector((DATA_WIDTH - 1) DOWNTO 0);
	VARIABLE temp_mem : mem_type;
BEGIN
	FOR i IN mem_type'RANGE LOOP
		readline(mif_file, mif_line);
		read(mif_line, temp_bv);
		temp_mem(i) := to_stdlogicvector(temp_bv);
	END LOOP; RETURN temp_mem;
END FUNCTION;

SIGNAL ram_block : mem_type := init_mem(IMAGE_FILE_NAME);
SIGNAL read_address_reg : std_logic_vector((ADDR_WIDTH - 1) DOWNTO 0) := (OTHERS => '0');
BEGIN
	PROCESS (clock)
	BEGIN
		IF (rising_edge(clock)) Then
		
		      IF (we = '1') THEN
				        ram_block(to_integer(unsigined(waddress)) <= data
			   END IF;
			IF (re = '1') THEN
				        q <= ram_block(to_integer(unsigined(raddress))
			END IF;
			
		END IF;
		END PROCESS;
		
END behavioral;