{
  "version": "1.2",
  "package": {
    "name": "demux_actors",
    "version": "1.0",
    "description": "Demultiplexor for actors in the game.",
    "author": "Juan Manuel Rico",
    "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22210mm%22%20height=%22297mm%22%20viewBox=%220%200%20744.09448819%201052.3622047%22%3E%3Crect%20width=%22335.987%22%20height=%22333.222%22%20x=%22210.165%22%20y=%22351.352%22%20ry=%2238.569%22%20transform=%22translate(2.765%209.679)%22%20stroke=%22#707070%22%20stroke-width=%224%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20fill=%22none%22/%3E%3Cpath%20d=%22M286.211%20625.12l197.72-40.098v-129.97l-200.485-33.184z%22%20fill=%22#d4ec00%22%20fill-rule=%22evenodd%22%20stroke=%22#000%22%20stroke-width=%226.6%22/%3E%3Cpath%20d=%22M365.023%20609.91l-1.383%2045.628M387.146%20605.762v45.628M409.268%20602.997v52.541M485.315%20517.272h41.48M485.315%20540.777h41.48M233.67%20474.41h48.393M230.905%20496.532l51.158-1.383M232.287%20538.012h51.159M235.053%20561.517l48.393-1.383%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%224%22/%3E%3C/svg%3E"
  },
  "design": {
    "board": "TinyFPGA-B2",
    "graph": {
      "blocks": [
        {
          "id": "5e63039f-76ab-4401-ad05-89f03964f5ca",
          "type": "basic.input",
          "data": {
            "name": "position_0",
            "range": "[11:0]",
            "pins": [
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
            "x": 88,
            "y": 96
          }
        },
        {
          "id": "39e4284c-08d8-4bde-a0bd-5b37b472b2ea",
          "type": "basic.output",
          "data": {
            "name": "position_out",
            "range": "[11:0]",
            "pins": [
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
            "x": 776,
            "y": 152
          }
        },
        {
          "id": "474b9e13-3fa7-42e6-a62f-f4ddb1d0def1",
          "type": "basic.input",
          "data": {
            "name": "sprite_0",
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
            "x": 88,
            "y": 168
          }
        },
        {
          "id": "539c2452-5538-4898-9fff-9adedcce4d93",
          "type": "basic.input",
          "data": {
            "name": "position_1",
            "range": "[11:0]",
            "pins": [
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
            "x": 88,
            "y": 240
          }
        },
        {
          "id": "4dc27b24-b4cf-4617-936e-058d79348f4a",
          "type": "basic.input",
          "data": {
            "name": "sprite_1",
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
            "x": 88,
            "y": 312
          }
        },
        {
          "id": "d3a23fe0-7f46-47e0-a53d-0d95074dfa68",
          "type": "basic.output",
          "data": {
            "name": "sprite_out",
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
            "virtual": true
          },
          "position": {
            "x": 776,
            "y": 336
          }
        },
        {
          "id": "60e7e51d-fb6b-4653-866d-78b0f739634b",
          "type": "basic.input",
          "data": {
            "name": "select",
            "range": "[2:0]",
            "pins": [
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
            "x": 88,
            "y": 384
          }
        },
        {
          "id": "a5ea9cb7-42c9-443c-8965-12f94d18dad7",
          "type": "basic.code",
          "data": {
            "code": "//@include demux_actors.v\n\ndemux_actors\ndemux_actors_1\n(\n    position_0, sprite_0,\n    position_1, sprite_1,\n    select,\n    position_out, sprite_out\n);",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "position_0",
                  "range": "[11:0]",
                  "size": 12
                },
                {
                  "name": "sprite_0",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "position_1",
                  "range": "[11:0]",
                  "size": 12
                },
                {
                  "name": "sprite_1",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "select",
                  "range": "[2:0]",
                  "size": 3
                }
              ],
              "out": [
                {
                  "name": "position_out",
                  "range": "[11:0]",
                  "size": 12
                },
                {
                  "name": "sprite_out",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": 296,
            "y": 88
          },
          "size": {
            "width": 336,
            "height": 368
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "5e63039f-76ab-4401-ad05-89f03964f5ca",
            "port": "out"
          },
          "target": {
            "block": "a5ea9cb7-42c9-443c-8965-12f94d18dad7",
            "port": "position_0"
          },
          "size": 12
        },
        {
          "source": {
            "block": "60e7e51d-fb6b-4653-866d-78b0f739634b",
            "port": "out"
          },
          "target": {
            "block": "a5ea9cb7-42c9-443c-8965-12f94d18dad7",
            "port": "select"
          },
          "size": 3
        },
        {
          "source": {
            "block": "4dc27b24-b4cf-4617-936e-058d79348f4a",
            "port": "out"
          },
          "target": {
            "block": "a5ea9cb7-42c9-443c-8965-12f94d18dad7",
            "port": "sprite_1"
          },
          "size": 8
        },
        {
          "source": {
            "block": "539c2452-5538-4898-9fff-9adedcce4d93",
            "port": "out"
          },
          "target": {
            "block": "a5ea9cb7-42c9-443c-8965-12f94d18dad7",
            "port": "position_1"
          },
          "size": 12
        },
        {
          "source": {
            "block": "474b9e13-3fa7-42e6-a62f-f4ddb1d0def1",
            "port": "out"
          },
          "target": {
            "block": "a5ea9cb7-42c9-443c-8965-12f94d18dad7",
            "port": "sprite_0"
          },
          "size": 8
        },
        {
          "source": {
            "block": "a5ea9cb7-42c9-443c-8965-12f94d18dad7",
            "port": "position_out"
          },
          "target": {
            "block": "39e4284c-08d8-4bde-a0bd-5b37b472b2ea",
            "port": "in"
          },
          "size": 12
        },
        {
          "source": {
            "block": "a5ea9cb7-42c9-443c-8965-12f94d18dad7",
            "port": "sprite_out"
          },
          "target": {
            "block": "d3a23fe0-7f46-47e0-a53d-0d95074dfa68",
            "port": "in"
          },
          "size": 8
        }
      ]
    }
  },
  "dependencies": {}
}