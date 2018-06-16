//////////////////////////////////////////////////////////////////////////////////
// Company: Ridotech
// Engineer: Juan Manuel Rico
//
// Create Date: 09:30:38 19/09/2017
// Module Name: TestCode
// Description: Code for test.
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

module TestCodeB
(
    input  wire px_clk,
    input  wire endframe,
    input  wire rst,
    input  wire left,
    input  wire right,
    input  wire up,
    input  wire down,
    input  wire btn1,
    input  wire btn2,
    input  wire [7:0] read_sprite,
    output reg  [7:0] sprite,
    output reg        update,
    output reg  [5:0] posx,
    output reg  [5:0] posy,
    output reg        get,
    output reg        mute,
    output reg  [1:0] sound,
    input  wire       busy
);
// Output registers.
//reg [7:0] sprite;
//reg [5:0] posx;
//reg [5:0] posy;
//reg get;

// Sound registers.
//reg mute;
//reg [1:0] sound = 2'b01;

// Dinamyc game control properties.
reg [4:0] contframe;        // Frames counter.
//reg update;                 // Update table game.

// State codes for everyone object.
parameter   WAIT        = 6'b000001, 
            BLINKING    = 6'b000011, 
            READ_SPRITE = 6'b000110, 
            WAIT_READ   = 6'b000111, 
            RMV_PAC     = 6'b000010, 
            RMV_GHOST   = 6'b000100, 
            UPDT_PACMAN = 6'b001000, 
            UPDT_GHOST  = 6'b010000, 
            WAIT_0      = 6'b100000;

reg [5:0] state, next_state;

// Orientation codes.
parameter   LEFT         = 3'b011,
            RIGHT        = 3'b000,
            UP           = 3'b010,
            DOWN         = 3'b001,
            LEFT_MIRROR  = 3'b111,
            RIGHT_MIRROR = 3'b100,
            UP_MIRROR    = 3'b110,
            DOWN_MIRROR  = 3'b101;

// Pacman properties.
reg [5:0] xpacman;
reg [5:0] ypacman;
reg close;
reg [2:0] orientation;

// Ghost properties.
reg [1:0] ghost_orientation;

// Test registes.
reg [7:0] temp_sprite;


// Initial properties.
initial
begin
    contframe <= 0;
    update <= 0;
    get <= 0;
    state <= WAIT;
    
    // Initial Pacman.
    xpacman <= 6;
    ypacman <= 6;
    close <= 0;
    orientation <= LEFT;
    
    //Initial Ghost.
    ghost_orientation <= LEFT;
    
    // Initial others.
    temp_sprite <= 8'd7;
end
    
// 25-frames counter. 
always @(posedge px_clk)  
begin
    if (rst)
        contframe <= 0;
    else
        if (endframe) 
            contframe <= (contframe == 20) ? 0 : contframe + 1;
end

/*
// Something to read?    
always @(posedge endframe)
begin
    if (ready)
    begin
        temp_sprite <= read_sprite;
        get <= 1'b0;
    end
end
*/

// Update location and pacman state only once every 25 frames 
// (for different refresh frequencies another value could be preferable)
always @(posedge contframe[3])
begin

    // --- Pacman update ---
    // External control.
    if (left)
    begin
        xpacman <= xpacman - 1;
        orientation <= LEFT;
        //mute <= 1'b0;
        //sound <= ~sound;
    end
    
    if (right)
    begin
        xpacman <= xpacman + 1;
        orientation <= RIGHT;
        //mute <= 1'b0;
        //sound <= ~sound;
    end

    if (up)
    begin
        ypacman <= ypacman - 1;
        orientation <= UP;
        //temp_sprite <= {temp_sprite[7:5],temp_sprite[4:0]+1'b1};
        //mute <= 1'b1;
    end
    
    if (down)
    begin
        ypacman <= ypacman + 1;
        orientation <= DOWN;
        //temp_sprite <= {temp_sprite[7:5]+1'b1,temp_sprite[4:0]};
    end

    if (btn1)
    begin
        temp_sprite <= {temp_sprite[7:5], temp_sprite[4:0]+1'b1};
        // next_state <= EDIT;
    end

    if (btn2)
    begin
        temp_sprite <= {temp_sprite[7:5]+1'b1,temp_sprite[4:0]};
        next_state <= BLINKING;
    end

    if (xpacman < 0)  xpacman <= 39; 
    if (xpacman > 39) xpacman <= 0; 
    if (ypacman < 0)  ypacman <= 29; 
    if (ypacman > 29) ypacman <= 0; 

    close <= ~close;

    // Ghost update.
    ghost_orientation <= ~ghost_orientation;
    
    // Point update.
    //point_orientation <= ~point_orientation;
    
end

/* FSM implementation */
// Update state.
always @(posedge px_clk)
begin
    if (rst)
        begin
            state <= WAIT;
        end
    else
        begin
            if (contframe == 20)
                state <= next_state;
            else
                state <= WAIT;
        end
end

// State change, so you need update and doing something.
always @(state) begin
    case (state)
        WAIT:           begin 
                        update <= 0;
                        end
                        
//        GET_SPR:        begin
//                        get <= 1'b1;
//                        end

        BLINKING:
                        begin
                        // Hay que leer el sprite de la posición actual y pasarlo
                        // al temp_sprite para hacerlo parpadear. (si es uno vacío habría que cambiarlo por uno lleno).
                        // ¿añadir a la información del sprite el inverso de los pixels?.
                        update <= 1;
                        posx <= xpacman;
                        posy <= ypacman;
                        sprite <= close ? temp_sprite : 0;
//                        sprite <= close ? 3 : 0;
                        end
/*
        READ_SPRITE:    begin
                            if (busy)
                                begin
                                get <= 0;
                                next_state <= READ_SPRITE;
                                end
                            else
                                begin
                                get <= 1;
                                posx <= xpacman;
                                posy <= ypacman;
                                update <= 1;
                                sprite <= close ? temp_sprite : 0;
                                next_state <= WAIT;
                                end
                        end
*/
/*
        WAIT_READ:
                        begin
                            if (ready)
                            begin
                                next_state <= BLINKING;
                            end
                        end
*/
/*
        RMV_GHOST:      begin
                        update = 1;
                        posx = xpacman - 2; 
//                        temp_sprite = {temp_sprite[7:5]+1'b1,temp_sprite[4:0]};
                        sprite = temp_sprite;
                        end
*/
/*

        UPDT_PACMAN:    begin
                        update <= 1;
                        posx <= xpacman;
                        posy <= ypacman;
                        sprite <= temp_sprite;
*/
/*
                        update = 1;
                        posx = xpacman;
                        posy = ypacman;
                        if (close == 0)
                            sprite = {orientation, 5'd3}; // open
                        else
                            sprite = {orientation, 5'd2}; // close    
                            end
*/
/*
        UPDT_GHOST:     begin
                        //update = 1;
                        //posx = xpacman - 3; 
                        //posy = ypacman;
//                        sprite = {ghost_orientation,6'd1};
                        //sprite = temp_sprite;
                        end 
*/
        WAIT_0:         begin
                        update <= 0;
                        end
        
        default:        begin 
                        update <= 0;
                        end
    endcase
end

endmodule