{
  "version": "1.1",
  "package": {
    "name": "PxsSprite",
    "version": "1.0",
    "description": "Draws a sprite in a position on the screen with orientation.",
    "author": "Juan Manuel Rico",
    "image": ""
  },
  "design": {
    "board": "TinyFPGA-B2",
    "graph": {
      "blocks": [
        {
          "id": "42825077-fafc-4e85-ab47-0c3052e53228",
          "type": "basic.input",
          "data": {
            "name": "px_clk",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -184,
            "y": 0
          }
        },
        {
          "id": "34ef8db8-afa3-45e5-8f03-2f1db5f06301",
          "type": "basic.input",
          "data": {
            "name": "RGBStr_i",
            "range": "[25:0]",
            "pins": [
              {
                "index": "25",
                "name": "",
                "value": "0"
              },
              {
                "index": "24",
                "name": "",
                "value": "0"
              },
              {
                "index": "23",
                "name": "",
                "value": "0"
              },
              {
                "index": "22",
                "name": "",
                "value": "0"
              },
              {
                "index": "21",
                "name": "",
                "value": "0"
              },
              {
                "index": "20",
                "name": "",
                "value": "0"
              },
              {
                "index": "19",
                "name": "",
                "value": "0"
              },
              {
                "index": "18",
                "name": "",
                "value": "0"
              },
              {
                "index": "17",
                "name": "",
                "value": "0"
              },
              {
                "index": "16",
                "name": "",
                "value": "0"
              },
              {
                "index": "15",
                "name": "",
                "value": "0"
              },
              {
                "index": "14",
                "name": "",
                "value": "0"
              },
              {
                "index": "13",
                "name": "",
                "value": "0"
              },
              {
                "index": "12",
                "name": "",
                "value": "0"
              },
              {
                "index": "11",
                "name": "",
                "value": "0"
              },
              {
                "index": "10",
                "name": "",
                "value": "0"
              },
              {
                "index": "9",
                "name": "",
                "value": "0"
              },
              {
                "index": "8",
                "name": "",
                "value": "0"
              },
              {
                "index": "7",
                "name": "",
                "value": "0"
              },
              {
                "index": "6",
                "name": "",
                "value": "0"
              },
              {
                "index": "5",
                "name": "",
                "value": "0"
              },
              {
                "index": "4",
                "name": "",
                "value": "0"
              },
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -184,
            "y": 80
          }
        },
        {
          "id": "eeb7f72c-5a73-4347-9c78-1a37d276caa2",
          "type": "basic.output",
          "data": {
            "name": "RGBStr_o",
            "range": "[25:0]",
            "pins": [
              {
                "index": "25",
                "name": "",
                "value": "0"
              },
              {
                "index": "24",
                "name": "",
                "value": "0"
              },
              {
                "index": "23",
                "name": "",
                "value": "0"
              },
              {
                "index": "22",
                "name": "",
                "value": "0"
              },
              {
                "index": "21",
                "name": "",
                "value": "0"
              },
              {
                "index": "20",
                "name": "",
                "value": "0"
              },
              {
                "index": "19",
                "name": "",
                "value": "0"
              },
              {
                "index": "18",
                "name": "",
                "value": "0"
              },
              {
                "index": "17",
                "name": "",
                "value": "0"
              },
              {
                "index": "16",
                "name": "",
                "value": "0"
              },
              {
                "index": "15",
                "name": "",
                "value": "0"
              },
              {
                "index": "14",
                "name": "",
                "value": "0"
              },
              {
                "index": "13",
                "name": "",
                "value": "0"
              },
              {
                "index": "12",
                "name": "",
                "value": "0"
              },
              {
                "index": "11",
                "name": "",
                "value": "0"
              },
              {
                "index": "10",
                "name": "",
                "value": "0"
              },
              {
                "index": "9",
                "name": "",
                "value": "0"
              },
              {
                "index": "8",
                "name": "",
                "value": "0"
              },
              {
                "index": "7",
                "name": "",
                "value": "0"
              },
              {
                "index": "6",
                "name": "",
                "value": "0"
              },
              {
                "index": "5",
                "name": "",
                "value": "0"
              },
              {
                "index": "4",
                "name": "",
                "value": "0"
              },
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 2280,
            "y": 96
          }
        },
        {
          "id": "2a3a712b-f811-4d1f-800c-8bdffc0f012a",
          "type": "basic.input",
          "data": {
            "name": "posx",
            "range": "[9:0]",
            "pins": [
              {
                "index": "9",
                "name": "",
                "value": "0"
              },
              {
                "index": "8",
                "name": "",
                "value": "0"
              },
              {
                "index": "7",
                "name": "",
                "value": "0"
              },
              {
                "index": "6",
                "name": "",
                "value": "0"
              },
              {
                "index": "5",
                "name": "",
                "value": "0"
              },
              {
                "index": "4",
                "name": "",
                "value": "0"
              },
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -192,
            "y": 336
          }
        },
        {
          "id": "35fb9102-3e67-4c7c-9a31-b4723e05d5bc",
          "type": "basic.input",
          "data": {
            "name": "posy",
            "range": "[9:0]",
            "pins": [
              {
                "index": "9",
                "name": "",
                "value": "0"
              },
              {
                "index": "8",
                "name": "",
                "value": "0"
              },
              {
                "index": "7",
                "name": "",
                "value": "0"
              },
              {
                "index": "6",
                "name": "",
                "value": "0"
              },
              {
                "index": "5",
                "name": "",
                "value": "0"
              },
              {
                "index": "4",
                "name": "",
                "value": "0"
              },
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -192,
            "y": 416
          }
        },
        {
          "id": "7a511261-4dfc-4d84-b0ac-745a854813d3",
          "type": "basic.input",
          "data": {
            "name": "sprite",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "",
                "value": "0"
              },
              {
                "index": "6",
                "name": "",
                "value": "0"
              },
              {
                "index": "5",
                "name": "",
                "value": "0"
              },
              {
                "index": "4",
                "name": "",
                "value": "0"
              },
              {
                "index": "3",
                "name": "",
                "value": "0"
              },
              {
                "index": "2",
                "name": "",
                "value": "0"
              },
              {
                "index": "1",
                "name": "",
                "value": "0"
              },
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": -192,
            "y": 504
          }
        },
        {
          "id": "4aefd809-340f-4adb-a379-ea494ea714f1",
          "type": "basic.code",
          "data": {
            "code": "`define RGB 25:23\t\t// Pixel RGB (1:1:1)\n`define Active 0:0 \t\t// ActiveVideo\n`define YC 12:3\t\t\t// Y Coordinate\n`define XC 22:13\t\t// X Coordinate\n\nlocalparam sprw = 16;  // Sprite width.\nlocalparam sprh = 16;  // Sprite height.\n\nreg [25:0] RGBStr_o;\n\nalways @(px_clk)\nbegin\n    RGBStr_o <= RGBStr_i;\n    if (RGBStr_i[`Active])\n    begin\n        RGBStr_o[`RGB] <= pixel[2:0];  // Only three pixels for color.\n    end\nend\n",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "px_clk"
                },
                {
                  "name": "pixel",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "RGBStr_i",
                  "range": "[25:0]",
                  "size": 26
                },
                {
                  "name": "posx",
                  "range": "[9:0]",
                  "size": 10
                },
                {
                  "name": "posy",
                  "range": "[9:0]",
                  "size": 10
                }
              ],
              "out": [
                {
                  "name": "RGBStr_o",
                  "range": "[25:0]",
                  "size": 26
                }
              ]
            }
          },
          "position": {
            "x": 1512,
            "y": -80
          },
          "size": {
            "width": 664,
            "height": 416
          }
        },
        {
          "id": "9a6d3cd2-42ee-42da-b7ba-c8e47f90b9f1",
          "type": "bd4ef003fb3387f61abe25d4d6f1d3ab04cf8bb2",
          "position": {
            "x": 952,
            "y": 16
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "63f722ea-ff22-44e8-b57b-80500581f240",
          "type": "basic.info",
          "data": {
            "info": "Stage 01: Se calcula dirección del sprite en la ROM.</br>\n<b>Nota:</b> No se aprovechan todos los sprites posibles. Tenemos 8 y con cuatro bits podríamos acceder a 16.",
            "readonly": true
          },
          "position": {
            "x": 136,
            "y": 584
          },
          "size": {
            "width": 552,
            "height": 136
          }
        },
        {
          "id": "7e140ad5-a955-4ee5-99bb-141dc0616c9b",
          "type": "basic.info",
          "data": {
            "info": "Stage 03: Se dibuja los píxeles en la posición indicada.\nNOTA: Puesto que la dirección se obtiene por composición de la x e y al ser las dimensiones del \"sprite\" una potencia de dos, la posición final debe ser también una posición potencia de dos.\n",
            "readonly": true
          },
          "position": {
            "x": 1640,
            "y": 368
          },
          "size": {
            "width": 392,
            "height": 80
          }
        },
        {
          "id": "f1881335-c2a3-40d6-8d56-c8a5bffd0107",
          "type": "basic.code",
          "data": {
            "code": "//@include TestCodeA.v\n\nTestCodeA\nTestCodeA_01\n(\n    px_clk,\n    RGBStr_i,\n    posx_i,\n    posy_i,\n    sprite,\n    addr,\n    RGBStr_o,\n    posx_o,\n    posy_o\n);",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "px_clk"
                },
                {
                  "name": "RGBStr_i",
                  "range": "[25:0]",
                  "size": 26
                },
                {
                  "name": "posx_i",
                  "range": "[9:0]",
                  "size": 10
                },
                {
                  "name": "posy_i",
                  "range": "[9:0]",
                  "size": 10
                },
                {
                  "name": "sprite",
                  "range": "[7:0]",
                  "size": 8
                }
              ],
              "out": [
                {
                  "name": "addr",
                  "range": "[10:0]",
                  "size": 11
                },
                {
                  "name": "RGBStr_o",
                  "range": "[25:0]",
                  "size": 26
                },
                {
                  "name": "posx_o",
                  "range": "[9:0]",
                  "size": 10
                },
                {
                  "name": "posy_o",
                  "range": "[9:0]",
                  "size": 10
                }
              ]
            }
          },
          "position": {
            "x": 152,
            "y": 192
          },
          "size": {
            "width": 320,
            "height": 344
          }
        },
        {
          "id": "75969b6b-3b58-49ef-b6c6-4a2952acf1c0",
          "type": "basic.code",
          "data": {
            "code": "reg [25:0] RGBStr_o;\nreg [9:0] posx_o;\nreg [9:0] posy_o;\n\nalways @(px_clk)\nbegin\n    RGBStr_o <= RGBStr_i;\n   // posx_o <= posx_i;\n//    posy_o <= posy_i;\nend",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "px_clk"
                },
                {
                  "name": "RGBStr_i",
                  "range": "[25:0]",
                  "size": 26
                },
                {
                  "name": "posx_i",
                  "range": "[9:0]",
                  "size": 10
                },
                {
                  "name": "posy_i",
                  "range": "[9:0]",
                  "size": 10
                }
              ],
              "out": [
                {
                  "name": "RGBStr_o",
                  "range": "[25:0]",
                  "size": 26
                },
                {
                  "name": "posx_o",
                  "range": "[9:0]",
                  "size": 10
                },
                {
                  "name": "posy_o",
                  "range": "[9:0]",
                  "size": 10
                }
              ]
            }
          },
          "position": {
            "x": 824,
            "y": 248
          },
          "size": {
            "width": 376,
            "height": 184
          }
        },
        {
          "id": "8e931037-86bd-48e6-82b0-fd728917d648",
          "type": "basic.info",
          "data": {
            "info": "Stage 02: Cálculo del pixel en ROM.",
            "readonly": true
          },
          "position": {
            "x": 904,
            "y": 456
          },
          "size": {
            "width": 360,
            "height": 72
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "42825077-fafc-4e85-ab47-0c3052e53228",
            "port": "out"
          },
          "target": {
            "block": "9a6d3cd2-42ee-42da-b7ba-c8e47f90b9f1",
            "port": "9f1c6d9f-7298-44d0-8c68-344871c4714c"
          }
        },
        {
          "source": {
            "block": "42825077-fafc-4e85-ab47-0c3052e53228",
            "port": "out"
          },
          "target": {
            "block": "f1881335-c2a3-40d6-8d56-c8a5bffd0107",
            "port": "px_clk"
          },
          "vertices": [
            {
              "x": 80,
              "y": 216
            }
          ]
        },
        {
          "source": {
            "block": "9a6d3cd2-42ee-42da-b7ba-c8e47f90b9f1",
            "port": "969e8c86-4a03-43e6-adc9-981e18ff5784"
          },
          "target": {
            "block": "4aefd809-340f-4adb-a379-ea494ea714f1",
            "port": "pixel"
          },
          "size": 4
        },
        {
          "source": {
            "block": "42825077-fafc-4e85-ab47-0c3052e53228",
            "port": "out"
          },
          "target": {
            "block": "4aefd809-340f-4adb-a379-ea494ea714f1",
            "port": "px_clk"
          },
          "vertices": [
            {
              "x": 696,
              "y": -16
            }
          ]
        },
        {
          "source": {
            "block": "34ef8db8-afa3-45e5-8f03-2f1db5f06301",
            "port": "out"
          },
          "target": {
            "block": "f1881335-c2a3-40d6-8d56-c8a5bffd0107",
            "port": "RGBStr_i"
          },
          "vertices": [
            {
              "x": 16,
              "y": 232
            }
          ],
          "size": 26
        },
        {
          "source": {
            "block": "4aefd809-340f-4adb-a379-ea494ea714f1",
            "port": "RGBStr_o"
          },
          "target": {
            "block": "eeb7f72c-5a73-4347-9c78-1a37d276caa2",
            "port": "in"
          },
          "size": 26
        },
        {
          "source": {
            "block": "f1881335-c2a3-40d6-8d56-c8a5bffd0107",
            "port": "addr"
          },
          "target": {
            "block": "9a6d3cd2-42ee-42da-b7ba-c8e47f90b9f1",
            "port": "620b1504-1375-43cb-a009-b39a60b94e28"
          },
          "size": 11
        },
        {
          "source": {
            "block": "2a3a712b-f811-4d1f-800c-8bdffc0f012a",
            "port": "out"
          },
          "target": {
            "block": "f1881335-c2a3-40d6-8d56-c8a5bffd0107",
            "port": "posx_i"
          },
          "size": 10
        },
        {
          "source": {
            "block": "35fb9102-3e67-4c7c-9a31-b4723e05d5bc",
            "port": "out"
          },
          "target": {
            "block": "f1881335-c2a3-40d6-8d56-c8a5bffd0107",
            "port": "posy_i"
          },
          "size": 10
        },
        {
          "source": {
            "block": "7a511261-4dfc-4d84-b0ac-745a854813d3",
            "port": "out"
          },
          "target": {
            "block": "f1881335-c2a3-40d6-8d56-c8a5bffd0107",
            "port": "sprite"
          },
          "size": 8
        },
        {
          "source": {
            "block": "f1881335-c2a3-40d6-8d56-c8a5bffd0107",
            "port": "RGBStr_o"
          },
          "target": {
            "block": "75969b6b-3b58-49ef-b6c6-4a2952acf1c0",
            "port": "RGBStr_i"
          },
          "size": 26
        },
        {
          "source": {
            "block": "f1881335-c2a3-40d6-8d56-c8a5bffd0107",
            "port": "posx_o"
          },
          "target": {
            "block": "75969b6b-3b58-49ef-b6c6-4a2952acf1c0",
            "port": "posx_i"
          },
          "vertices": [
            {
              "x": 704,
              "y": 384
            }
          ],
          "size": 10
        },
        {
          "source": {
            "block": "f1881335-c2a3-40d6-8d56-c8a5bffd0107",
            "port": "posy_o"
          },
          "target": {
            "block": "75969b6b-3b58-49ef-b6c6-4a2952acf1c0",
            "port": "posy_i"
          },
          "vertices": [
            {
              "x": 736,
              "y": 456
            }
          ],
          "size": 10
        },
        {
          "source": {
            "block": "75969b6b-3b58-49ef-b6c6-4a2952acf1c0",
            "port": "RGBStr_o"
          },
          "target": {
            "block": "4aefd809-340f-4adb-a379-ea494ea714f1",
            "port": "RGBStr_i"
          },
          "vertices": [
            {
              "x": 1336,
              "y": 168
            }
          ],
          "size": 26
        },
        {
          "source": {
            "block": "75969b6b-3b58-49ef-b6c6-4a2952acf1c0",
            "port": "posx_o"
          },
          "target": {
            "block": "4aefd809-340f-4adb-a379-ea494ea714f1",
            "port": "posx"
          },
          "vertices": [
            {
              "x": 1392,
              "y": 224
            }
          ],
          "size": 10
        },
        {
          "source": {
            "block": "75969b6b-3b58-49ef-b6c6-4a2952acf1c0",
            "port": "posy_o"
          },
          "target": {
            "block": "4aefd809-340f-4adb-a379-ea494ea714f1",
            "port": "posy"
          },
          "vertices": [
            {
              "x": 1440,
              "y": 328
            }
          ],
          "size": 10
        },
        {
          "source": {
            "block": "42825077-fafc-4e85-ab47-0c3052e53228",
            "port": "out"
          },
          "target": {
            "block": "75969b6b-3b58-49ef-b6c6-4a2952acf1c0",
            "port": "px_clk"
          },
          "vertices": [
            {
              "x": 696,
              "y": 128
            }
          ]
        }
      ]
    }
  },
  "dependencies": {
    "bd4ef003fb3387f61abe25d4d6f1d3ab04cf8bb2": {
      "package": {
        "name": "SpriteROM",
        "version": "1.0",
        "description": "ROM with sprites in game.",
        "author": "Juan Manuel Rico / Sergio Cuenca",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "9f1c6d9f-7298-44d0-8c68-344871c4714c",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": false
              },
              "position": {
                "x": 64,
                "y": 208
              }
            },
            {
              "id": "969e8c86-4a03-43e6-adc9-981e18ff5784",
              "type": "basic.output",
              "data": {
                "name": "pixel",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 736,
                "y": 280
              }
            },
            {
              "id": "620b1504-1375-43cb-a009-b39a60b94e28",
              "type": "basic.input",
              "data": {
                "name": "add",
                "range": "[10:0]",
                "clock": false,
                "size": 11
              },
              "position": {
                "x": 64,
                "y": 360
              }
            },
            {
              "id": "5e8abaec-6c3e-4939-b4df-58aa1e95d3e6",
              "type": "basic.constant",
              "data": {
                "name": "BMPFILE",
                "value": "\"pacman.list\"",
                "local": true
              },
              "position": {
                "x": 408,
                "y": 40
              }
            },
            {
              "id": "3e2dc9e6-a001-4a02-a847-b271a26f7674",
              "type": "basic.code",
              "data": {
                "code": "//@include SpriteROM.v\n\nSpriteROM\n#(\n    .FILE(BMPFILE)\n)\nSpriteROM_01\n(\n    clk,    // System clock.          \n    add,    // Address in ROM.\n    pixel   // Pixel in address.        \n);",
                "params": [
                  {
                    "name": "BMPFILE"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "add",
                      "range": "[10:0]",
                      "size": 11
                    }
                  ],
                  "out": [
                    {
                      "name": "pixel",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ]
                }
              },
              "position": {
                "x": 264,
                "y": 160
              },
              "size": {
                "width": 384,
                "height": 304
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "5e8abaec-6c3e-4939-b4df-58aa1e95d3e6",
                "port": "constant-out"
              },
              "target": {
                "block": "3e2dc9e6-a001-4a02-a847-b271a26f7674",
                "port": "BMPFILE"
              }
            },
            {
              "source": {
                "block": "3e2dc9e6-a001-4a02-a847-b271a26f7674",
                "port": "pixel"
              },
              "target": {
                "block": "969e8c86-4a03-43e6-adc9-981e18ff5784",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "9f1c6d9f-7298-44d0-8c68-344871c4714c",
                "port": "out"
              },
              "target": {
                "block": "3e2dc9e6-a001-4a02-a847-b271a26f7674",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "620b1504-1375-43cb-a009-b39a60b94e28",
                "port": "out"
              },
              "target": {
                "block": "3e2dc9e6-a001-4a02-a847-b271a26f7674",
                "port": "add"
              },
              "size": 11
            }
          ]
        }
      }
    }
  }
}