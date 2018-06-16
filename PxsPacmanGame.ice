{
  "version": "1.1",
  "package": {
    "name": "PxsPacmanGame",
    "version": "1.0",
    "description": "Pacman game for iPxs collection.",
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
            "x": -400,
            "y": 32
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
            "x": -400,
            "y": 96
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
            "x": 1272,
            "y": 120
          }
        },
        {
          "id": "c23965e7-ac63-4cf5-97d1-1ca31e0aa918",
          "type": "basic.input",
          "data": {
            "name": "dyn_clk",
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
            "x": -472,
            "y": 176
          }
        },
        {
          "id": "18abcc78-0220-49c7-9c06-bd99bfb271d8",
          "type": "basic.input",
          "data": {
            "name": "start",
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
            "x": -472,
            "y": 256
          }
        },
        {
          "id": "2ee24aa1-c564-4f74-ac6d-e456a4f66517",
          "type": "basic.input",
          "data": {
            "name": "left",
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
            "x": -472,
            "y": 336
          }
        },
        {
          "id": "f76a17c1-c4db-4043-9c7a-366a28595c47",
          "type": "basic.input",
          "data": {
            "name": "right",
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
            "x": -472,
            "y": 400
          }
        },
        {
          "id": "baf40555-8a68-4a71-91b2-d04885c48e5d",
          "type": "basic.input",
          "data": {
            "name": "up",
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
            "x": -472,
            "y": 464
          }
        },
        {
          "id": "3ef73ee7-c09a-438d-b5a9-6cafcac473d0",
          "type": "basic.input",
          "data": {
            "name": "down",
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
            "x": -472,
            "y": 528
          }
        },
        {
          "id": "5366872e-5d0e-4a6c-ab0f-7a6e12d96e79",
          "type": "basic.input",
          "data": {
            "name": "btn1",
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
            "x": -472,
            "y": 592
          }
        },
        {
          "id": "b0ccd96a-420c-414c-b22b-5a6d3b11d4fe",
          "type": "basic.input",
          "data": {
            "name": "btn2",
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
            "x": -472,
            "y": 656
          }
        },
        {
          "id": "06d3dec4-c2d9-4b12-8516-a989809d16e8",
          "type": "basic.output",
          "data": {
            "name": "sound",
            "pins": [
              {
                "index": "0",
                "name": "",
                "value": "0"
              }
            ],
            "virtual": true
          },
          "position": {
            "x": 1824,
            "y": 904
          }
        },
        {
          "id": "bc6f99bc-37ba-45d0-ae98-b5bd06059d83",
          "type": "basic.input",
          "data": {
            "name": "clk",
            "pins": [
              {
                "index": "0",
                "name": "CLK",
                "value": "B4"
              }
            ],
            "virtual": false,
            "clock": true
          },
          "position": {
            "x": 1408,
            "y": 1024
          }
        },
        {
          "id": "778e6369-e90b-4d7c-af6e-e4c4bc7738b2",
          "type": "30a619128177eb5b3b7d87fc43ec75fda64d2499",
          "position": {
            "x": 1592,
            "y": 912
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
          "type": "basic.code",
          "data": {
            "code": "//@include TestCodeB.v\n\nTestCodeB\nTestCodeB_01\n(\n    px_clk,\n    dyn_clk,\n    rst,\n    left,\n    right,\n    up,\n    down,\n    btn1,\n    btn2,\n    read_sprite,\n    sprite,\n    update,\n    posx,\n    posy,\n    get,\n    mute,\n    sound,\n    ready\n);",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "px_clk"
                },
                {
                  "name": "dyn_clk"
                },
                {
                  "name": "rst"
                },
                {
                  "name": "left"
                },
                {
                  "name": "right"
                },
                {
                  "name": "up"
                },
                {
                  "name": "down"
                },
                {
                  "name": "btn1"
                },
                {
                  "name": "btn2"
                },
                {
                  "name": "read_sprite",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "ready"
                }
              ],
              "out": [
                {
                  "name": "sprite",
                  "range": "[7:0]",
                  "size": 8
                },
                {
                  "name": "update"
                },
                {
                  "name": "posx",
                  "range": "[5:0]",
                  "size": 6
                },
                {
                  "name": "posy",
                  "range": "[5:0]",
                  "size": 6
                },
                {
                  "name": "get"
                },
                {
                  "name": "mute"
                },
                {
                  "name": "sound",
                  "range": "[1:0]",
                  "size": 2
                }
              ]
            }
          },
          "position": {
            "x": -176,
            "y": 184
          },
          "size": {
            "width": 864,
            "height": 584
          }
        },
        {
          "id": "9b422993-1a52-4ca0-8584-dd0c00db658f",
          "type": "27b1613ed00fb0df10710ce312f5a69347327daa",
          "position": {
            "x": 1040,
            "y": 104
          },
          "size": {
            "width": 96,
            "height": 224
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
            "block": "9b422993-1a52-4ca0-8584-dd0c00db658f",
            "port": "42825077-fafc-4e85-ab47-0c3052e53228"
          }
        },
        {
          "source": {
            "block": "34ef8db8-afa3-45e5-8f03-2f1db5f06301",
            "port": "out"
          },
          "target": {
            "block": "9b422993-1a52-4ca0-8584-dd0c00db658f",
            "port": "34ef8db8-afa3-45e5-8f03-2f1db5f06301"
          },
          "size": 26
        },
        {
          "source": {
            "block": "9b422993-1a52-4ca0-8584-dd0c00db658f",
            "port": "eeb7f72c-5a73-4347-9c78-1a37d276caa2"
          },
          "target": {
            "block": "eeb7f72c-5a73-4347-9c78-1a37d276caa2",
            "port": "in"
          },
          "size": 26
        },
        {
          "source": {
            "block": "c23965e7-ac63-4cf5-97d1-1ca31e0aa918",
            "port": "out"
          },
          "target": {
            "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
            "port": "dyn_clk"
          }
        },
        {
          "source": {
            "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
            "port": "update"
          },
          "target": {
            "block": "9b422993-1a52-4ca0-8584-dd0c00db658f",
            "port": "c23965e7-ac63-4cf5-97d1-1ca31e0aa918"
          },
          "vertices": [
            {
              "x": 760,
              "y": 248
            }
          ]
        },
        {
          "source": {
            "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
            "port": "posx"
          },
          "target": {
            "block": "9b422993-1a52-4ca0-8584-dd0c00db658f",
            "port": "2f92b91f-6ed0-42b5-b619-b6c2aa5b248b"
          },
          "vertices": [
            {
              "x": 792,
              "y": 280
            }
          ],
          "size": 6
        },
        {
          "source": {
            "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
            "port": "posy"
          },
          "target": {
            "block": "9b422993-1a52-4ca0-8584-dd0c00db658f",
            "port": "efcdf2fe-cb72-4e25-a3f7-7231f757a45c"
          },
          "vertices": [
            {
              "x": 824,
              "y": 312
            }
          ],
          "size": 6
        },
        {
          "source": {
            "block": "2ee24aa1-c564-4f74-ac6d-e456a4f66517",
            "port": "out"
          },
          "target": {
            "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
            "port": "left"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "f76a17c1-c4db-4043-9c7a-366a28595c47",
            "port": "out"
          },
          "target": {
            "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
            "port": "right"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "42825077-fafc-4e85-ab47-0c3052e53228",
            "port": "out"
          },
          "target": {
            "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
            "port": "px_clk"
          }
        },
        {
          "source": {
            "block": "18abcc78-0220-49c7-9c06-bd99bfb271d8",
            "port": "out"
          },
          "target": {
            "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
            "port": "rst"
          }
        },
        {
          "source": {
            "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
            "port": "sprite"
          },
          "target": {
            "block": "9b422993-1a52-4ca0-8584-dd0c00db658f",
            "port": "25b2a52f-f862-452d-af13-b16b13159d43"
          },
          "vertices": [
            {
              "x": 736,
              "y": 216
            }
          ],
          "size": 8
        },
        {
          "source": {
            "block": "baf40555-8a68-4a71-91b2-d04885c48e5d",
            "port": "out"
          },
          "target": {
            "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
            "port": "up"
          }
        },
        {
          "source": {
            "block": "3ef73ee7-c09a-438d-b5a9-6cafcac473d0",
            "port": "out"
          },
          "target": {
            "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
            "port": "down"
          }
        },
        {
          "source": {
            "block": "778e6369-e90b-4d7c-af6e-e4c4bc7738b2",
            "port": "9a44adb7-0589-41b2-b83f-9c9818ec3204"
          },
          "target": {
            "block": "06d3dec4-c2d9-4b12-8516-a989809d16e8",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
            "port": "mute"
          },
          "target": {
            "block": "778e6369-e90b-4d7c-af6e-e4c4bc7738b2",
            "port": "91c8dac9-d40a-47ab-9aef-d32bcd611edd"
          },
          "vertices": [
            {
              "x": 1392,
              "y": 864
            }
          ]
        },
        {
          "source": {
            "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
            "port": "sound"
          },
          "target": {
            "block": "778e6369-e90b-4d7c-af6e-e4c4bc7738b2",
            "port": "32f79a62-b93c-4037-8531-f3bfde549415"
          },
          "vertices": [
            {
              "x": 1352,
              "y": 952
            }
          ],
          "size": 2
        },
        {
          "source": {
            "block": "bc6f99bc-37ba-45d0-ae98-b5bd06059d83",
            "port": "out"
          },
          "target": {
            "block": "778e6369-e90b-4d7c-af6e-e4c4bc7738b2",
            "port": "f507f2d0-430f-4c4e-98cb-211a516db277"
          }
        },
        {
          "source": {
            "block": "9b422993-1a52-4ca0-8584-dd0c00db658f",
            "port": "4b2c7174-a558-4211-9978-1d8c0f081917"
          },
          "target": {
            "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
            "port": "read_sprite"
          },
          "vertices": [
            {
              "x": -296,
              "y": 856
            }
          ],
          "size": 8
        },
        {
          "source": {
            "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
            "port": "get"
          },
          "target": {
            "block": "9b422993-1a52-4ca0-8584-dd0c00db658f",
            "port": "fe552966-fa74-4941-bf35-b52a8fb6f92a"
          },
          "vertices": [
            {
              "x": 864,
              "y": 392
            }
          ]
        },
        {
          "source": {
            "block": "5366872e-5d0e-4a6c-ab0f-7a6e12d96e79",
            "port": "out"
          },
          "target": {
            "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
            "port": "btn1"
          }
        },
        {
          "source": {
            "block": "b0ccd96a-420c-414c-b22b-5a6d3b11d4fe",
            "port": "out"
          },
          "target": {
            "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
            "port": "btn2"
          }
        },
        {
          "source": {
            "block": "9b422993-1a52-4ca0-8584-dd0c00db658f",
            "port": "4b648eff-d61b-4569-ad71-7c2572a1f27d"
          },
          "target": {
            "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
            "port": "ready"
          },
          "vertices": [
            {
              "x": 776,
              "y": 824
            }
          ]
        }
      ]
    }
  },
  "dependencies": {
    "30a619128177eb5b3b7d87fc43ec75fda64d2499": {
      "package": {
        "name": "SndPong",
        "version": "1.0",
        "description": "Sound card for game Pong.",
        "author": "Juan Manuel Rico",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%2240.505%22%20height=%2248.023%22%3E%3Cdefs%3E%3ClinearGradient%20id=%22h%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#57b7ec%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#066b9d%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22d%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#003380%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#003380%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22c%22%3E%3Cstop%20offset=%220%22%20stop-opacity=%220%22/%3E%3Cstop%20offset=%22.5%22%20stop-color=%22#64ffc0%22%20stop-opacity=%22.498%22/%3E%3Cstop%20offset=%221%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22b%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#fff%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#fff%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22a%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#00195d%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#00195d%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22e%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#00195d%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#00195d%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22f%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#003380%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#003380%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20id=%22g%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#fff%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#fff%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20xlink:href=%22#g%22%20id=%22k%22%20gradientUnits=%22userSpaceOnUse%22%20gradientTransform=%22matrix(1.662%200%200%201.662%2091.972%20-660.538)%22%20x1=%22-48.639%22%20y1=%22995.679%22%20x2=%22-44.51%22%20y2=%221015.029%22/%3E%3ClinearGradient%20xlink:href=%22#h%22%20id=%22j%22%20gradientUnits=%22userSpaceOnUse%22%20gradientTransform=%22matrix(1.662%200%200%201.662%2091.972%20-660.538)%22%20x1=%22-39.823%22%20y1=%22993.393%22%20x2=%22-39.823%22%20y2=%221029.943%22/%3E%3ClinearGradient%20xlink:href=%22#h%22%20id=%22m%22%20gradientUnits=%22userSpaceOnUse%22%20x1=%2245.626%22%20y1=%22991.228%22%20x2=%2245.626%22%20y2=%221051.087%22/%3E%3ClinearGradient%20id=%22i%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#57b7ec%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#066b9d%22/%3E%3C/linearGradient%3E%3ClinearGradient%20xlink:href=%22#h%22%20id=%22l%22%20gradientUnits=%22userSpaceOnUse%22%20x1=%2242.42%22%20y1=%22991.029%22%20x2=%2242.42%22%20y2=%221050.398%22/%3E%3ClinearGradient%20xlink:href=%22#h%22%20id=%22n%22%20gradientUnits=%22userSpaceOnUse%22%20x1=%2242.42%22%20y1=%22991.029%22%20x2=%2242.42%22%20y2=%221050.398%22/%3E%3C/defs%3E%3Cpath%20fill=%22none%22%20d=%22M-.365.033h48v48h-48z%22/%3E%3Cpath%20d=%22M23.153.431c-.355-.029-.856.175-1.561.657C18.772%203.018%208.53%2014.191%208.53%2014.191c-.09%200-.16.031-.247.04H.39v19.633h8.14s10.06%2011.214%2013.062%2013.144c3%201.93%202.382-1.069%202.382-2.382V3.43c0-.986.242-2.911-.821-2.999z%22%20fill=%22none%22/%3E%3Cpath%20d=%22M31.996%20990.889c-.449-.037-1.083.22-1.974.83-3.565%202.44-16.516%2016.569-16.516%2016.569-.113%200-.202.04-.312.052H3.211v24.826h10.295s12.721%2014.18%2016.516%2016.62c3.795%202.44%203.012-1.352%203.012-3.013V994.68c0-1.245.306-3.68-1.038-3.791z%22%20fill=%22url(#j)%22%20stroke=%22#0070a3%22%20transform=%22matrix(.79082%200%200%20.79082%20-2.15%20-783.18)%22/%3E%3Cpath%20d=%22M30.771%20993.765c-.401-.033-.97.198-1.768.745-3.194%202.186-15.138%2015.355-15.138%2015.355-.102%200-.181.037-.28.047h-8.98v16.52c5.115-.78%2010.554-1.981%2016.147-3.583%203.718-1.066%207.41-2.428%2010.78-3.707l.17-21.98c0-1.115.274-3.297-.93-3.396z%22%20fill=%22url(#k)%22%20transform=%22matrix(.79082%200%200%20.79082%20-2.15%20-783.18)%22/%3E%3Cpath%20d=%22M38.23%201004.932l-2.511%202.35s5.906%204.156%205.906%2013.218c0%209.062-5.875%2012.938-5.875%2012.938l2.45%202.624s7.112-5.75%207.112-15.562-7.082-15.568-7.082-15.568z%22%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:Sans%22%20font-weight=%22400%22%20color=%22#000%22%20fill=%22url(#l)%22%20stroke=%22#0070a3%22%20stroke-width=%22.5%22%20stroke-linejoin=%22round%22%20overflow=%22visible%22%20font-family=%22Sans%22%20transform=%22matrix(.79082%200%200%20.79082%20-2.15%20-783.18)%22/%3E%3Cpath%20d=%22M45.602%20999.019l-2.414%202.106s1.602%201.507%203.25%204.719c1.647%203.212%203.312%208.094%203.312%2014.75%200%206.655-1.669%2011.402-3.313%2014.5-1.643%203.098-3.218%204.469-3.218%204.469l2.246%202.11s2.713-2.45%204.472-5.767c1.76-3.317%203.5-8.373%203.5-15.312%200-6.94-1.744-12.11-3.5-15.532-1.755-3.421-4.335-6.043-4.335-6.043z%22%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:Sans%22%20font-weight=%22400%22%20color=%22#000%22%20fill=%22url(#m)%22%20stroke=%22#0070a3%22%20stroke-linejoin=%22round%22%20overflow=%22visible%22%20font-family=%22Sans%22%20transform=%22matrix(.79082%200%200%20.79082%20-2.15%20-783.18)%22/%3E%3Cpath%20style=%22text-indent:0;text-align:start;line-height:normal;text-transform:none;block-progression:tb;marker:none;-inkscape-font-specification:Sans%22%20d=%22M38.23%201004.932l-2.511%202.35s5.906%204.156%205.906%2013.218c0%209.062-5.875%2012.938-5.875%2012.938l2.45%202.624s7.112-5.75%207.112-15.562-7.082-15.568-7.082-15.568z%22%20font-weight=%22400%22%20color=%22#000%22%20fill=%22url(#n)%22%20stroke=%22#0070a3%22%20stroke-linejoin=%22round%22%20overflow=%22visible%22%20font-family=%22Sans%22%20transform=%22matrix(.79082%200%200%20.79082%20-2.15%20-783.18)%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "f507f2d0-430f-4c4e-98cb-211a516db277",
              "type": "basic.input",
              "data": {
                "name": "snd_clk",
                "clock": false
              },
              "position": {
                "x": -208,
                "y": 80
              }
            },
            {
              "id": "9a44adb7-0589-41b2-b83f-9c9818ec3204",
              "type": "basic.output",
              "data": {
                "name": "right"
              },
              "position": {
                "x": 1560,
                "y": 328
              }
            },
            {
              "id": "9d521dad-db7c-4fdb-a138-497f6404789e",
              "type": "basic.output",
              "data": {
                "name": "left"
              },
              "position": {
                "x": 1560,
                "y": 544
              }
            },
            {
              "id": "91c8dac9-d40a-47ab-9aef-d32bcd611edd",
              "type": "basic.input",
              "data": {
                "name": "mute",
                "clock": false
              },
              "position": {
                "x": -216,
                "y": 736
              }
            },
            {
              "id": "32f79a62-b93c-4037-8531-f3bfde549415",
              "type": "basic.input",
              "data": {
                "name": "sound",
                "range": "[1:0]",
                "clock": false,
                "size": 2
              },
              "position": {
                "x": -216,
                "y": 864
              }
            },
            {
              "id": "5184cff1-4e8f-4031-9ef1-1ca03f79b68e",
              "type": "basic.constant",
              "data": {
                "name": "tone",
                "value": "17",
                "local": true
              },
              "position": {
                "x": 400,
                "y": 216
              }
            },
            {
              "id": "16bb7739-5bd5-4008-9c29-2c54dec62222",
              "type": "basic.constant",
              "data": {
                "name": "tone",
                "value": "19",
                "local": true
              },
              "position": {
                "x": 400,
                "y": 448
              }
            },
            {
              "id": "63907550-95d0-448b-a3ec-ad129d37efab",
              "type": "basic.constant",
              "data": {
                "name": "tone",
                "value": "15",
                "local": true
              },
              "position": {
                "x": 408,
                "y": -48
              }
            },
            {
              "id": "defef0f5-6977-402b-ab4a-a6ec30b9b52d",
              "type": "435b29b7b65c2c6d3c3df9bacef7e063156a0f7f",
              "position": {
                "x": 408,
                "y": 80
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "aae068a1-7305-491e-ba2c-b7977397b77f",
              "type": "11a6f454705778e2f00adba4e5b28dcd9411bc8f",
              "position": {
                "x": 648,
                "y": 96
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "14ea4bc4-afaa-42e1-818d-9e9384eae355",
              "type": "435b29b7b65c2c6d3c3df9bacef7e063156a0f7f",
              "position": {
                "x": 400,
                "y": 344
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "25c6a485-0f7e-40f5-9e41-9b8a6a7a6682",
              "type": "11a6f454705778e2f00adba4e5b28dcd9411bc8f",
              "position": {
                "x": 696,
                "y": 360
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "00c1bb7a-9187-4fdc-95a2-efe3e6699b8b",
              "type": "435b29b7b65c2c6d3c3df9bacef7e063156a0f7f",
              "position": {
                "x": 400,
                "y": 576
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "b4527149-0753-4786-94ad-9487ec6bbb21",
              "type": "11a6f454705778e2f00adba4e5b28dcd9411bc8f",
              "position": {
                "x": 744,
                "y": 592
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "be17157e-b972-41fd-942e-3523c786b1d5",
              "type": "2fa1b5e2ab379d4aa2f25ff2ff5a6874c24d3cab",
              "position": {
                "x": 856,
                "y": 112
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "a3b4c9f1-0b4a-4873-8b08-7f7d2e467b27",
              "type": "2fa1b5e2ab379d4aa2f25ff2ff5a6874c24d3cab",
              "position": {
                "x": 1000,
                "y": 320
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "8a6c663c-8605-4e29-ac06-416145e92855",
              "type": "11a6f454705778e2f00adba4e5b28dcd9411bc8f",
              "position": {
                "x": 1336,
                "y": 432
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "78e75998-1e2f-4afa-bd28-0bff051366ec",
              "type": "32200dc0915d45d6ec035bcec61c8472f0cc7b88",
              "position": {
                "x": 0,
                "y": 736
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "35825695-a331-4af4-b681-dea4ae3445be",
              "type": "basic.code",
              "data": {
                "code": "assign ping = (sound == 1) ? 1'b1 : 1'b0;\nassign pong = (sound == 2) ? 1'b1 : 1'b0;\nassign goal = (sound == 3) ? 1'b1 : 1'b0;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "sound",
                      "range": "[1:0]",
                      "size": 2
                    }
                  ],
                  "out": [
                    {
                      "name": "ping"
                    },
                    {
                      "name": "pong"
                    },
                    {
                      "name": "goal"
                    }
                  ]
                }
              },
              "position": {
                "x": 56,
                "y": 856
              },
              "size": {
                "width": 464,
                "height": 80
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "f507f2d0-430f-4c4e-98cb-211a516db277",
                "port": "out"
              },
              "target": {
                "block": "defef0f5-6977-402b-ab4a-a6ec30b9b52d",
                "port": "e19c6f2f-5747-4ed1-87c8-748575f0cc10"
              }
            },
            {
              "source": {
                "block": "63907550-95d0-448b-a3ec-ad129d37efab",
                "port": "constant-out"
              },
              "target": {
                "block": "defef0f5-6977-402b-ab4a-a6ec30b9b52d",
                "port": "de2d8a2d-7908-48a2-9e35-7763a45886e4"
              }
            },
            {
              "source": {
                "block": "defef0f5-6977-402b-ab4a-a6ec30b9b52d",
                "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
              },
              "target": {
                "block": "aae068a1-7305-491e-ba2c-b7977397b77f",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "5184cff1-4e8f-4031-9ef1-1ca03f79b68e",
                "port": "constant-out"
              },
              "target": {
                "block": "14ea4bc4-afaa-42e1-818d-9e9384eae355",
                "port": "de2d8a2d-7908-48a2-9e35-7763a45886e4"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "14ea4bc4-afaa-42e1-818d-9e9384eae355",
                "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
              },
              "target": {
                "block": "25c6a485-0f7e-40f5-9e41-9b8a6a7a6682",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "16bb7739-5bd5-4008-9c29-2c54dec62222",
                "port": "constant-out"
              },
              "target": {
                "block": "00c1bb7a-9187-4fdc-95a2-efe3e6699b8b",
                "port": "de2d8a2d-7908-48a2-9e35-7763a45886e4"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "00c1bb7a-9187-4fdc-95a2-efe3e6699b8b",
                "port": "7e07d449-6475-4839-b43e-8aead8be2aac"
              },
              "target": {
                "block": "b4527149-0753-4786-94ad-9487ec6bbb21",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "f507f2d0-430f-4c4e-98cb-211a516db277",
                "port": "out"
              },
              "target": {
                "block": "14ea4bc4-afaa-42e1-818d-9e9384eae355",
                "port": "e19c6f2f-5747-4ed1-87c8-748575f0cc10"
              },
              "vertices": [
                {
                  "x": 280,
                  "y": 288
                }
              ]
            },
            {
              "source": {
                "block": "f507f2d0-430f-4c4e-98cb-211a516db277",
                "port": "out"
              },
              "target": {
                "block": "00c1bb7a-9187-4fdc-95a2-efe3e6699b8b",
                "port": "e19c6f2f-5747-4ed1-87c8-748575f0cc10"
              },
              "vertices": [
                {
                  "x": 280,
                  "y": 448
                }
              ]
            },
            {
              "source": {
                "block": "35825695-a331-4af4-b681-dea4ae3445be",
                "port": "ping"
              },
              "target": {
                "block": "aae068a1-7305-491e-ba2c-b7977397b77f",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              },
              "vertices": [
                {
                  "x": 608,
                  "y": 448
                }
              ]
            },
            {
              "source": {
                "block": "35825695-a331-4af4-b681-dea4ae3445be",
                "port": "pong"
              },
              "target": {
                "block": "25c6a485-0f7e-40f5-9e41-9b8a6a7a6682",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              },
              "vertices": [
                {
                  "x": 664,
                  "y": 512
                }
              ]
            },
            {
              "source": {
                "block": "35825695-a331-4af4-b681-dea4ae3445be",
                "port": "goal"
              },
              "target": {
                "block": "b4527149-0753-4786-94ad-9487ec6bbb21",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              },
              "vertices": [
                {
                  "x": 720,
                  "y": 720
                }
              ]
            },
            {
              "source": {
                "block": "aae068a1-7305-491e-ba2c-b7977397b77f",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "be17157e-b972-41fd-942e-3523c786b1d5",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "25c6a485-0f7e-40f5-9e41-9b8a6a7a6682",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "be17157e-b972-41fd-942e-3523c786b1d5",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            },
            {
              "source": {
                "block": "b4527149-0753-4786-94ad-9487ec6bbb21",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "a3b4c9f1-0b4a-4873-8b08-7f7d2e467b27",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              },
              "vertices": [
                {
                  "x": 872,
                  "y": 536
                }
              ]
            },
            {
              "source": {
                "block": "be17157e-b972-41fd-942e-3523c786b1d5",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "a3b4c9f1-0b4a-4873-8b08-7f7d2e467b27",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "91c8dac9-d40a-47ab-9aef-d32bcd611edd",
                "port": "out"
              },
              "target": {
                "block": "78e75998-1e2f-4afa-bd28-0bff051366ec",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "8a6c663c-8605-4e29-ac06-416145e92855",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "9a44adb7-0589-41b2-b83f-9c9818ec3204",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "8a6c663c-8605-4e29-ac06-416145e92855",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "9d521dad-db7c-4fdb-a138-497f6404789e",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "78e75998-1e2f-4afa-bd28-0bff051366ec",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "8a6c663c-8605-4e29-ac06-416145e92855",
                "port": "97b51945-d716-4b6c-9db9-970d08541249"
              }
            },
            {
              "source": {
                "block": "a3b4c9f1-0b4a-4873-8b08-7f7d2e467b27",
                "port": "664caf9e-5f40-4df4-800a-b626af702e62"
              },
              "target": {
                "block": "8a6c663c-8605-4e29-ac06-416145e92855",
                "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
              }
            },
            {
              "source": {
                "block": "32f79a62-b93c-4037-8531-f3bfde549415",
                "port": "out"
              },
              "target": {
                "block": "35825695-a331-4af4-b681-dea4ae3445be",
                "port": "sound"
              },
              "size": 2
            }
          ]
        }
      }
    },
    "435b29b7b65c2c6d3c3df9bacef7e063156a0f7f": {
      "package": {
        "name": "PrescalerN",
        "version": "0.1",
        "description": "Parametric N-bits prescaler",
        "author": "Juan Gonzalez (Obijuan)",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "de2d8a2d-7908-48a2-9e35-7763a45886e4",
              "type": "basic.constant",
              "data": {
                "name": "N",
                "value": "22",
                "local": false
              },
              "position": {
                "x": 352,
                "y": 56
              }
            },
            {
              "id": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
              "type": "basic.code",
              "data": {
                "code": "//-- Number of bits of the prescaler\n//parameter N = 22;\n\n//-- divisor register\nreg [N-1:0] divcounter;\n\n//-- N bit counter\nalways @(posedge clk_in)\n  divcounter <= divcounter + 1;\n\n//-- Use the most significant bit as output\nassign clk_out = divcounter[N-1];",
                "params": [
                  {
                    "name": "N"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk_in"
                    }
                  ],
                  "out": [
                    {
                      "name": "clk_out"
                    }
                  ]
                }
              },
              "position": {
                "x": 176,
                "y": 176
              },
              "size": {
                "width": 448,
                "height": 224
              }
            },
            {
              "id": "e19c6f2f-5747-4ed1-87c8-748575f0cc10",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 0,
                "y": 256
              }
            },
            {
              "id": "7e07d449-6475-4839-b43e-8aead8be2aac",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 720,
                "y": 256
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
                "port": "clk_out"
              },
              "target": {
                "block": "7e07d449-6475-4839-b43e-8aead8be2aac",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "e19c6f2f-5747-4ed1-87c8-748575f0cc10",
                "port": "out"
              },
              "target": {
                "block": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
                "port": "clk_in"
              }
            },
            {
              "source": {
                "block": "de2d8a2d-7908-48a2-9e35-7763a45886e4",
                "port": "constant-out"
              },
              "target": {
                "block": "2330955f-5ce6-4d1c-8ee4-0a09a0349389",
                "port": "N"
              }
            }
          ]
        }
      }
    },
    "11a6f454705778e2f00adba4e5b28dcd9411bc8f": {
      "package": {
        "name": "AND",
        "version": "1.0.0",
        "description": "AND logic gate",
        "author": "Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%2090%2040%22%3E%3Cpath%20d=%22M-252%20409.9h26v2h-26zM-252%20429.9h27v2h-27z%22/%3E%3Cpath%20d=%22M-227%20400.9v39.9h20.4c11.3%200%2020-9%2020-20s-8.7-20-20-20H-227zm2.9%202.8h17.6c9.8%200%2016.7%207.6%2016.7%2017.1%200%209.5-7.4%2017.1-17.1%2017.1H-224c-.1.1-.1-34.2-.1-34.2z%22/%3E%3Cpath%20d=%22M-187.911%20419.9H-162v2h-25.911z%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "00925b04-5004-4307-a737-fa4e97c8b6ab",
              "type": "basic.code",
              "data": {
                "code": "// AND logic gate\n\nassign c = a & b;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
                    },
                    {
                      "name": "b"
                    }
                  ],
                  "out": [
                    {
                      "name": "c"
                    }
                  ]
                }
              },
              "position": {
                "x": 256,
                "y": 48
              }
            },
            {
              "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 64,
                "y": 80
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 752,
                "y": 144
              }
            },
            {
              "id": "97b51945-d716-4b6c-9db9-970d08541249",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 64,
                "y": 208
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "port": "out"
              },
              "target": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "a"
              }
            },
            {
              "source": {
                "block": "97b51945-d716-4b6c-9db9-970d08541249",
                "port": "out"
              },
              "target": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "b"
              }
            },
            {
              "source": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "c"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "2fa1b5e2ab379d4aa2f25ff2ff5a6874c24d3cab": {
      "package": {
        "name": "OR",
        "version": "1.0.0",
        "description": "OR logic gate",
        "author": "Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2290%22%20height=%2240%22%20version=%221%22%3E%3Cpath%20d=%22M65%2020h25M26%2010H0M27%2030H0%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%222%22/%3E%3Cpath%20d=%22M19.094%200l2%202.438s5.656%207%205.656%2017.562c0%2010.562-5.656%2017.563-5.656%2017.563l-2%202.437H36.25c2.408%200%207.69.025%2013.625-2.406s12.537-7.344%2017.688-16.875L66.25%2020l1.313-.719C57.258.216%2041.007%200%2036.25%200H19.094zm5.875%203H36.25c4.684%200%2018.287-.13%2027.969%2017-4.767%208.43-10.522%2012.684-15.719%2014.813C43.14%2037.008%2038.658%2037%2036.25%2037H25c1.874-3.108%204.75-9.05%204.75-17%200-7.973-2.909-13.9-4.781-17z%22%20fill-rule=%22evenodd%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "00925b04-5004-4307-a737-fa4e97c8b6ab",
              "type": "basic.code",
              "data": {
                "code": "// OR logic gate\n\nassign c = a | b;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
                    },
                    {
                      "name": "b"
                    }
                  ],
                  "out": [
                    {
                      "name": "c"
                    }
                  ]
                }
              },
              "position": {
                "x": 256,
                "y": 48
              }
            },
            {
              "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 64,
                "y": 80
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 752,
                "y": 144
              }
            },
            {
              "id": "97b51945-d716-4b6c-9db9-970d08541249",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 64,
                "y": 208
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "port": "out"
              },
              "target": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "a"
              }
            },
            {
              "source": {
                "block": "97b51945-d716-4b6c-9db9-970d08541249",
                "port": "out"
              },
              "target": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "b"
              }
            },
            {
              "source": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "c"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "32200dc0915d45d6ec035bcec61c8472f0cc7b88": {
      "package": {
        "name": "NOT",
        "version": "1.0.0",
        "description": "NOT logic gate",
        "author": "Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2291.33%22%20height=%2245.752%22%20version=%221%22%3E%3Cpath%20d=%22M0%2020.446h27v2H0zM70.322%2020.447h15.3v2h-15.3z%22/%3E%3Cpath%20d=%22M66.05%2026.746c-2.9%200-5.3-2.4-5.3-5.3s2.4-5.3%205.3-5.3%205.3%202.4%205.3%205.3-2.4%205.3-5.3%205.3zm0-8.6c-1.8%200-3.3%201.5-3.3%203.3%200%201.8%201.5%203.3%203.3%203.3%201.8%200%203.3-1.5%203.3-3.3%200-1.8-1.5-3.3-3.3-3.3z%22/%3E%3Cpath%20d=%22M25.962%202.563l33.624%2018.883L25.962%2040.33V2.563z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%223%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "5365ed8c-e5db-4445-938f-8d689830ea5c",
              "type": "basic.code",
              "data": {
                "code": "// NOT logic gate\n\nassign c = ~ a;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
                    }
                  ],
                  "out": [
                    {
                      "name": "c"
                    }
                  ]
                }
              },
              "position": {
                "x": 256,
                "y": 48
              }
            },
            {
              "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 64,
                "y": 144
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 752,
                "y": 144
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "port": "out"
              },
              "target": {
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "port": "a"
              }
            },
            {
              "source": {
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "port": "c"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "27b1613ed00fb0df10710ce312f5a69347327daa": {
      "package": {
        "name": "PxsGameTable",
        "version": "1.0",
        "description": "Draw in a stream RGB the table of the game.",
        "author": "Juan Manuel Rico",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "42825077-fafc-4e85-ab47-0c3052e53228",
              "type": "basic.input",
              "data": {
                "name": "px_clk",
                "clock": false
              },
              "position": {
                "x": -408,
                "y": -136
              }
            },
            {
              "id": "34ef8db8-afa3-45e5-8f03-2f1db5f06301",
              "type": "basic.input",
              "data": {
                "name": "RGBStr_i",
                "range": "[25:0]",
                "clock": false,
                "size": 26
              },
              "position": {
                "x": -440,
                "y": 368
              }
            },
            {
              "id": "eeb7f72c-5a73-4347-9c78-1a37d276caa2",
              "type": "basic.output",
              "data": {
                "name": "RGBStr_o",
                "range": "[25:0]",
                "size": 26
              },
              "position": {
                "x": 2304,
                "y": 544
              }
            },
            {
              "id": "25b2a52f-f862-452d-af13-b16b13159d43",
              "type": "basic.input",
              "data": {
                "name": "sprite_i",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": -432,
                "y": 600
              }
            },
            {
              "id": "fe552966-fa74-4941-bf35-b52a8fb6f92a",
              "type": "basic.input",
              "data": {
                "name": "get",
                "clock": false
              },
              "position": {
                "x": -432,
                "y": 672
              }
            },
            {
              "id": "c23965e7-ac63-4cf5-97d1-1ca31e0aa918",
              "type": "basic.input",
              "data": {
                "name": "update",
                "clock": false
              },
              "position": {
                "x": -440,
                "y": 792
              }
            },
            {
              "id": "4b2c7174-a558-4211-9978-1d8c0f081917",
              "type": "basic.output",
              "data": {
                "name": "read_sprite",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 2320,
                "y": 816
              }
            },
            {
              "id": "2f92b91f-6ed0-42b5-b619-b6c2aa5b248b",
              "type": "basic.input",
              "data": {
                "name": "posx_tab",
                "range": "[5:0]",
                "clock": false,
                "size": 6
              },
              "position": {
                "x": -440,
                "y": 856
              }
            },
            {
              "id": "4b648eff-d61b-4569-ad71-7c2572a1f27d",
              "type": "basic.output",
              "data": {
                "name": "ready"
              },
              "position": {
                "x": 2320,
                "y": 896
              }
            },
            {
              "id": "efcdf2fe-cb72-4e25-a3f7-7231f757a45c",
              "type": "basic.input",
              "data": {
                "name": "posy_tab",
                "range": "[5:0]",
                "clock": false,
                "size": 6
              },
              "position": {
                "x": -440,
                "y": 920
              }
            },
            {
              "id": "dd692156-fe6f-4498-a165-df122b33c080",
              "type": "basic.code",
              "data": {
                "code": "// Calcula la dirección en el tablero.\n//\nassign waddr = posy_tab*40 + posx_tab;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "posx_tab",
                      "range": "[5:0]",
                      "size": 6
                    },
                    {
                      "name": "posy_tab",
                      "range": "[5:0]",
                      "size": 6
                    }
                  ],
                  "out": [
                    {
                      "name": "waddr",
                      "range": "[10:0]",
                      "size": 11
                    }
                  ]
                }
              },
              "position": {
                "x": -16,
                "y": 856
              },
              "size": {
                "width": 432,
                "height": 128
              }
            },
            {
              "id": "27c16a12-5f2e-4ffc-950f-357dc413f763",
              "type": "ff2ebfe392317114ad55b3ed15989a36e3f7109b",
              "position": {
                "x": 1328,
                "y": 384
              },
              "size": {
                "width": 96,
                "height": 160
              }
            },
            {
              "id": "01911f6f-829f-4122-920f-339e90d91f96",
              "type": "basic.code",
              "data": {
                "code": "reg [25:0] RGBStr_o;\n\nalways @(px_clk)\nbegin\n    RGBStr_o <= RGBStr_i;\nend",
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
                "x": 1336,
                "y": 120
              },
              "size": {
                "width": 376,
                "height": 192
              }
            },
            {
              "id": "40fa1a0a-b658-4fc8-b510-ddcfc7030ed3",
              "type": "9ba9b88634e5231968c90c94d0d1a11a67dd60cc",
              "position": {
                "x": 2000,
                "y": 528
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "b2962fa0-65c3-4d0b-9d00-96d37acb16fb",
              "type": "basic.code",
              "data": {
                "code": "assign raddr = (select) ? raddr_control : raddr_video;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "raddr_video",
                      "range": "[10:0]",
                      "size": 11
                    },
                    {
                      "name": "raddr_control",
                      "range": "[10:0]",
                      "size": 11
                    },
                    {
                      "name": "select"
                    }
                  ],
                  "out": [
                    {
                      "name": "raddr",
                      "range": "[10:0]",
                      "size": 11
                    }
                  ]
                }
              },
              "position": {
                "x": 528,
                "y": 376
              },
              "size": {
                "width": 520,
                "height": 64
              }
            },
            {
              "id": "6e3a0d1b-2088-48e0-93d5-0adb3a19a78b",
              "type": "basic.code",
              "data": {
                "code": "`define YC 12:3\t\t\t// Y Coordinate\n`define XC 22:13\t\t// X Coordinate\n\nreg [10:0] raddr;\nreg [25:0] RGBStr_o;\nreg busy;\n\nalways @(px_clk)\nbegin\n    RGBStr_o <= RGBStr_i;\n    \n    if (RGBStr_i[0:0])      // Visible pixel.\n    begin\n        raddr <= RGBStr_i[12:7]*40 + RGBStr_i[22:17];\n        busy <= 1;\n    end\n    else\n    begin\n        busy <= 0;\n    end\nend",
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
                    }
                  ],
                  "out": [
                    {
                      "name": "RGBStr_o",
                      "range": "[25:0]",
                      "size": 26
                    },
                    {
                      "name": "busy"
                    },
                    {
                      "name": "raddr",
                      "range": "[10:0]",
                      "size": 11
                    }
                  ]
                }
              },
              "position": {
                "x": -168,
                "y": 192
              },
              "size": {
                "width": 528,
                "height": 280
              }
            },
            {
              "id": "fe1ec841-408a-4bcd-9a01-a0c4f0b3a3e3",
              "type": "basic.code",
              "data": {
                "code": "reg [7:0] sprite_o;\nreg ready;\n\nalways @(negedge busy)\nbegin\n    if (get)\n    begin\n        sprite_o <= sprite_i;\n        ready <= 1'b1;\n    end\n    else\n        ready <= 1'b0;\nend",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "sprite_i",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "get"
                    },
                    {
                      "name": "busy"
                    }
                  ],
                  "out": [
                    {
                      "name": "sprite_o",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "ready"
                    }
                  ]
                }
              },
              "position": {
                "x": 1760,
                "y": 808
              },
              "size": {
                "width": 400,
                "height": 160
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
                "block": "40fa1a0a-b658-4fc8-b510-ddcfc7030ed3",
                "port": "42825077-fafc-4e85-ab47-0c3052e53228"
              },
              "vertices": [
                {
                  "x": 1880,
                  "y": 384
                }
              ]
            },
            {
              "source": {
                "block": "40fa1a0a-b658-4fc8-b510-ddcfc7030ed3",
                "port": "eeb7f72c-5a73-4347-9c78-1a37d276caa2"
              },
              "target": {
                "block": "eeb7f72c-5a73-4347-9c78-1a37d276caa2",
                "port": "in"
              },
              "size": 26
            },
            {
              "source": {
                "block": "42825077-fafc-4e85-ab47-0c3052e53228",
                "port": "out"
              },
              "target": {
                "block": "27c16a12-5f2e-4ffc-950f-357dc413f763",
                "port": "61ffa0c6-bde7-46b4-9955-7fe1b26e45b3"
              },
              "vertices": [
                {
                  "x": 1168,
                  "y": 56
                }
              ]
            },
            {
              "source": {
                "block": "34ef8db8-afa3-45e5-8f03-2f1db5f06301",
                "port": "out"
              },
              "target": {
                "block": "6e3a0d1b-2088-48e0-93d5-0adb3a19a78b",
                "port": "RGBStr_i"
              },
              "size": 26
            },
            {
              "source": {
                "block": "42825077-fafc-4e85-ab47-0c3052e53228",
                "port": "out"
              },
              "target": {
                "block": "6e3a0d1b-2088-48e0-93d5-0adb3a19a78b",
                "port": "px_clk"
              }
            },
            {
              "source": {
                "block": "c23965e7-ac63-4cf5-97d1-1ca31e0aa918",
                "port": "out"
              },
              "target": {
                "block": "27c16a12-5f2e-4ffc-950f-357dc413f763",
                "port": "6f774fa4-3df9-4d16-9e24-1b564c5317ff"
              },
              "vertices": [
                {
                  "x": 1000,
                  "y": 744
                }
              ]
            },
            {
              "source": {
                "block": "dd692156-fe6f-4498-a165-df122b33c080",
                "port": "waddr"
              },
              "target": {
                "block": "27c16a12-5f2e-4ffc-950f-357dc413f763",
                "port": "53c0d509-da3a-47f7-bf34-7412eab28d6d"
              },
              "vertices": [
                {
                  "x": 1136,
                  "y": 824
                }
              ],
              "size": 11
            },
            {
              "source": {
                "block": "2f92b91f-6ed0-42b5-b619-b6c2aa5b248b",
                "port": "out"
              },
              "target": {
                "block": "dd692156-fe6f-4498-a165-df122b33c080",
                "port": "posx_tab"
              },
              "size": 6
            },
            {
              "source": {
                "block": "efcdf2fe-cb72-4e25-a3f7-7231f757a45c",
                "port": "out"
              },
              "target": {
                "block": "dd692156-fe6f-4498-a165-df122b33c080",
                "port": "posy_tab"
              },
              "size": 6
            },
            {
              "source": {
                "block": "25b2a52f-f862-452d-af13-b16b13159d43",
                "port": "out"
              },
              "target": {
                "block": "27c16a12-5f2e-4ffc-950f-357dc413f763",
                "port": "fabee3b6-1818-4dba-8712-432250ae5377"
              },
              "vertices": [
                {
                  "x": 384,
                  "y": 560
                }
              ],
              "size": 8
            },
            {
              "source": {
                "block": "27c16a12-5f2e-4ffc-950f-357dc413f763",
                "port": "459c4732-a880-499f-9015-4bcef96a18fa"
              },
              "target": {
                "block": "40fa1a0a-b658-4fc8-b510-ddcfc7030ed3",
                "port": "7a511261-4dfc-4d84-b0ac-745a854813d3"
              },
              "vertices": [
                {
                  "x": 1656,
                  "y": 544
                }
              ],
              "size": 8
            },
            {
              "source": {
                "block": "42825077-fafc-4e85-ab47-0c3052e53228",
                "port": "out"
              },
              "target": {
                "block": "01911f6f-829f-4122-920f-339e90d91f96",
                "port": "px_clk"
              },
              "vertices": [
                {
                  "x": 1168,
                  "y": 80
                }
              ]
            },
            {
              "source": {
                "block": "6e3a0d1b-2088-48e0-93d5-0adb3a19a78b",
                "port": "raddr"
              },
              "target": {
                "block": "b2962fa0-65c3-4d0b-9d00-96d37acb16fb",
                "port": "raddr_video"
              },
              "size": 11
            },
            {
              "source": {
                "block": "dd692156-fe6f-4498-a165-df122b33c080",
                "port": "waddr"
              },
              "target": {
                "block": "b2962fa0-65c3-4d0b-9d00-96d37acb16fb",
                "port": "raddr_control"
              },
              "size": 11
            },
            {
              "source": {
                "block": "b2962fa0-65c3-4d0b-9d00-96d37acb16fb",
                "port": "raddr"
              },
              "target": {
                "block": "27c16a12-5f2e-4ffc-950f-357dc413f763",
                "port": "aefa639f-9ee8-42ee-ba38-49b1904abee6"
              },
              "size": 11
            },
            {
              "source": {
                "block": "6e3a0d1b-2088-48e0-93d5-0adb3a19a78b",
                "port": "RGBStr_o"
              },
              "target": {
                "block": "01911f6f-829f-4122-920f-339e90d91f96",
                "port": "RGBStr_i"
              },
              "size": 26
            },
            {
              "source": {
                "block": "01911f6f-829f-4122-920f-339e90d91f96",
                "port": "RGBStr_o"
              },
              "target": {
                "block": "40fa1a0a-b658-4fc8-b510-ddcfc7030ed3",
                "port": "34ef8db8-afa3-45e5-8f03-2f1db5f06301"
              },
              "vertices": [
                {
                  "x": 1776,
                  "y": 416
                }
              ],
              "size": 26
            },
            {
              "source": {
                "block": "27c16a12-5f2e-4ffc-950f-357dc413f763",
                "port": "459c4732-a880-499f-9015-4bcef96a18fa"
              },
              "target": {
                "block": "fe1ec841-408a-4bcd-9a01-a0c4f0b3a3e3",
                "port": "sprite_i"
              },
              "vertices": [
                {
                  "x": 1656,
                  "y": 672
                }
              ],
              "size": 8
            },
            {
              "source": {
                "block": "fe1ec841-408a-4bcd-9a01-a0c4f0b3a3e3",
                "port": "sprite_o"
              },
              "target": {
                "block": "4b2c7174-a558-4211-9978-1d8c0f081917",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "fe552966-fa74-4941-bf35-b52a8fb6f92a",
                "port": "out"
              },
              "target": {
                "block": "fe1ec841-408a-4bcd-9a01-a0c4f0b3a3e3",
                "port": "get"
              },
              "vertices": [
                {
                  "x": 1440,
                  "y": 760
                }
              ]
            },
            {
              "source": {
                "block": "fe1ec841-408a-4bcd-9a01-a0c4f0b3a3e3",
                "port": "ready"
              },
              "target": {
                "block": "4b648eff-d61b-4569-ad71-7c2572a1f27d",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "fe552966-fa74-4941-bf35-b52a8fb6f92a",
                "port": "out"
              },
              "target": {
                "block": "b2962fa0-65c3-4d0b-9d00-96d37acb16fb",
                "port": "select"
              }
            },
            {
              "source": {
                "block": "6e3a0d1b-2088-48e0-93d5-0adb3a19a78b",
                "port": "busy"
              },
              "target": {
                "block": "fe1ec841-408a-4bcd-9a01-a0c4f0b3a3e3",
                "port": "busy"
              },
              "vertices": [
                {
                  "x": 1544,
                  "y": 680
                }
              ]
            }
          ]
        }
      }
    },
    "ff2ebfe392317114ad55b3ed15989a36e3f7109b": {
      "package": {
        "name": "TableRAM",
        "version": "1.0",
        "description": "Game table with object position.",
        "author": "Juan Manuel Rico / Sergio Cuenca",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "61ffa0c6-bde7-46b4-9955-7fe1b26e45b3",
              "type": "basic.input",
              "data": {
                "name": "px_clk",
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
                "clock": false,
                "size": 11
              },
              "position": {
                "x": 24,
                "y": 184
              }
            },
            {
              "id": "fabee3b6-1818-4dba-8712-432250ae5377",
              "type": "basic.input",
              "data": {
                "name": "din",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 24,
                "y": 264
              }
            },
            {
              "id": "459c4732-a880-499f-9015-4bcef96a18fa",
              "type": "basic.output",
              "data": {
                "name": "dout",
                "range": "[7:0]",
                "size": 8
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
                "clock": false,
                "size": 11
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
                "info": "Double port RAM for storing a \ngame table of 30*40 cells of 8b.\nEvery cell points to a different\nsprite image stored in a \"SpriteROM\"\nwith its orientation.\n",
                "readonly": true
              },
              "position": {
                "x": 552,
                "y": 16
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
                      "range": "[7:0]",
                      "size": 8
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
                      "range": "[7:0]",
                      "size": 8
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
                "block": "869cdf80-d1c6-43f9-b27a-a2297e7de303",
                "port": "constant-out"
              },
              "target": {
                "block": "64cada8b-972a-41e2-a42f-822bfdeb3caf",
                "port": "TABFILE"
              }
            },
            {
              "source": {
                "block": "fabee3b6-1818-4dba-8712-432250ae5377",
                "port": "out"
              },
              "target": {
                "block": "64cada8b-972a-41e2-a42f-822bfdeb3caf",
                "port": "din"
              },
              "size": 8
            },
            {
              "source": {
                "block": "64cada8b-972a-41e2-a42f-822bfdeb3caf",
                "port": "dout"
              },
              "target": {
                "block": "459c4732-a880-499f-9015-4bcef96a18fa",
                "port": "in"
              },
              "size": 8
            }
          ]
        }
      }
    },
    "9ba9b88634e5231968c90c94d0d1a11a67dd60cc": {
      "package": {
        "name": "PxsSprite",
        "version": "1.0",
        "description": "Draws a sprite in a position on the screen with orientation.",
        "author": "Juan Manuel Rico",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "42825077-fafc-4e85-ab47-0c3052e53228",
              "type": "basic.input",
              "data": {
                "name": "px_clk",
                "clock": false
              },
              "position": {
                "x": -192,
                "y": -112
              }
            },
            {
              "id": "34ef8db8-afa3-45e5-8f03-2f1db5f06301",
              "type": "basic.input",
              "data": {
                "name": "RGBStr_i",
                "range": "[25:0]",
                "clock": false,
                "size": 26
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
                "size": 26
              },
              "position": {
                "x": 2360,
                "y": 312
              }
            },
            {
              "id": "7a511261-4dfc-4d84-b0ac-745a854813d3",
              "type": "basic.input",
              "data": {
                "name": "sprite",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": -192,
                "y": 448
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
                "y": 576
              },
              "size": {
                "width": 392,
                "height": 80
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
                "x": 984,
                "y": 608
              },
              "size": {
                "width": 360,
                "height": 72
              }
            },
            {
              "id": "4aefd809-340f-4adb-a379-ea494ea714f1",
              "type": "basic.code",
              "data": {
                "code": "`define RGB 25:23\t\t// Pixel RGB (1:1:1)\n`define Active 0:0 \t\t// ActiveVideo\n\nreg [25:0] RGBStr_o;\n\nalways @(px_clk)\nbegin\n    RGBStr_o <= RGBStr_i;\n    if (RGBStr_i[`Active])\n        RGBStr_o[`RGB] <= pixel[2:0];  // Only three pixels for color.\n    else\n        RGBStr_o[`RGB] <= 3'b000;\nend\n",
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
                "x": 1528,
                "y": 136
              },
              "size": {
                "width": 672,
                "height": 416
              }
            },
            {
              "id": "75969b6b-3b58-49ef-b6c6-4a2952acf1c0",
              "type": "basic.code",
              "data": {
                "code": "reg [25:0] RGBStr_o;\n\nalways @(px_clk)\nbegin\n    RGBStr_o <= RGBStr_i;\nend",
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
                "x": 952,
                "y": 408
              },
              "size": {
                "width": 368,
                "height": 144
              }
            },
            {
              "id": "de0142b7-d162-498d-a511-24b30ff14dff",
              "type": "c2642c59f874e7feb7bbd62230a9d916fa2d0b70",
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
              "id": "f1881335-c2a3-40d6-8d56-c8a5bffd0107",
              "type": "basic.code",
              "data": {
                "code": "//@include TestCodeA.v\n\nTestCodeA\nTestCodeA_01\n(\n    px_clk,\n    RGBStr_i,\n    sprite,\n    addr,\n    RGBStr_o\n);",
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
                      "name": "sprite",
                      "range": "[7:0]",
                      "size": 8
                    }
                  ],
                  "out": [
                    {
                      "name": "addr",
                      "range": "[11:0]",
                      "size": 12
                    },
                    {
                      "name": "RGBStr_o",
                      "range": "[25:0]",
                      "size": 26
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
            }
          ],
          "wires": [
            {
              "source": {
                "block": "42825077-fafc-4e85-ab47-0c3052e53228",
                "port": "out"
              },
              "target": {
                "block": "de0142b7-d162-498d-a511-24b30ff14dff",
                "port": "9f1c6d9f-7298-44d0-8c68-344871c4714c"
              },
              "vertices": [
                {
                  "x": 824,
                  "y": -80
                },
                {
                  "x": 824,
                  "y": -40
                }
              ]
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
                  "x": 64,
                  "y": -80
                },
                {
                  "x": 64,
                  "y": 32
                }
              ]
            },
            {
              "source": {
                "block": "de0142b7-d162-498d-a511-24b30ff14dff",
                "port": "969e8c86-4a03-43e6-adc9-981e18ff5784"
              },
              "target": {
                "block": "4aefd809-340f-4adb-a379-ea494ea714f1",
                "port": "pixel"
              },
              "vertices": [
                {
                  "x": 1296,
                  "y": 152
                }
              ],
              "size": 4
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
                "block": "42825077-fafc-4e85-ab47-0c3052e53228",
                "port": "out"
              },
              "target": {
                "block": "4aefd809-340f-4adb-a379-ea494ea714f1",
                "port": "px_clk"
              },
              "vertices": [
                {
                  "x": 1400,
                  "y": -72
                }
              ]
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
                  "x": 824,
                  "y": -64
                }
              ]
            },
            {
              "source": {
                "block": "f1881335-c2a3-40d6-8d56-c8a5bffd0107",
                "port": "addr"
              },
              "target": {
                "block": "de0142b7-d162-498d-a511-24b30ff14dff",
                "port": "2945b2be-f193-4327-8baf-49fe9595cf81"
              },
              "vertices": [
                {
                  "x": 728,
                  "y": 168
                }
              ],
              "size": 12
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
              "vertices": [
                {
                  "x": 648,
                  "y": 480
                }
              ],
              "size": 26
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
              "size": 26
            }
          ]
        }
      }
    },
    "c2642c59f874e7feb7bbd62230a9d916fa2d0b70": {
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
              "id": "2945b2be-f193-4327-8baf-49fe9595cf81",
              "type": "basic.input",
              "data": {
                "name": "addr",
                "range": "[11:0]",
                "clock": false,
                "size": 12
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
      }
    }
  }
}