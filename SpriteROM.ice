{
  "version": "1.1",
  "package": {
    "name": "SpriteROM",
    "version": "1.0",
    "description": "ROM with sprites in game.",
    "author": "Juan Manuel Rico / Sergio Cuenca",
    "image": ""
  },
  "design": {
    "board": "TinyFPGA-B2",
    "graph": {
      "blocks": [
        {
          "id": "9f1c6d9f-7298-44d0-8c68-344871c4714c",
          "type": "basic.input",
          "data": {
            "name": "clk",
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
            "pins": [
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
            "x": 736,
            "y": 280
          }
        },
        {
          "id": "2945b2be-f193-4327-8baf-49fe9595cf81",
          "type": "basic.input",
          "data": {
            "name": "addr",
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
            "code": "//@include SpriteROM.v\n\nSpriteROM\n#(\n    .FILE(BMPFILE)\n)\nSpriteROM_01\n(\n    clk,    // System clock.          \n    addr,   // Address in ROM.\n    pixel   // Pixel in address.        \n);",
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
                  "name": "addr",
                  "range": "[11:0]",
                  "size": 12
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
            "block": "2945b2be-f193-4327-8baf-49fe9595cf81",
            "port": "out"
          },
          "target": {
            "block": "3e2dc9e6-a001-4a02-a847-b271a26f7674",
            "port": "addr"
          },
          "size": 12
        }
      ]
    }
  },
  "dependencies": {}
}