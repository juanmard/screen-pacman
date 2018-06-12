{
  "version": "1.2",
  "package": {
    "name": "TableRAM",
    "version": "1.0",
    "description": "Game table with object position.",
    "author": "Juan Manuel Rico / Sergio Cuenca",
    "image": ""
  },
  "design": {
    "board": "TinyFPGA-B2",
    "graph": {
      "blocks": [
        {
          "id": "61ffa0c6-bde7-46b4-9955-7fe1b26e45b3",
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
            "x": 24,
            "y": 112
          }
        },
        {
          "id": "aefa639f-9ee8-42ee-ba38-49b1904abee6",
          "type": "basic.input",
          "data": {
            "name": "raddr",
            "range": "[10:0]",
            "pins": [
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
            "x": 24,
            "y": 184
          }
        },
        {
          "id": "4055315b-3e0a-48d6-a5e2-be538de6f18c",
          "type": "basic.input",
          "data": {
            "name": "din",
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
            "virtual": true,
            "clock": false
          },
          "position": {
            "x": 24,
            "y": 264
          }
        },
        {
          "id": "4cb68ed7-785f-48a7-b9db-31209423c5a6",
          "type": "basic.output",
          "data": {
            "name": "dout",
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
            "x": 784,
            "y": 264
          }
        },
        {
          "id": "6f774fa4-3df9-4d16-9e24-1b564c5317ff",
          "type": "basic.input",
          "data": {
            "name": "write_en",
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
            "x": 24,
            "y": 344
          }
        },
        {
          "id": "53c0d509-da3a-47f7-bf34-7412eab28d6d",
          "type": "basic.input",
          "data": {
            "name": "waddr",
            "range": "[10:0]",
            "pins": [
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
            "x": 24,
            "y": 416
          }
        },
        {
          "id": "869cdf80-d1c6-43f9-b27a-a2297e7de303",
          "type": "basic.constant",
          "data": {
            "name": "TABFILE",
            "value": "\"inittab.list\"",
            "local": true
          },
          "position": {
            "x": 424,
            "y": -24
          }
        },
        {
          "id": "00755dad-0c04-4e28-a670-755c47a0633c",
          "type": "basic.info",
          "data": {
            "info": "Double port RAM for storing a \ngame table of 30*40 cells of 4b.\nEvery cell points to a different\nbmp image stored in a BmpROM\n",
            "readonly": true
          },
          "position": {
            "x": 552,
            "y": -8
          },
          "size": {
            "width": 408,
            "height": 112
          }
        },
        {
          "id": "64cada8b-972a-41e2-a42f-822bfdeb3caf",
          "type": "basic.code",
          "data": {
            "code": "//@include TableRAM.v\n\nTableRAM\n#(\n.FILE(TABFILE)\n)\nTableRAM_01\n(\n    px_clk,\n    din,\n    write_en,\n    waddr,\n    raddr,\n    dout\n);",
            "params": [
              {
                "name": "TABFILE"
              }
            ],
            "ports": {
              "in": [
                {
                  "name": "px_clk"
                },
                {
                  "name": "raddr",
                  "range": "[10:0]",
                  "size": 11
                },
                {
                  "name": "din",
                  "range": "[3:0]",
                  "size": 4
                },
                {
                  "name": "write_en"
                },
                {
                  "name": "waddr",
                  "range": "[10:0]",
                  "size": 11
                }
              ],
              "out": [
                {
                  "name": "dout",
                  "range": "[3:0]",
                  "size": 4
                }
              ]
            }
          },
          "position": {
            "x": 232,
            "y": 104
          },
          "size": {
            "width": 480,
            "height": 384
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "61ffa0c6-bde7-46b4-9955-7fe1b26e45b3",
            "port": "out"
          },
          "target": {
            "block": "64cada8b-972a-41e2-a42f-822bfdeb3caf",
            "port": "px_clk"
          }
        },
        {
          "source": {
            "block": "4055315b-3e0a-48d6-a5e2-be538de6f18c",
            "port": "out"
          },
          "target": {
            "block": "64cada8b-972a-41e2-a42f-822bfdeb3caf",
            "port": "din"
          },
          "size": 4
        },
        {
          "source": {
            "block": "6f774fa4-3df9-4d16-9e24-1b564c5317ff",
            "port": "out"
          },
          "target": {
            "block": "64cada8b-972a-41e2-a42f-822bfdeb3caf",
            "port": "write_en"
          }
        },
        {
          "source": {
            "block": "53c0d509-da3a-47f7-bf34-7412eab28d6d",
            "port": "out"
          },
          "target": {
            "block": "64cada8b-972a-41e2-a42f-822bfdeb3caf",
            "port": "waddr"
          },
          "size": 11
        },
        {
          "source": {
            "block": "aefa639f-9ee8-42ee-ba38-49b1904abee6",
            "port": "out"
          },
          "target": {
            "block": "64cada8b-972a-41e2-a42f-822bfdeb3caf",
            "port": "raddr"
          },
          "size": 11
        },
        {
          "source": {
            "block": "64cada8b-972a-41e2-a42f-822bfdeb3caf",
            "port": "dout"
          },
          "target": {
            "block": "4cb68ed7-785f-48a7-b9db-31209423c5a6",
            "port": "in"
          },
          "size": 4
        },
        {
          "source": {
            "block": "869cdf80-d1c6-43f9-b27a-a2297e7de303",
            "port": "constant-out"
          },
          "target": {
            "block": "64cada8b-972a-41e2-a42f-822bfdeb3caf",
            "port": "TABFILE"
          }
        }
      ]
    }
  },
  "dependencies": {}
}