//////////////////////////////////////////////////////////////////////////////////
// Company: Ridotech
// Engineer: Juan Manuel Rico
//
// Create Date: 09:20:38 30/07/2018
// Module Name: demux_actors
// Description: Demultiplexor for actors in the game.
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created.
//
// Additional Comments:
//
//-----------------------------------------------------------------------------
//-- GPL license
//-----------------------------------------------------------------------------

module demux_actors
(
    input wire [11:0] position_0, input wire [7:0] sprite_0,
    input wire [11:0] position_1, input wire [7:0] sprite_1,
    input wire  [2:0] select,
    output reg [11:0] position_out, output reg [7:0] sprite_out
);

always @(*)
begin
    case (select)
        0:
            begin
                position_out <= position_0;
                sprite_out <= sprite_0;
            end

        1:
            begin
                position_out <= position_1;
                sprite_out <= sprite_1;
            end

        default:
            begin
                position_out <= position_0;
                sprite_out <= sprite_0;
            end
    endcase
end

endmodule