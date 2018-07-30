//////////////////////////////////////////////////////////////////////////////////
// Company: Ridotech
// Engineer: Juan Manuel Rico
//
// Create Date: 09:20:38 29/07/2018
// Module Name: blinky
// Description: Blinky module for game.
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

module blinky
(
    input wire        clk,            // System clock.
    input wire        reset,          // Reset.
    input wire        frame,          // New frame.
    input wire        activate,       // Activate module signal.
    output reg [11:0] position,       // Position in map. {xposition[5:0], yposition[5:0]}.
    input wire [7:0]  sprite_read,    // External sprite code readed from map in position.
    input wire        ready,          // Ready signal from map. Readed sprite code ready.
    output reg [7:0]  sprite_write,   // Sprite code to write in map.
    output reg        write           // We want write code sprite (1'b1), or read (1'b0) code sprite from map.
);

// Frames control.
parameter MAXFRAMES = 25;
reg [5:0] contframe;

// State codes for everyone object.
parameter   WAIT        = 6'b000001,
            BLINK       = 6'b000011,
            WAIT_2      = 6'b000100,
            MOVE        = 6'b001000;
reg [5:0] state, next_state;

// Orientation codes.
parameter   LEFT         = 3'b011,
            RIGHT        = 3'b000,
            UP           = 3'b001,
            DOWN         = 3'b010,
            LEFT_MIRROR  = 3'b111,
            RIGHT_MIRROR = 3'b100,
            UP_MIRROR    = 3'b101,
            DOWN_MIRROR  = 3'b110;
reg [2:0] orientation;

// Pacman properties.
/*signed*/ reg [6:0] xblinky, x_ant;
/*signed*/ reg [6:0] yblinky, y_ant;

// Cursor properties.
reg blink;

// Initial properties.
initial
begin
    write <= 1'b1;
    sprite_write <= 8'd1;
    state <= WAIT;
    contframe <= 0;

    // Initial Blinky position.
    xblinky <= 12;
    yblinky <= 4;
    orientation <= RIGHT;
    blink <= 0;
end

// 25-frames counter. 
// TODO: Separate in a new module, general for al objects.
always @(posedge frame)
begin
    if (reset)
        contframe <= 0;
    else
        begin
            state <= next_state;
            contframe <= contframe + 1;
            if (contframe == MAXFRAMES)
                begin
                    contframe <= 0;
                    update <= 1'b1;
                end
            else
                begin
                    update <= 1'b0;
                end
        end
end

// Update location and pacman state only once every 10 frames 
// (for different refresh frequencies another value could be preferable)
// TODO: This update maybe like a comun signal for all objects.
reg update = 0;

always @(posedge update)
begin
    // Blinky.
    blink <= ~blink;

    x_ant = xblinky;
    y_ant = yblinky;
    if (orientation == RIGHT) xblinky = xblinky + 1;
    if (orientation == LEFT) xblinky = xblinky - 1;
    if (xblinky > 28) orientation <= LEFT;
    if (xblinky < 8) orientation <= RIGHT;
end

// State change, so you need update and doing something.
always @(state) begin
    case (state)
        WAIT:
                        begin
                            // Se desactiva la actualización del sprite.
                            write <= 0;
                            next_state <= BLINK;
                        end
        BLINK:
                        begin
                        write <= 1'b1;
                        position <= {xblinky[5:0],yblinky[5:0]};
                        //orientation <= blink ? LEFT : RIGHT;
                        sprite_write <= {orientation, 5'd1};
                        next_state <= WAIT_2;
                        end

                        WAIT_2:
                        begin
                            // Se desactiva la actualización del sprite.
                            write <= 1'b0;
                            next_state <= MOVE;
                        end
        MOVE:
                        begin
                        write <= 1'b1;
                        position <= {x_ant[5:0],y_ant[5:0]};
                        sprite_write <= 0;
                        next_state <= WAIT;
                        end

        default:        begin 
                        write <= 1'b0;
                        end
    endcase
end

endmodule