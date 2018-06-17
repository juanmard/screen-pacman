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
    input  wire       ready
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
            BLINK       = 6'b000011, 
            READ_SPRITE = 6'b000110, 
            WAIT_READ   = 6'b000111, 
            RMV_PAC     = 6'b000010, 
            RMV_GHOST   = 6'b000100, 
            UPDT_PACMAN = 6'b001000, 
            UPDT_GHOST  = 6'b010000, 
            ESTADO_1    = 6'b010000,
            ESTADO_2    = 6'b010001,
            ESTADO_3    = 6'b010010,
            ESTADO_4    = 6'b010011,
            MOVER_CURSOR      = 6'b010110,
            REPONER_SPRITE    = 6'b010111,
            POSICIONAR_CURSOR = 6'b011000,
            WAIT_0      = 6'b100000;

reg [5:0] state, next_state;

parameter MAXFRAMES = 20;

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
reg [2:0] orientation;
reg close;

// Ghost properties.
reg [1:0] ghost_orientation;

// Test registes.
reg [7:0] sprite_act, sprite_ant;

// Cursor properties.
reg blink;
reg [5:0] xcursor, xcursor_next;
reg [5:0] ycursor, ycursor_next;

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
    orientation <= RIGHT;
    
    //Initial Ghost.
    ghost_orientation <= RIGHT;
    
    // Initial others.
    sprite_act <= 8'd7;
    blink <= 0;
    xcursor <= 10;
    ycursor <= 10;
end
    
// 25-frames counter. 
always @(posedge px_clk)  
begin
    if (rst)
        contframe <= 0;
    else
        if (endframe) 
            contframe <= (contframe == MAXFRAMES) ? 0 : contframe + 1;
end

// Update location and pacman state only once every 25 frames 
// (for different refresh frequencies another value could be preferable)
always @(posedge contframe[3])
begin

    // --- Pacman update ---
    // External control.
    if (left)
    begin
        xpacman <= xpacman - 1;
        xcursor_next <= xcursor_next - 1;
        orientation <= LEFT;
        //mute <= 1'b0;
        //sound <= ~sound;
    end
    
    if (right)
    begin
        xpacman <= xpacman + 1;
        xcursor_next <= xcursor_next + 1;
        orientation <= RIGHT;
        //mute <= 1'b0;
        //sound <= ~sound;
    end

    if (up)
    begin
        ypacman <= ypacman - 1;
        ycursor_next <= ycursor_next - 1;
        orientation <= UP;
        //sprite_act <= {sprite_act[7:5],sprite_act[4:0]+1'b1};
        //mute <= 1'b1;
    end
    
    if (down)
    begin
        ypacman <= ypacman + 1;
        ycursor_next <= ycursor_next + 1;
        orientation <= DOWN;
        //sprite_act <= {sprite_act[7:5]+1'b1,sprite_act[4:0]};
    end

    if (btn1)
    begin
        //sprite_act <= {sprite_act[7:5], sprite_act[4:0]+1'b1};
    end

    if (btn2)
    begin
        //sprite_act <= {sprite_act[7:5]+1'b1,sprite_act[4:0]};
    end

    if (xpacman < 0)  xpacman <= 39; 
    if (xpacman > 39) xpacman <= 0; 
    if (ypacman < 0)  ypacman <= 29; 
    if (ypacman > 29) ypacman <= 0; 

    blink <= ~blink;

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
            if (contframe == MAXFRAMES)
                state <= next_state;
            else
                state <= WAIT;
        end
end

// State change, so you need update and doing something.
always @(state) begin
    case (state)
        WAIT:
                        begin 
                            update <= 0;
                            // Se cambia de estado según las variables internas.
                            if ((xcursor != xcursor_next) || (ycursor != ycursor_next))
                                next_state <= MOVER_CURSOR;
                            else
                                next_state <= BLINK;

                            // O según las variables externas al pulsar un botón, por ejemplo.
                            if (btn1)
                            begin
                                next_state <= READ_SPRITE;
                                //sprite_act <= {sprite_act[7:5], sprite_act[4:0]+1'b1};
                            end
                            if (btn2)
                            begin
                                next_state <= BLINK;
                                //sprite_act <= {sprite_act[7:5]+1'b1,sprite_act[4:0]};
                            end
                        end
        BLINK:
                        begin
                        // Hay que leer el sprite de la posición actual y pasarlo
                        // al sprite_act para hacerlo parpadear. (si es uno vacío habría que cambiarlo por uno lleno).
                        // ¿añadir a la información del sprite el inverso de los pixels?.
                        update <= 1;
                        posx <= xcursor;
                        posy <= ycursor;
                        sprite <= blink ? ((sprite_act == 0) ? 8 : sprite_act) : 0;
                        next_state <= WAIT;
                        end
        MOVER_CURSOR:
                        begin
                            // Se guarda el sprite actual.
                            sprite_ant <= sprite_act;

                            // Leer en el mapa del juego la futura posición del cursor.
                            posx <= xcursor_next;
                            posy <= ycursor_next;
                            
                            // Realizar la lectura del 'sprite' en el mapa.
                            next_state <= READ_SPRITE;
                        end

        READ_SPRITE:
                        begin
                            // Se activa la petición de lectura del mapa del juego.
                            // La petición se realiza sobre la posición dada por 'posx' y 'posy'.
                            // Se pasa a un nuevo estado que espera que la lectura sea efectiva.
                            get <= 1;
                            next_state <= WAIT_READ;
                        end

        WAIT_READ:
                        begin
                            // Si se recibe la señal de 'ready' del mapa del juego es porque
                            // ya tenemos en la entrada 'read_sprite' el valor requerido.
                            // Se guarda el valor del 'sprite' y se retira la petición 'get'.
                            //
                            // NOTA: Esta petición 'get' puede crear problemas en la visualización.
                            // La visualización debe tener prioridad de lectura de la RAM del mapa
                            // luego se debe retirar la petición si la señal 'busy' del mapa de juego
                            // se activa.
                            // Un ejemplo podría ser este:
                            //
                            // if (busy)
                            // begin
                            //  get <= 0;
                            //  next_state <= READ_SPRITE;
                            // end
                            //
                            if (ready)
                            begin
                                get <= 0;
                                update <= 0;
                                sprite_act <= read_sprite;
                                next_state <= REPONER_SPRITE;
                            end
                            else
                                next_state <= WAIT_READ;
                        end

        REPONER_SPRITE:
                        begin
                            update <= 1;
                            posx <= xcursor;
                            posy <= ycursor;
                            sprite <= sprite_ant;
                            next_state <= POSICIONAR_CURSOR;
                        end

        POSICIONAR_CURSOR:
                        begin
                            update <= 0;
                            xcursor <= xcursor_next;
                            ycursor <= ycursor_next;
                            next_state <= WAIT;
                        end
                        
        ESTADO_1:  begin  // WRITE_LAST_SPRITE
                   update <= 1;
                   posx <= xcursor;
                   posy <= ycursor;
                   sprite <= sprite_ant;
                   next_state <= ESTADO_2;
                   end

        ESTADO_2:  begin  // WRITE_NEW_SPRITE
                   update <= 1;
                   posx <= xcursor;
                   posy <= ycursor;
                   sprite <= sprite_ant;
                   next_state <= BLINK;
                   end

        ESTADO_3:  begin
                   update <= 1;
                   posx <= xpacman;
                   posy <= ypacman + 1;
                   sprite <= 4;
                   next_state <= ESTADO_4;
                   end

        ESTADO_4:  begin
                   update <= 0;
                   next_state <= BLINK;
                   end

        default:        begin 
                        update <= 0;
                        end
    endcase
end

endmodule