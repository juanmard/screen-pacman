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
    input  wire       ready,
    input  wire       serial_recive,
    output reg        start,
    output reg  [7:0] serial_out
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

reg descargando_mapa;

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
            NUEVO_SPRITE      = 6'b011001,
            INIT_ENVIAR       = 6'b011010,
            ENVIAR_SERIAL     = 6'b011011,
            WAIT_SERIAL       = 6'b011100,
            NEW_SPRITE_MAP    = 6'b011101,
            ENVIAR_FLINEA     = 6'b011110,
            WAIT_0            = 6'b100000;

reg [5:0] state, next_state;

parameter MAXFRAMES = 10;

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
reg [7:0] sprite_act, sprite_ant, sprite_temp;

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
    descargando_mapa <= 0;

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
    xcursor_next <= 10;
    ycursor_next <= 10;
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
always @(posedge contframe[2])
begin
    // Blink the sprite.
    blink <= ~blink;

    // --- Pacman update ---
    // External control.
    if (left)
    begin
//        xpacman <= xpacman - 1;
        xcursor_next <= xcursor_next - 1;
        orientation <= LEFT;
        //mute <= 1'b0;
        //sound <= ~sound;
    end
    
    if (right)
    begin
//        xpacman <= xpacman + 1;
        xcursor_next <= xcursor_next + 1;
        orientation <= RIGHT;
        //mute <= 1'b0;
        //sound <= ~sound;
    end

    if (up)
    begin
//        ypacman <= ypacman - 1;
        ycursor_next <= ycursor_next - 1;
        orientation <= UP;
        //sprite_act <= {sprite_act[7:5],sprite_act[4:0]+1'b1};
        //mute <= 1'b1;
    end
    
    if (down)
    begin
//        ypacman <= ypacman + 1;
        ycursor_next <= ycursor_next + 1;
        orientation <= DOWN;
        //sprite_act <= {sprite_act[7:5]+1'b1,sprite_act[4:0]};
    end

    if (xpacman < 0)  xpacman <= 39; 
    if (xpacman > 39) xpacman <= 0; 
    if (ypacman < 0)  ypacman <= 29; 
    if (ypacman > 29) ypacman <= 0; 

    // O según las variables externas al pulsar un botón, por ejemplo.
    // Si pulsamos el botón 1 modificamos el bitmap del 'sprite'.
    if (btn1)
    begin
        sprite_temp <= {sprite_act[7:5], sprite_act[4:0]+1'b1};
//        next_state <= BLINK;
    end

    // Si pulsamos el botón 2 modificamos la orientación del 'sprite'.
    if (btn2)
    begin
        sprite_temp <= {sprite_act[7:5]+1'b1,sprite_act[4:0]};
//        next_state <= BLINK;
    end

    /*
    if (btn1 && btn2 && ~descargando_mapa)
    begin
        descargando_mapa <= 1;
    end

    if (state == WAIT)
    begin
        descargando_mapa <= 0;
    end
*/

    // Ghost update.
    //ghost_orientation <= ~ghost_orientation;
    
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
                            // Se desactiva la actualización del sprite.
                            update <= 0;
                            if ((xcursor != xcursor_next) || (ycursor != ycursor_next))
                            begin
                                next_state <= MOVER_CURSOR;
                            end
                            else
                                next_state <= BLINK;

                            // Se ha girado o cambiado el bitmap del sprite. Actualizarlo.
                            if (btn1 || btn2)
                            begin
                                sprite_act <= sprite_temp;
                                next_state <= BLINK;
                            end

                            // Descargar el mapa por el puerto serie. 
                            if (btn1 && btn2) // && estado == EDIT)
                            begin
                                next_state <= INIT_ENVIAR;
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
                            update <= 0;
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
                                sprite_act <= read_sprite;
                                if (descargando_mapa)
                                    next_state <= ENVIAR_SERIAL;
                                else
                                    next_state <= REPONER_SPRITE;
                            end
                        end
        // Se repone el sprite por donde ha pasado el cursor.
        REPONER_SPRITE:
                        begin
                            update <= 1;
                            posx <= xcursor;
                            posy <= ycursor;
                            sprite <= sprite_ant;
                            next_state <= POSICIONAR_CURSOR;
                        end
        // Se actualiza la posición del cursor.
        POSICIONAR_CURSOR:
                        begin
                            update <= 0;
                            xcursor <= xcursor_next;
                            ycursor <= ycursor_next;
                            next_state <= NUEVO_SPRITE;
                        end
        // Se actualiza el nuevo sprite con la posición nueva del cursor.
        NUEVO_SPRITE:   begin
                            update <= 1;
                            posx <= xcursor;
                            posy <= ycursor;
                            sprite <= sprite_act;
                            next_state <= WAIT;
                        end
        // Se inicia las variables para descargar los sprites por el puerto serie.
        INIT_ENVIAR:    begin
                            descargando_mapa <= 1;
                            update <= 0;
                            posx <= 0;
                            posy <= 0;
                            next_state <= READ_SPRITE;
                        end
        // Se envía el sprite leído por el puerto serie.
        ENVIAR_SERIAL:  begin
                            start <= 1;
                            serial_out <= sprite_act;
                            next_state <= WAIT_SERIAL;
                        end
        ENVIAR_FLINEA:  begin
                            start <= 1;
                            serial_out <= 8'd13;
                            next_state <= WAIT_SERIAL;
                        end
        WAIT_SERIAL:    begin
                            if (serial_recive)
                            begin
                                start <= 0;
                                next_state <= NEW_SPRITE_MAP;
                            end
                            else
                                next_state <= WAIT_SERIAL;
                        end
        // Se actualiza la posición de lectura y se vuelve a leer.
        NEW_SPRITE_MAP:     begin
                                update <= 0;
                                next_state <= ENVIAR_SERIAL;
                                posx <= posx + 1;
                                if (posx == 40)
                                begin
                                    posx <= 0;
                                    posy <= posy + 1;
                                    next_state <= ENVIAR_FLINEA;
                                    if (posy == 30)
                                    begin
                                        descargando_mapa <= 0;
                                        next_state <= WAIT;
                                    end
                                end
                            end

        ESTADO_1:  begin
                   update <= 1;
                   posx <= xpacman;
                   posy <= ypacman + 1;
                   sprite <= 4;
                   next_state <= ESTADO_4;
                   end

        ESTADO_2:  begin
                   update <= 1;
                   posx <= xpacman;
                   posy <= ypacman + 1;
                   sprite <= 4;
                   next_state <= ESTADO_4;
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