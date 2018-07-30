//////////////////////////////////////////////////////////////////////////////////
// Company: Ridotech
// Engineer: Juan Manuel Rico
//
// Create Date: 09:20:38 29/07/2018
// Module Name: pacman
// Description: Pacman module for game.
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

module pacman
(
    input wire        clk,            // System clock.
    input wire        reset,          // Reset.
    input wire        frame,          // New frame.
    input wire        activate,       // Activate module signal.
    input wire [7:0]  control,        // External control. {not_used, not_used, left, right, up, down, btn1, btn2}
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
/*signed*/ reg [6:0] xpacman, x_ant;
/*signed*/ reg [6:0] ypacman, y_ant;

// Cursor properties.
reg blink;

// Initial properties.
initial
begin
    write <= 1'b1;
    sprite_write <= 8'd4;
    state <= WAIT;
    contframe <= 0;

    // Initial Pacman.
    xpacman <= 6;
    ypacman <= 6;
    orientation <= RIGHT;
    blink <= 0;
end

// Control assigment.
wire left, right, up, down, btn1, btn2;
assign left  = control[5];
assign right = control[4];
assign up    = control[3];
assign down  = control[2];
assign btn1  = control[1];
assign btn2  = control[0];

// 25-frames counter. 
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
reg update = 0;

always @(posedge update)
begin
    // Pacman blink.
    blink <= ~blink;

    // --- Pacman update ---
    // External control.
    x_ant <= xpacman;
    y_ant <= ypacman;
    if (left)
    begin
        xpacman = xpacman - 1;
        orientation <= LEFT;
        //mute <= 1'b0;
        //sound <= ~sound;
    end

    if (right)
    begin
        xpacman = xpacman + 1;
        orientation <= RIGHT;
        //mute <= 1'b0;
        //sound <= ~sound;
    end

    if (up)
    begin
        ypacman = ypacman - 1;
        orientation <= UP;
    end
    
    if (down)
    begin
        ypacman = ypacman + 1;
        orientation <= DOWN;
    end

    if (xpacman < 0)  xpacman <= 39; 
    if (xpacman > 39) xpacman <= 0; 
    if (ypacman < 0)  ypacman <= 29; 
    if (ypacman > 29) ypacman <= 0; 
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
                        position <= {xpacman[5:0],ypacman[5:0]};
                        sprite_write <= blink ? {orientation, 5'd2} : 3;
                        next_state <= WAIT;
                        if ((xpacman != x_ant) || (ypacman != y_ant))
                            next_state <= WAIT_2;
                        else
                            next_state <= WAIT;
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