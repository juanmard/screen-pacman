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
            "x": -368,
            "y": 160
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
            "x": -184,
            "y": 224
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
            "x": -368,
            "y": 304
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
            "x": -368,
            "y": 384
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
            "x": -368,
            "y": 456
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
            "x": -368,
            "y": 528
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
            "x": 1432,
            "y": 568
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
            "x": 1432,
            "y": 672
          }
        },
        {
          "id": "1a218845-3219-480f-8d8b-5e816af73591",
          "type": "53799f725db8f0b8224a5f5c0ee42fd88dd685a8",
          "position": {
            "x": 1024,
            "y": 456
          },
          "size": {
            "width": 96,
            "height": 288
          }
        },
        {
          "id": "6e3a0d1b-2088-48e0-93d5-0adb3a19a78b",
          "type": "basic.code",
          "data": {
            "code": "reg [9:0] posx = 2*16;\nreg [9:0] posy = 5*16;\n\nassign sprite = 2;\n\nalways @(dyn_clk)\nbegin\n    if (left)\n        posx <= posx - 16;\n    if (right)\n        posx <= posx + 16;\n    if (up)\n        posy <= posy - 16;\n    if (down)\n        posy <= posy + 16;\nend",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "dyn_clk"
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
                }
              ],
              "out": [
                {
                  "name": "posx",
                  "range": "[9:0]",
                  "size": 10
                },
                {
                  "name": "posy",
                  "range": "[9:0]",
                  "size": 10
                },
                {
                  "name": "sprite",
                  "range": "[2:0]",
                  "size": 3
                }
              ]
            }
          },
          "position": {
            "x": 256,
            "y": 208
          },
          "size": {
            "width": 456,
            "height": 376
          }
        },
        {
          "id": "33d397e1-5ce2-49d1-9de0-870dda934809",
          "type": "cfd9babc26edba88e2152493023c4bef7c47f247",
          "position": {
            "x": -184,
            "y": 512
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "fab78907-7e9a-4237-b4f2-4a99020929ca",
          "type": "cfd9babc26edba88e2152493023c4bef7c47f247",
          "position": {
            "x": -184,
            "y": 440
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "cf27fbb5-9fb1-42ca-bba4-99b72ce9c7ca",
          "type": "cfd9babc26edba88e2152493023c4bef7c47f247",
          "position": {
            "x": -184,
            "y": 368
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "df331313-d2b1-4d6b-828a-64cd8871be7c",
          "type": "cfd9babc26edba88e2152493023c4bef7c47f247",
          "position": {
            "x": -184,
            "y": 288
          },
          "size": {
            "width": 96,
            "height": 64
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
            "block": "1a218845-3219-480f-8d8b-5e816af73591",
            "port": "42825077-fafc-4e85-ab47-0c3052e53228"
          },
          "vertices": [
            {
              "x": 912,
              "y": 216
            }
          ]
        },
        {
          "source": {
            "block": "34ef8db8-afa3-45e5-8f03-2f1db5f06301",
            "port": "out"
          },
          "target": {
            "block": "1a218845-3219-480f-8d8b-5e816af73591",
            "port": "34ef8db8-afa3-45e5-8f03-2f1db5f06301"
          },
          "vertices": [
            {
              "x": 856,
              "y": 256
            }
          ],
          "size": 26
        },
        {
          "source": {
            "block": "1a218845-3219-480f-8d8b-5e816af73591",
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
            "block": "6e3a0d1b-2088-48e0-93d5-0adb3a19a78b",
            "port": "posx"
          },
          "target": {
            "block": "1a218845-3219-480f-8d8b-5e816af73591",
            "port": "2a3a712b-f811-4d1f-800c-8bdffc0f012a"
          },
          "vertices": [
            {
              "x": 816,
              "y": 344
            }
          ],
          "size": 10
        },
        {
          "source": {
            "block": "6e3a0d1b-2088-48e0-93d5-0adb3a19a78b",
            "port": "posy"
          },
          "target": {
            "block": "1a218845-3219-480f-8d8b-5e816af73591",
            "port": "35fb9102-3e67-4c7c-9a31-b4723e05d5bc"
          },
          "vertices": [
            {
              "x": 784,
              "y": 448
            }
          ],
          "size": 10
        },
        {
          "source": {
            "block": "df331313-d2b1-4d6b-828a-64cd8871be7c",
            "port": "22ff3fa1-943b-4d1a-bd89-36e1c054d077"
          },
          "target": {
            "block": "6e3a0d1b-2088-48e0-93d5-0adb3a19a78b",
            "port": "left"
          }
        },
        {
          "source": {
            "block": "cf27fbb5-9fb1-42ca-bba4-99b72ce9c7ca",
            "port": "22ff3fa1-943b-4d1a-bd89-36e1c054d077"
          },
          "target": {
            "block": "6e3a0d1b-2088-48e0-93d5-0adb3a19a78b",
            "port": "right"
          }
        },
        {
          "source": {
            "block": "fab78907-7e9a-4237-b4f2-4a99020929ca",
            "port": "22ff3fa1-943b-4d1a-bd89-36e1c054d077"
          },
          "target": {
            "block": "6e3a0d1b-2088-48e0-93d5-0adb3a19a78b",
            "port": "up"
          }
        },
        {
          "source": {
            "block": "33d397e1-5ce2-49d1-9de0-870dda934809",
            "port": "22ff3fa1-943b-4d1a-bd89-36e1c054d077"
          },
          "target": {
            "block": "6e3a0d1b-2088-48e0-93d5-0adb3a19a78b",
            "port": "down"
          }
        },
        {
          "source": {
            "block": "df331313-d2b1-4d6b-828a-64cd8871be7c",
            "port": "22ff3fa1-943b-4d1a-bd89-36e1c054d077"
          },
          "target": {
            "block": "1a218845-3219-480f-8d8b-5e816af73591",
            "port": "194dace5-1ed9-45a9-b39e-a5f07ce420ee"
          },
          "vertices": [
            {
              "x": 80,
              "y": 368
            }
          ]
        },
        {
          "source": {
            "block": "cf27fbb5-9fb1-42ca-bba4-99b72ce9c7ca",
            "port": "22ff3fa1-943b-4d1a-bd89-36e1c054d077"
          },
          "target": {
            "block": "1a218845-3219-480f-8d8b-5e816af73591",
            "port": "4c3eb622-287d-4242-9e6c-61471b6dfd47"
          },
          "vertices": [
            {
              "x": 32,
              "y": 464
            }
          ]
        },
        {
          "source": {
            "block": "fab78907-7e9a-4237-b4f2-4a99020929ca",
            "port": "22ff3fa1-943b-4d1a-bd89-36e1c054d077"
          },
          "target": {
            "block": "1a218845-3219-480f-8d8b-5e816af73591",
            "port": "f8b0c591-e860-468b-83b6-117034220aa1"
          },
          "vertices": [
            {
              "x": -8,
              "y": 584
            }
          ]
        },
        {
          "source": {
            "block": "33d397e1-5ce2-49d1-9de0-870dda934809",
            "port": "22ff3fa1-943b-4d1a-bd89-36e1c054d077"
          },
          "target": {
            "block": "1a218845-3219-480f-8d8b-5e816af73591",
            "port": "98c27138-80f4-4125-8fac-5bd35bc7d645"
          },
          "vertices": [
            {
              "x": -48,
              "y": 672
            }
          ]
        },
        {
          "source": {
            "block": "6e3a0d1b-2088-48e0-93d5-0adb3a19a78b",
            "port": "sprite"
          },
          "target": {
            "block": "1a218845-3219-480f-8d8b-5e816af73591",
            "port": "d8a47dba-3e2f-450c-adcd-1163bfeb060b"
          },
          "vertices": [
            {
              "x": 760,
              "y": 576
            }
          ],
          "size": 3
        },
        {
          "source": {
            "block": "c23965e7-ac63-4cf5-97d1-1ca31e0aa918",
            "port": "out"
          },
          "target": {
            "block": "6e3a0d1b-2088-48e0-93d5-0adb3a19a78b",
            "port": "dyn_clk"
          }
        },
        {
          "source": {
            "block": "2ee24aa1-c564-4f74-ac6d-e456a4f66517",
            "port": "out"
          },
          "target": {
            "block": "df331313-d2b1-4d6b-828a-64cd8871be7c",
            "port": "c9e1af2a-6f09-4cf6-a5b3-fdf7ec2c6530"
          }
        },
        {
          "source": {
            "block": "f76a17c1-c4db-4043-9c7a-366a28595c47",
            "port": "out"
          },
          "target": {
            "block": "cf27fbb5-9fb1-42ca-bba4-99b72ce9c7ca",
            "port": "c9e1af2a-6f09-4cf6-a5b3-fdf7ec2c6530"
          }
        },
        {
          "source": {
            "block": "baf40555-8a68-4a71-91b2-d04885c48e5d",
            "port": "out"
          },
          "target": {
            "block": "fab78907-7e9a-4237-b4f2-4a99020929ca",
            "port": "c9e1af2a-6f09-4cf6-a5b3-fdf7ec2c6530"
          }
        },
        {
          "source": {
            "block": "3ef73ee7-c09a-438d-b5a9-6cafcac473d0",
            "port": "out"
          },
          "target": {
            "block": "33d397e1-5ce2-49d1-9de0-870dda934809",
            "port": "c9e1af2a-6f09-4cf6-a5b3-fdf7ec2c6530"
          }
        },
        {
          "source": {
            "block": "c23965e7-ac63-4cf5-97d1-1ca31e0aa918",
            "port": "out"
          },
          "target": {
            "block": "df331313-d2b1-4d6b-828a-64cd8871be7c",
            "port": "4bf41c17-a2da-4140-95f7-2a80d51b1e1a"
          }
        },
        {
          "source": {
            "block": "c23965e7-ac63-4cf5-97d1-1ca31e0aa918",
            "port": "out"
          },
          "target": {
            "block": "cf27fbb5-9fb1-42ca-bba4-99b72ce9c7ca",
            "port": "4bf41c17-a2da-4140-95f7-2a80d51b1e1a"
          }
        },
        {
          "source": {
            "block": "c23965e7-ac63-4cf5-97d1-1ca31e0aa918",
            "port": "out"
          },
          "target": {
            "block": "fab78907-7e9a-4237-b4f2-4a99020929ca",
            "port": "4bf41c17-a2da-4140-95f7-2a80d51b1e1a"
          }
        },
        {
          "source": {
            "block": "c23965e7-ac63-4cf5-97d1-1ca31e0aa918",
            "port": "out"
          },
          "target": {
            "block": "33d397e1-5ce2-49d1-9de0-870dda934809",
            "port": "4bf41c17-a2da-4140-95f7-2a80d51b1e1a"
          }
        }
      ]
    }
  },
  "dependencies": {
    "53799f725db8f0b8224a5f5c0ee42fd88dd685a8": {
      "package": {
        "name": "",
        "version": "",
        "description": "",
        "author": "",
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
                "x": -184,
                "y": 0
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
                "x": 1976,
                "y": 72
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
              "id": "2a3a712b-f811-4d1f-800c-8bdffc0f012a",
              "type": "basic.input",
              "data": {
                "name": "posx",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": -200,
                "y": 280
              }
            },
            {
              "id": "35fb9102-3e67-4c7c-9a31-b4723e05d5bc",
              "type": "basic.input",
              "data": {
                "name": "posy",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": -200,
                "y": 344
              }
            },
            {
              "id": "d8a47dba-3e2f-450c-adcd-1163bfeb060b",
              "type": "basic.input",
              "data": {
                "name": "sprite",
                "range": "[2:0]",
                "clock": false,
                "size": 3
              },
              "position": {
                "x": -200,
                "y": 400
              }
            },
            {
              "id": "194dace5-1ed9-45a9-b39e-a5f07ce420ee",
              "type": "basic.input",
              "data": {
                "name": "left",
                "clock": false
              },
              "position": {
                "x": -200,
                "y": 472
              }
            },
            {
              "id": "4c3eb622-287d-4242-9e6c-61471b6dfd47",
              "type": "basic.input",
              "data": {
                "name": "right",
                "clock": false
              },
              "position": {
                "x": -200,
                "y": 552
              }
            },
            {
              "id": "f8b0c591-e860-468b-83b6-117034220aa1",
              "type": "basic.input",
              "data": {
                "name": "up",
                "clock": false
              },
              "position": {
                "x": -200,
                "y": 632
              }
            },
            {
              "id": "98c27138-80f4-4125-8fac-5bd35bc7d645",
              "type": "basic.input",
              "data": {
                "name": "down",
                "clock": false
              },
              "position": {
                "x": -200,
                "y": 712
              }
            },
            {
              "id": "68852783-b999-43a1-8d63-a88fdee4b265",
              "type": "ee8fec16d2fff56668fc4eda6a17d2dbf1878372",
              "position": {
                "x": 952,
                "y": 0
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "4aefd809-340f-4adb-a379-ea494ea714f1",
              "type": "basic.code",
              "data": {
                "code": "`define RGB 25:23\t\t// Pixel RGB (1:1:1)\n`define Active 0:0 \t\t// ActiveVideo\n`define YC 12:3\t\t\t// Y Coordinate\n`define XC 22:13\t\t// X Coordinate\n\nlocalparam sprw = 16;\nlocalparam sprh = 16;\n\nreg [25:0] RGBStr_o;\n\nalways @(px_clk)\nbegin\n    RGBStr_o <= RGBStr_i;\n    if (\n        (RGBStr_i[`Active]) &&\n        (RGBStr_i[`XC] >= posx) && (RGBStr_i[`XC] < posx + sprw) &&\n        (RGBStr_i[`YC] >= posy) && (RGBStr_i[`YC] < posy + sprh)\n        )\n    begin\n        RGBStr_o[`RGB] <= pixel[2:0];\n    end\nend",
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
                "x": 1200,
                "y": -80
              },
              "size": {
                "width": 656,
                "height": 368
              }
            },
            {
              "id": "f1881335-c2a3-40d6-8d56-c8a5bffd0107",
              "type": "basic.code",
              "data": {
                "code": "`define YC 12:3\t\t\t// Y Coordinate\n`define XC 22:13\t\t// X Coordinate\n\nreg [10:0] addr;\nreg [25:0] RGBStr_o;\nreg [9:0] posx_o;\nreg [9:0] posy_o;\n\nalways @(px_clk)\nbegin\n    RGBStr_o <= RGBStr_i;\n    posx_o <= posx_i;\n    posy_o <= posy_i;\n    \n    addr <= {sprite, RGBStr_i[6:3], RGBStr_i[16:13]};\n    if (left)\n        addr <= {sprite, RGBStr_i[6:3],~RGBStr_i[16:13]};\n    if (right)\n        addr <= {sprite, ~RGBStr_i[6:3],RGBStr_i[16:13]};\n    if (up)\n        addr <= {sprite, RGBStr_i[16:13],~RGBStr_i[6:3]};\n    if (down)\n        addr <= {sprite, ~RGBStr_i[16:13],RGBStr_i[6:3]};\nend",
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
                      "range": "[2:0]",
                      "size": 3
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
                "width": 712,
                "height": 496
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
                "block": "68852783-b999-43a1-8d63-a88fdee4b265",
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
                "block": "68852783-b999-43a1-8d63-a88fdee4b265",
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
                  "x": 664,
                  "y": 0
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
                "block": "f1881335-c2a3-40d6-8d56-c8a5bffd0107",
                "port": "RGBStr_o"
              },
              "target": {
                "block": "4aefd809-340f-4adb-a379-ea494ea714f1",
                "port": "RGBStr_i"
              },
              "vertices": [
                {
                  "x": 1032,
                  "y": 272
                },
                {
                  "x": 1096,
                  "y": 104
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
                "block": "194dace5-1ed9-45a9-b39e-a5f07ce420ee",
                "port": "out"
              },
              "target": {
                "block": "f1881335-c2a3-40d6-8d56-c8a5bffd0107",
                "port": "left"
              }
            },
            {
              "source": {
                "block": "4c3eb622-287d-4242-9e6c-61471b6dfd47",
                "port": "out"
              },
              "target": {
                "block": "f1881335-c2a3-40d6-8d56-c8a5bffd0107",
                "port": "right"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "f8b0c591-e860-468b-83b6-117034220aa1",
                "port": "out"
              },
              "target": {
                "block": "f1881335-c2a3-40d6-8d56-c8a5bffd0107",
                "port": "up"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "98c27138-80f4-4125-8fac-5bd35bc7d645",
                "port": "out"
              },
              "target": {
                "block": "f1881335-c2a3-40d6-8d56-c8a5bffd0107",
                "port": "down"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "f1881335-c2a3-40d6-8d56-c8a5bffd0107",
                "port": "addr"
              },
              "target": {
                "block": "68852783-b999-43a1-8d63-a88fdee4b265",
                "port": "620b1504-1375-43cb-a009-b39a60b94e28"
              },
              "size": 11
            },
            {
              "source": {
                "block": "d8a47dba-3e2f-450c-adcd-1163bfeb060b",
                "port": "out"
              },
              "target": {
                "block": "f1881335-c2a3-40d6-8d56-c8a5bffd0107",
                "port": "sprite"
              },
              "size": 3
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
                "block": "f1881335-c2a3-40d6-8d56-c8a5bffd0107",
                "port": "posx_o"
              },
              "target": {
                "block": "4aefd809-340f-4adb-a379-ea494ea714f1",
                "port": "posx"
              },
              "vertices": [
                {
                  "x": 1080,
                  "y": 320
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
                "block": "4aefd809-340f-4adb-a379-ea494ea714f1",
                "port": "posy"
              },
              "vertices": [
                {
                  "x": 1128,
                  "y": 408
                }
              ],
              "size": 10
            }
          ]
        }
      }
    },
    "ee8fec16d2fff56668fc4eda6a17d2dbf1878372": {
      "package": {
        "name": "",
        "version": "",
        "description": "",
        "author": "",
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
                "local": false
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
                "code": "//@include BmpROM.v\n\nBmpROM\n#(\n    .BMPFILE(BMPFILE)\n)\nBmpROM_01\n(\n    clk,    // System clock.          \n    add,    // Address in ROM.\n    pixel   // Pixel in address.        \n);",
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
    },
    "cfd9babc26edba88e2152493023c4bef7c47f247": {
      "package": {
        "name": "Debouncer",
        "version": "1.0.0",
        "description": "Remove the rebound on a mechanical switch",
        "author": "Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%2090%2040%22%3E%3Cpath%20d=%22M-251.547%20436.672h22.802v-30.353h5.862v30.353h5.259v-30.353h3.447v30.353h2.984v-30.353h3.506v30.523h6.406V405.77h38.868%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%221.4%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M-232.57%20403.877l26.946%2032.391M-205.624%20403.877l-26.946%2032.391%22%20fill=%22none%22%20stroke=%22red%22%20stroke-width=%223%22%20stroke-linecap=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "4bf41c17-a2da-4140-95f7-2a80d51b1e1a",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 48,
                "y": 144
              }
            },
            {
              "id": "22ff3fa1-943b-4d1a-bd89-36e1c054d077",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 768,
                "y": 208
              }
            },
            {
              "id": "c9e1af2a-6f09-4cf6-a5b3-fdf7ec2c6530",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 48,
                "y": 272
              }
            },
            {
              "id": "92490e7e-c3ba-4e9c-a917-2a771d99f1ef",
              "type": "basic.code",
              "data": {
                "code": "//-- Debouncer Circuit\n//-- It produces a stable output when the\n//-- input signal is bouncing\n\nreg btn_prev = 0;\nreg btn_out_r = 0;\n\nreg [16:0] counter = 0;\n\n\nalways @(posedge clk) begin\n\n  //-- If btn_prev and btn_in are differents\n  if (btn_prev ^ in == 1'b1) begin\n    \n      //-- Reset the counter\n      counter <= 0;\n      \n      //-- Capture the button status\n      btn_prev <= in;\n  end\n    \n  //-- If no timeout, increase the counter\n  else if (counter[16] == 1'b0)\n      counter <= counter + 1;\n      \n  else\n    //-- Set the output to the stable value\n    btn_out_r <= btn_prev;\n\nend\n\nassign out = btn_out_r;\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "in"
                    }
                  ],
                  "out": [
                    {
                      "name": "out"
                    }
                  ]
                }
              },
              "position": {
                "x": 264,
                "y": 112
              },
              "size": {
                "width": 384,
                "height": 256
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "92490e7e-c3ba-4e9c-a917-2a771d99f1ef",
                "port": "out"
              },
              "target": {
                "block": "22ff3fa1-943b-4d1a-bd89-36e1c054d077",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "4bf41c17-a2da-4140-95f7-2a80d51b1e1a",
                "port": "out"
              },
              "target": {
                "block": "92490e7e-c3ba-4e9c-a917-2a771d99f1ef",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "c9e1af2a-6f09-4cf6-a5b3-fdf7ec2c6530",
                "port": "out"
              },
              "target": {
                "block": "92490e7e-c3ba-4e9c-a917-2a771d99f1ef",
                "port": "in"
              }
            }
          ]
        }
      }
    }
  }
}