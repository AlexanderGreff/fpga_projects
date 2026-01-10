//HDMI Text Controller Example Testbench for ECE 385
//Spring 2024 Distribution

//Modified 3/10/24 by Zuofu
//
//Based on Realdigital documentation on simulating AXI Bus
//as well as BMP writing code from @BrianHGinc
//
//Used for simulation of AXI4-Lite bus as well as generating
//simulation video image for testing

`define SIM_VIDEO //Comment out to simulate AXI bus only
                    //Uncomment to simulate entire screen and write BMP (slow)

module hdmi_text_controller_tb();

	//clock and reset_n signals
	logic aclk =1'b0;
	logic arstn = 1'b0;
	
	//Write Address channel (AW)
	logic [31:0] write_addr =32'd0;	//Master write address
	logic [2:0] write_prot = 3'd0;	//type of write(leave at 0)
	logic write_addr_valid = 1'b0;	//master indicating address is valid
	logic write_addr_ready;		    //slave ready to receive address

	//Write Data Channel (W)
	logic [31:0] write_data = 32'd0;	//Master write data
	logic [3:0] write_strb = 4'd0;	    //Master byte-wise write strobe
	logic write_data_valid = 1'b0;	    //Master indicating write data is valid
	logic write_data_ready;		        //slave ready to receive data

	//Write Response Channel (WR)
	logic write_resp_ready = 1'b0;	//Master ready to receive write response
	logic [1:0] write_resp;		    //slave write response
	logic write_resp_valid;		    //slave response valid
	
	//Read Address channel (AR)
	logic [31:0] read_addr = 32'd0;	//Master read address
	logic [2:0] read_prot =3'd0;	//type of read(leave at 0)
	logic read_addr_valid = 1'b0;	//Master indicating address is valid
	logic read_addr_ready;		    //slave ready to receive address

	//Read Data Channel (R)
	logic read_data_ready = 1'b0;	//Master indicating ready to receive data
	logic [31:0] read_data;		    //slave read data
	logic [1:0] read_resp;		    //slave read response
	logic read_data_valid;		    //slave indicating data in channel is valid

    //Although we can look at the HDMI signal, it is not particularly useful for debugging
    //Instead, simulate and record the pixel clock and the pixel RGB values to generate
    //a simulated image
    logic [3:0] pixel_rgb [3];
    logic pixel_clk, pixel_hs, pixel_vs, pixel_vde;
    logic [9:0] drawX, drawY;
    logic [31:0] tb_read;
    
    //BMP writer related signals    
    localparam BMP_WIDTH  = 800;
    localparam BMP_HEIGHT = 525;
    logic [23:0] bitmap [BMP_WIDTH][BMP_HEIGHT];

    integer i,j; //use integers for loop indices, etc

	//Instantiation of DUT (HDMI TEXT_CONTROLLER) IP
	hdmi_text_controller_v1_0 # (
		.C_AXI_DATA_WIDTH(32),
		.C_AXI_ADDR_WIDTH(16)
	) hdmi_text_controller_v1_0_inst (

		.axi_aclk(aclk),
		.axi_aresetn(arstn),

		.axi_awaddr(write_addr),
		.axi_awprot(write_prot),
		.axi_awvalid(write_addr_valid),
		.axi_awready(write_addr_ready),

		.axi_wdata(write_data),
		.axi_wstrb(write_strb),
		.axi_wvalid(write_data_valid),
		.axi_wready(write_data_ready),

		.axi_bresp(write_resp),
		.axi_bvalid(write_resp_valid),
		.axi_bready(write_resp_ready),

		.axi_araddr(read_addr),
		.axi_arprot(read_prot),
		.axi_arvalid(read_addr_valid),
		.axi_arready(read_addr_ready),

		.axi_rdata(read_data),
		.axi_rresp(read_resp),
		.axi_rvalid(read_data_valid),
		.axi_rready(read_data_ready)
	);
	
	initial begin: CLOCK_INITIALIZATION
	   aclk = 1'b1;
    end 
       
    always begin : CLOCK_GENERATION
        #5 aclk = ~aclk;
    end

    //Uncomment and fill in the following with your own hierarchical reference (e.g. internal signals) 
    //so that the testbench can properly reflect the pixels being draw. 
    //Note that looking at the HDMI signal is not particularly useful here, as it is difficult
    //to decode. E.g. if your hdmi_text_controller has an internal signal named 'clk_25MHz' for
    //the pixel clock, assign pixel_clk = hdmi_text_controller_v1_0_inst.clk_25MHz
    
    // Red Green and Blue values respectively - these come from your draw logic
     assign pixel_rgb[0] = hdmi_text_controller_v1_0_inst.red;
     assign pixel_rgb[1] = hdmi_text_controller_v1_0_inst.green;
     assign pixel_rgb[2] = hdmi_text_controller_v1_0_inst.blue;
    
    // Pixel clock, hs, vs, and vde (!blank) - these come from your internal VGA module
     assign pixel_clk = hdmi_text_controller_v1_0_inst.clk_25MHz;
     assign pixel_hs = hdmi_text_controller_v1_0_inst.hsync;
     assign pixel_vs = hdmi_text_controller_v1_0_inst.vsync;
     assign pixel_vde = hdmi_text_controller_v1_0_inst.vde;
    
    // DrawX and DrawY - these come from your internal VGA module
     assign drawX = hdmi_text_controller_v1_0_inst.drawX;
     assign drawY = hdmi_text_controller_v1_0_inst.drawY;
   
    // BMP writing task, based off work from @BrianHGinc:
    // https://github.com/BrianHGinc/SystemVerilog-TestBench-BPM-picture-generator
    task save_bmp(string bmp_file_name);
        begin
        
            integer unsigned        fout_bmp_pointer, BMP_file_size,BMP_row_size,r;
            logic   unsigned [31:0] BMP_header[0:12];
        
                                      BMP_row_size  = 32'(BMP_WIDTH) & 32'hFFFC;  // When saving a bitmap, the row size/width must be
        if ((BMP_WIDTH & 32'd3) !=0)  BMP_row_size  = BMP_row_size + 4;           // padded to chunks of 4 bytes.
    
        fout_bmp_pointer= $fopen(bmp_file_name,"wb");
        if (fout_bmp_pointer==0) begin
            $display("Could not open file '%s' for writing",bmp_file_name);
            $stop;     
        end
        $display("Saving bitmap '%s'.",bmp_file_name);
       
        BMP_header[0:12] = '{BMP_file_size,0,0054,40,BMP_WIDTH,BMP_HEIGHT,{16'd24,16'd8},0,(BMP_row_size*BMP_HEIGHT*3),2835,2835,0,0};
        
        //Write header out      
        $fwrite(fout_bmp_pointer,"BM");
        for (int i =0 ; i <13 ; i++ ) $fwrite(fout_bmp_pointer,"%c%c%c%c",BMP_header[i][7 -:8],BMP_header[i][15 -:8],BMP_header[i][23 -:8],BMP_header[i][31 -:8]); // Better compatibility with Lattice Active_HDL.
        
        //Write image out (note that image is flipped in Y)
        for (int y=BMP_HEIGHT-1;y>=0;y--) begin
          for (int x=0;x<BMP_WIDTH;x++)
            $fwrite(fout_bmp_pointer,"%c%c%c",bitmap[x][y][23:16],bitmap[x][y][15:8],bitmap[x][y][7:0]) ;
        end
    
        $fclose(fout_bmp_pointer);
        end
    endtask
    
    // Always procedure to log RGB values into array to generate image
    always@(posedge pixel_clk)
        if (!arstn) begin
            for (j = 0; j < BMP_HEIGHT; j++)    //assign bitmap default to some light gray so we 
                for (i = 0; i < BMP_WIDTH; i++) //can tell the difference between drawn black
                    bitmap[i][j] <= 24'h0F0F0F; //and default color
        end
        else
            if (pixel_vde) //Only draw when not in the blanking interval
                bitmap[drawX][drawY] <= {pixel_rgb[0], 4'h0, pixel_rgb[1], 4'h0, pixel_rgb[2], 4'h00};
  
    // Provided AXI write task, follow this example for AXI read below
    task axi_write (input logic [31:0] addr, input logic [31:0] data);
        begin
            #3 write_addr <= addr;	//Put write address on bus
            write_data <= data;	//put write data on bus
            write_addr_valid <= 1'b1;	//indicate address is valid
            write_data_valid <= 1'b1;	//indicate data is valid
            write_resp_ready <= 1'b1;	//indicate ready for a response
            write_strb <= 4'hF;		//writing all 4 bytes
    
            //wait for one slave ready signal or the other
            wait(write_data_ready || write_addr_ready);
                
            @(posedge aclk); //one or both signals and a positive edge
            if(write_data_ready&&write_addr_ready)//received both ready signals
            begin
                write_addr_valid<=0;
                write_data_valid<=0;
            end
            else    //wait for the other signal and a positive edge
            begin
                if(write_data_ready)    //case data handshake completed
                begin
                    write_data_valid<=0;
                    wait(write_addr_ready); //wait for address address ready
                end
                        else if(write_addr_ready)   //case address handshake completed
                        begin
                    write_addr_valid<=0;
                            wait(write_data_ready); //wait for data ready
                        end 
                @ (posedge aclk);// complete the second handshake
                write_addr_valid<=0; //make sure both valid signals are deasserted
                write_data_valid<=0;
            end
                
            //both handshakes have occured
            //deassert strobe
            write_strb<=0;
    
            //wait for valid response
            wait(write_resp_valid);
            
            //both handshake signals and rising edge
            @(posedge aclk);
    
            //deassert ready for response
            write_resp_ready<=0;
    
            //end of write transaction
        end
    endtask;
    
    //Fill in this task to perform an AXI read, similar to the provided example
    //of the AXI write above, follow the waveforms provided into the I.AMM manual
    //Note the read handshake process is simpler than the write
task axi_read (input logic [31:0] addr, output logic [31:0] data);
    begin
        #3  read_addr <= addr ; //wait a bit for stability, then have master put the address in the channel
            
        read_addr_valid <= 1'b1; //master asserts that address is properly in channel
        read_data_ready <= 1'b1; //master asserts that he is ready to receive data from slave
            
        wait(read_addr_ready); //we wait until the slave is ready to read the address in the channel
            
        @(posedge aclk);
        
        if (read_addr_valid && read_addr_ready) //if the master has put correct address & slave is ready to receive it:
        begin
            read_addr_valid <= 1'b0; //read address handshake complete, slave latches address
            wait(read_data_valid); // we wait until the slave has correctly latched the right return data
            @(posedge aclk);
 
            if (read_data_ready && read_data_valid) //if slave has the right return data & master is ready to receive it:
            begin
                data <= read_data; // make the read data the same as the data
                read_data_ready <= 1'b0; //end the data channel handshake
            end
        end
    end
endtask;
  
//palette indices
localparam [3:0] COL_BLACK  = 4'd0;
localparam [3:0] COL_BLUE   = 4'd1;
localparam [3:0] COL_ORANGE = 4'd2;
localparam [3:0] COL_WHITE  = 4'd3;
localparam int ROW1 = 40; //offset so we don't draw at top row, since that crops our text

//helper to structure a vram 32-bit word
function automatic [31:0] vram_word;
    input [6:0] code0;
    input [3:0] fgd0;
    input [3:0] bkg0;
    input [6:0] code1;
    input [3:0] fgd1;
    input [3:0] bkg1;
begin
    vram_word = {1'b0, code1, fgd1, bkg1, 1'b0, code0, fgd0, bkg0}; 
end
endfunction

initial begin : TEST_VECTORS
    arstn = 0; // reset IP
    repeat (4) @(posedge aclk);
    arstn <= 1;

//we use two palette registers as we only need 4 colors for this test
    repeat (4) @(posedge aclk)
        axi_write(4*32'h800, 32'h0F00_0000); //we store the black and blue colors used here, GBR notation

    repeat (4) @(posedge aclk)
        axi_write(4*32'h801, 32'h0FFF_00AF); //we store the white and orange colors used here, GBR notation


//we fill in the VRAM with black space where we don't put text
    for (i = 0; i < 1200; i++) begin 
        repeat (4) @(posedge aclk)
            axi_write(4*i, vram_word(7'h20, COL_WHITE, COL_BLACK,
                                     7'h20, COL_WHITE, COL_BLACK)); // "  "
    end

    repeat (4) @(posedge aclk)
        axi_write(4*(ROW1), 32'h6710_6110); // word 0 : "a","g"   (blue, blue)

    repeat (4) @(posedge aclk)
        axi_write(4*(ROW1 + 1), 32'h6510_7210); // word 1 : "r","e"   (blue, blue)
    
    repeat (4) @(posedge aclk)
        axi_write(4*(ROW1 + 2), 32'h6610_6610); // word 2 : "f","f"   (blue, blue)

    repeat (4) @(posedge aclk)
        axi_write(4*(ROW1 + 3), 32'h2030_3210); // word 3 : "2"," "   (blue, white)

    repeat (4) @(posedge aclk)
        axi_write(4*(ROW1 + 4), 32'h6E30_6130); // word 4 : "a","n"   ("and", white)

    repeat (4) @(posedge aclk)
        axi_write(4*(ROW1 + 5), 32'h2030_6430); // word 5 : "d"," "   (white)

    repeat (4) @(posedge aclk)
        axi_write(4*(ROW1 + 6), 32'h6510_7310); // word 6 : "s","e"   (blue, blue)

    repeat (4) @(posedge aclk)
        axi_write(4*(ROW1 + 7), 32'h6F10_7910); // word 7 : "y","o"   (blue, blue)

    repeat (4) @(posedge aclk)
        axi_write(4*(ROW1 + 8), 32'h7710_6E10); // word 8 : "n","w"   (blue, blue)

    repeat (4) @(posedge aclk)
        axi_write(4*(ROW1 + 9), 32'h2030_3210); // word 9 : "2"," "   (blue, white)

    repeat (4) @(posedge aclk)
        axi_write(4*(ROW1 + 10), 32'h6F30_6330); // word 10: "c","o"   (white)

    repeat (4) @(posedge aclk)
        axi_write(4*(ROW1 + 11), 32'h7030_6D30); // word 11: "m","p"   (white)

    repeat (4) @(posedge aclk)
        axi_write(4*(ROW1 + 12), 32'h6530_6C30); // word 12: "l","e"   (white)

    repeat (4) @(posedge aclk)
        axi_write(4*(ROW1 + 13), 32'h6530_7430); // word 13: "t","e"   (white)
    repeat (4) @(posedge aclk)
        axi_write(4*(ROW1 + 14), 32'h2030_6430); // word 14: "d"," "   (white)
    repeat (4) @(posedge aclk)
        axi_write(4*(ROW1 + 15), 32'h4320_4520); // word 15: "E","C"   (orange)
    repeat (4) @(posedge aclk)
        axi_write(4*(ROW1 + 16), 32'h3320_4520); // word 16: "E","3"   (orange)
    repeat (4) @(posedge aclk)
        axi_write(4*(ROW1 + 17), 32'h3520_3820); // word 17: "8","5"   (orange)
    repeat (4) @(posedge aclk)
        axi_write(4*(ROW1 + 18), 332'h2030_2120); // word 18: "!"," "   (white)

        
//Simulate until VS goes low (indicating a new frame) and write the results
`ifdef SIM_VIDEO
    wait (~pixel_vs);
    save_bmp("lab7_vram_sim.bmp");
`endif
    $finish();
end
endmodule	

    
//     initial begin: TEST_VECTORS
//        arstn = 0; //reset IP
//        repeat (4) @(posedge aclk);
//        arstn <= 1;
        
//        //remember AXI addresses are BYTE addresses!
//        //This writes something into the Control Register so that we're not simulating a black screen
//        repeat (4) @(posedge aclk) axi_write((600*4), 32'h001F6000); //write control reg to set foreground and background
        
//        //Write into every one of the 600 VRAM registers, note that this is different than what the driver C code does
//        //because the testbench axi_write task only generates aligned (full 32-bit) AXI writes (e.g. write_strb is always F)
//        //The C code on the MicroBlaze expects to be able to do byte and halfword (16-bit) writes, therefore if the
//        //simulation works but the checksum does not pass in the hardware, check handling of write_strb. 
//        for(i=0; i < 600; i++) begin 
//		  repeat (4) @(posedge aclk) axi_write(4*i, i);
//        end
        
//        //The following is the readback routine. It tests that your AXI IP is capable of reading back all 601
//        //VRAM registers via AXI (once you've properly filled in axi_read as above). Note that the verification
//        //of the readback results is automatic, it will throw an assertion if the readback result is not as expected        
//        for(i=0; i < 600; i++) begin 
//		  repeat (4) @(posedge aclk) axi_read(4*i, tb_read);
//		  axi_read_assert:assert (tb_read == i) else $error ("AXI readback mismatch at address %x. Expected: %x. Actual:%x.", i, i, tb_read);
//        end
        
//        repeat (4) @(posedge aclk) axi_read(600*4, tb_read);
//        $info ("Read back of control register: %x", tb_read);
        
//        //Make sure you've set the simulation settings to run to 'all', rather than the 1000ns default
		
//		//Simulate until VS goes low (indicating a new frame) and write the results
//		`ifdef SIM_VIDEO
//		wait (~pixel_vs);
//		save_bmp ("lab7_1_sim.bmp");
//		`endif
//		$finish();
//	end


	