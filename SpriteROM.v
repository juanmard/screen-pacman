//////////////////////////////////////////////////////////////////////////////////
// Company: Ridotech
// Engineer: Juan Manuel Rico
//
// Create Date: 09:30:38 19/09/2017
// Module Name: SpriteROM
// Description: ROM for storing the sprites of the game
//              4 sprites of 16x16 pixel and 4 bits per pixel.
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created 1BRAM
//
// Additional Comments:
//
//-----------------------------------------------------------------------------
//-- GPL license
//-----------------------------------------------------------------------------

module SpriteROM
#(
    parameter FILE = "pacman.list"
)
(
    input  wire        clk,      // System clock.
    input  wire [11:0] addr,     // Address in ROM.
    output reg  [3:0]  pixel     // Pixel in address.
);

    // Width and height image. Both power of 2 
    parameter width = 16; 
    parameter height = 16;
    parameter nsprites = 16;

    // Memory
    reg  [3:0] bmps [nsprites*width*height-1:0];

    // Load file in memory.
    initial
    begin
       if (FILE) $readmemh(FILE, bmps);
    end

    // Read memory.
    always @(posedge clk)
    begin
        pixel <= bmps[addr];
    end

endmodule
