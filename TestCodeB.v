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
    input  wire left,       // Control del juego.
    input  wire right,      // TODO: Sustituir por un bus de 6 bits.
    input  wire up,         //
    input  wire down,       //
    input  wire btn1,       //
    input  wire btn2,       //
    input  wire [7:0] read_sprite,  // Sprite recibido del mapa.
    output reg  [7:0] sprite,       // Sprite a enviar al mapa.
    output reg        update,       // Señal para enviar el sprite al mapa.
    output reg  [5:0] posx,         // Posición X del mapa donde colocar el sprite.
    output reg  [5:0] posy,         // Posición Y del mapa donde colocar el sprite.
    output reg        get,          // Señal para tomar el sprite del mapa en la posición "posx" y "posy".
    output reg        mute,         // Señal para silenciar el sonido.
    output reg  [1:0] sound,        // Código del sonido a reproducir.
    input  wire       ready,        // Señal que indica que el sprite pedido al mapa se encuentra disponible.
    input  wire       serial_recive, // Señal que se ha recibido el byte enviado por el puerto serie.
    output reg        start,         // Señal para indicar el incio de descarga del código de un sprite del mapa por el puerto serie.
    output reg  [7:0] serial_out     // Código del sprite a enviar por el puerto serie.
);

// Dinamyc game control properties.
parameter MAXFRAMES = 20;
reg [5:0] contframe;          // Frames counter.

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
signed reg [6:0] xpacman, x_ant;
signed reg [6:0] ypacman, y_ant;

// Cursor properties.
reg blink;

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
    orientation <= RIGHT;
    blink <= 0;
end
    
// 25-frames counter. 
always @(posedge endframe)
begin
    if (rst)
        contframe <= 0;
    else
        begin
            state <= next_state;
            contframe <= contframe + 1;
            if (contframe == MAXFRAMES)
                begin
                    contframe <= 0;
                    update_clk <= 1'b1;
                end
            else
                begin
                    update_clk <= 1'b0;
                end
        end
end

// Update location and pacman state only once every 10 frames 
// (for different refresh frequencies another value could be preferable)
reg update_clk = 0;

always @(posedge update_clk)
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
                            update <= 0;
                            get <= 0;
                            next_state <= BLINK;
                        end
        BLINK:
                        begin
                        // Hay que leer el sprite de la posición actual y pasarlo
                        // al sprite_act para hacerlo parpadear. (si es uno vacío habría que cambiarlo por uno lleno).
                        // ¿añadir a la información del sprite el inverso de los pixels?.
                        update <= 1;
                        posx <= xpacman;
                        posy <= ypacman;
                        sprite <= blink ? {orientation, 5'd2} : 3;
                        if ((xpacman != x_ant) || (ypacman != y_ant))
                            next_state <= WAIT_2;
                        else
                            next_state <= WAIT;
                        end
        WAIT_2:
                        begin
                            // Se desactiva la actualización del sprite.
                            update <= 0;
                            get <= 0;
                            next_state <= MOVE;
                        end
        MOVE:
                        begin
                        // Hay que leer el sprite de la posición actual y pasarlo
                        // al sprite_act para hacerlo parpadear. (si es uno vacío habría que cambiarlo por uno lleno).
                        // ¿añadir a la información del sprite el inverso de los pixels?.
                        update <= 1;
                        posx <= x_ant;
                        posy <= y_ant;
                        sprite <= 0;
                        next_state <= WAIT;
                        end

        default:        begin 
                        update <= 0;
                        end
    endcase
end

endmodule