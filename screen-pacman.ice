{
  "version": "1.1",
  "package": {
    "name": "screen-pacman",
    "version": "1.0",
    "description": "Pacman game for VGA monitor.",
    "author": "Juan Manuel Rico",
    "image": ""
  },
  "design": {
    "board": "TinyFPGA-B2",
    "graph": {
      "blocks": [
        {
          "id": "32d74c4d-7160-465a-934e-b22856c81809",
          "type": "basic.output",
          "data": {
            "name": "vsync",
            "pins": [
              {
                "index": "0",
                "name": "PIN_13",
                "value": "J1"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1240,
            "y": 216
          }
        },
        {
          "id": "3770cf33-d4ed-4df6-86d2-06d1a63bf805",
          "type": "basic.output",
          "data": {
            "name": "hsync",
            "pins": [
              {
                "index": "0",
                "name": "PIN_12",
                "value": "H1"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1240,
            "y": 288
          }
        },
        {
          "id": "aff324f5-ba0f-4ec2-9777-20a639bc5709",
          "type": "basic.output",
          "data": {
            "name": "red",
            "pins": [
              {
                "index": "0",
                "name": "PIN_11",
                "value": "G1"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1240,
            "y": 392
          }
        },
        {
          "id": "b1a4c2f4-2d99-4937-b015-ff9e430942d8",
          "type": "basic.output",
          "data": {
            "name": "green",
            "pins": [
              {
                "index": "0",
                "name": "PIN_10",
                "value": "E1"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1240,
            "y": 464
          }
        },
        {
          "id": "07310885-e861-4aac-85d4-46b74ad5c8c8",
          "type": "basic.output",
          "data": {
            "name": "blue",
            "pins": [
              {
                "index": "0",
                "name": "PIN_9",
                "value": "D1"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 1240,
            "y": 536
          }
        },
        {
          "id": "0d8fa9bf-09bb-48ff-a3e2-ac23b5862f1f",
          "type": "basic.input",
          "data": {
            "name": "RX",
            "pins": [
              {
                "index": "0",
                "name": "PIN_22",
                "value": "A8"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": -448,
            "y": 656
          }
        },
        {
          "id": "e8025d36-25c5-4af3-b4b7-0a918647f22a",
          "type": "basic.constant",
          "data": {
            "name": "FDivider",
            "value": "62",
            "local": false
          },
          "position": {
            "x": -232,
            "y": 16
          }
        },
        {
          "id": "9d18b035-b561-4ad9-a389-a1ceac86d82f",
          "type": "basic.constant",
          "data": {
            "name": "COLOR",
            "value": "3'b100",
            "local": false
          },
          "position": {
            "x": 192,
            "y": 72
          }
        },
        {
          "id": "611b45b6-57b1-492d-ad9a-baf1bc93ef50",
          "type": "7d29b152814bf71b6196f60482e77e954b60c880",
          "position": {
            "x": 1032,
            "y": 344
          },
          "size": {
            "width": 96,
            "height": 160
          }
        },
        {
          "id": "6d9eaa32-a544-49e0-9184-aef86469ea90",
          "type": "e304dcebf8f3416db8e9b0230b3a516bbbcd0aaa",
          "position": {
            "x": -232,
            "y": 152
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "5ece7de5-792d-4c04-876a-1a887c0f522f",
          "type": "6663b89fb88d9e21e2124fe554d8341e8285c21d",
          "position": {
            "x": 192,
            "y": 288
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "26ba106e-42c3-422f-b4b6-e0522205c909",
          "type": "429fbcb9c06e515546027e073609a9fd57c51b74",
          "position": {
            "x": 192,
            "y": 440
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "a3604b35-a173-4f69-9c6c-f5dd7ecb79f2",
          "type": "c4dd08263a85a91ba53e2ae2b38de344c5efcb52",
          "position": {
            "x": 192,
            "y": 360
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "e71aa2b6-d792-4a79-ad42-6f00b21802de",
          "type": "f8a63bec44260e47587e9fd93ceabbb59604aa0f",
          "position": {
            "x": -288,
            "y": 640
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "36751f23-7e07-42a1-afbd-c4ab4edfb7c6",
          "type": "basic.code",
          "data": {
            "code": "reg [7:0] control;\n\nalways @(posedge rcv)\nbegin\n    control <= 8'd0;\n    case (data)\n                 8'h6A: control[5] <= 1'b1; // j - left\n                 8'h6C: control[4] <= 1'b1; // l - right\n                 8'h69: control[3] <= 1'b1; // i - up\n                 8'h6B: control[2] <= 1'b1; // k - down\n                 8'h61: control[1] <= 1'b1; // a - btn1\n                 8'h73: control[0] <= 1'b1; // s - btn2\n                 8'h67: control[1:0] <=  2'b11; // g - guardar\n               default: control <= 8'd0;\n\n    endcase\nend",
            "params": [],
            "ports": {
              "in": [
                {
                  "name": "rcv"
                },
                {
                  "name": "data",
                  "range": "[7:0]",
                  "size": 8
                }
              ],
              "out": [
                {
                  "name": "control",
                  "range": "[7:0]",
                  "size": 8
                }
              ]
            }
          },
          "position": {
            "x": 56,
            "y": 560
          },
          "size": {
            "width": 440,
            "height": 328
          }
        },
        {
          "id": "0d327767-31d7-4811-800c-3c37c18a5dee",
          "type": "8b89a54940796d87a750d07e9b511ed41621037e",
          "position": {
            "x": -104,
            "y": 608
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "5df1d6ab-a4a4-4285-a5c1-b174adfd4b49",
          "type": "c94732518b42d2b0011567bd06f2f41782e50c85",
          "position": {
            "x": 720,
            "y": 328
          },
          "size": {
            "width": 96,
            "height": 192
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "611b45b6-57b1-492d-ad9a-baf1bc93ef50",
            "port": "15e22576-89ce-4ed0-9723-78df34e2a47a"
          },
          "target": {
            "block": "b1a4c2f4-2d99-4937-b015-ff9e430942d8",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "611b45b6-57b1-492d-ad9a-baf1bc93ef50",
            "port": "cb38b8eb-59d9-49cb-8b99-6d3408ccf994"
          },
          "target": {
            "block": "3770cf33-d4ed-4df6-86d2-06d1a63bf805",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "611b45b6-57b1-492d-ad9a-baf1bc93ef50",
            "port": "eed4ed07-b129-4341-852b-d506af77fcf0"
          },
          "target": {
            "block": "32d74c4d-7160-465a-934e-b22856c81809",
            "port": "in"
          },
          "vertices": [
            {
              "x": 1192,
              "y": 280
            }
          ]
        },
        {
          "source": {
            "block": "611b45b6-57b1-492d-ad9a-baf1bc93ef50",
            "port": "2abf4a55-a7e3-482a-8e13-477de4094d12"
          },
          "target": {
            "block": "aff324f5-ba0f-4ec2-9777-20a639bc5709",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "611b45b6-57b1-492d-ad9a-baf1bc93ef50",
            "port": "bf836ab8-2858-4d0a-9420-f98c587b5021"
          },
          "target": {
            "block": "07310885-e861-4aac-85d4-46b74ad5c8c8",
            "port": "in"
          },
          "vertices": [
            {
              "x": 1192,
              "y": 528
            }
          ]
        },
        {
          "source": {
            "block": "9d18b035-b561-4ad9-a389-a1ceac86d82f",
            "port": "constant-out"
          },
          "target": {
            "block": "5ece7de5-792d-4c04-876a-1a887c0f522f",
            "port": "6fc99546-ebe2-4862-a4b1-81ce36d63b82"
          }
        },
        {
          "source": {
            "block": "e8025d36-25c5-4af3-b4b7-0a918647f22a",
            "port": "constant-out"
          },
          "target": {
            "block": "6d9eaa32-a544-49e0-9184-aef86469ea90",
            "port": "f2a67f7b-0098-4cbf-afd4-f46fe2fe0db8"
          }
        },
        {
          "source": {
            "block": "6d9eaa32-a544-49e0-9184-aef86469ea90",
            "port": "e84dbc94-005f-4010-aaa3-62116805de5a"
          },
          "target": {
            "block": "5ece7de5-792d-4c04-876a-1a887c0f522f",
            "port": "03ffa583-169d-4213-a75b-dd41755aa32a"
          },
          "vertices": [
            {
              "x": -56,
              "y": 320
            }
          ],
          "size": 23
        },
        {
          "source": {
            "block": "6d9eaa32-a544-49e0-9184-aef86469ea90",
            "port": "6e4ac81b-0abc-4441-a529-d2cb74e0a28c"
          },
          "target": {
            "block": "5ece7de5-792d-4c04-876a-1a887c0f522f",
            "port": "69d500d0-9824-46b8-ae9c-cc19f55eefcb"
          },
          "vertices": [
            {
              "x": 80,
              "y": 176
            }
          ]
        },
        {
          "source": {
            "block": "6d9eaa32-a544-49e0-9184-aef86469ea90",
            "port": "6e4ac81b-0abc-4441-a529-d2cb74e0a28c"
          },
          "target": {
            "block": "5df1d6ab-a4a4-4285-a5c1-b174adfd4b49",
            "port": "42825077-fafc-4e85-ab47-0c3052e53228"
          },
          "vertices": [
            {
              "x": 512,
              "y": 176
            },
            {
              "x": 512,
              "y": 328
            }
          ]
        },
        {
          "source": {
            "block": "5ece7de5-792d-4c04-876a-1a887c0f522f",
            "port": "10563024-bd0a-4a4d-856c-4bb1dff3f104"
          },
          "target": {
            "block": "5df1d6ab-a4a4-4285-a5c1-b174adfd4b49",
            "port": "34ef8db8-afa3-45e5-8f03-2f1db5f06301"
          },
          "vertices": [
            {
              "x": 376,
              "y": 336
            }
          ],
          "size": 26
        },
        {
          "source": {
            "block": "6d9eaa32-a544-49e0-9184-aef86469ea90",
            "port": "e84dbc94-005f-4010-aaa3-62116805de5a"
          },
          "target": {
            "block": "26ba106e-42c3-422f-b4b6-e0522205c909",
            "port": "82f17f8e-ae05-48a4-a20c-51d02286ecff"
          },
          "vertices": [
            {
              "x": -56,
              "y": 448
            }
          ],
          "size": 23
        },
        {
          "source": {
            "block": "5df1d6ab-a4a4-4285-a5c1-b174adfd4b49",
            "port": "eeb7f72c-5a73-4347-9c78-1a37d276caa2"
          },
          "target": {
            "block": "611b45b6-57b1-492d-ad9a-baf1bc93ef50",
            "port": "203b57b2-fe52-486c-841b-e4a718c21d3f"
          },
          "size": 26
        },
        {
          "source": {
            "block": "0d8fa9bf-09bb-48ff-a3e2-ac23b5862f1f",
            "port": "out"
          },
          "target": {
            "block": "e71aa2b6-d792-4a79-ad42-6f00b21802de",
            "port": "36c50fc8-6f7a-4cca-a448-8ba0a032fd4f"
          }
        },
        {
          "source": {
            "block": "e71aa2b6-d792-4a79-ad42-6f00b21802de",
            "port": "a40f5065-af61-4b43-8f29-35e9a13f7651"
          },
          "target": {
            "block": "36751f23-7e07-42a1-afbd-c4ab4edfb7c6",
            "port": "data"
          },
          "size": 8
        },
        {
          "source": {
            "block": "36751f23-7e07-42a1-afbd-c4ab4edfb7c6",
            "port": "control"
          },
          "target": {
            "block": "5df1d6ab-a4a4-4285-a5c1-b174adfd4b49",
            "port": "3217ec85-fb74-460a-8755-44590703b97c"
          },
          "vertices": [
            {
              "x": 576,
              "y": 560
            }
          ],
          "size": 8
        },
        {
          "source": {
            "block": "e71aa2b6-d792-4a79-ad42-6f00b21802de",
            "port": "90c78331-94f6-48ef-8d69-1ccf4b9eb9b5"
          },
          "target": {
            "block": "0d327767-31d7-4811-800c-3c37c18a5dee",
            "port": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2"
          }
        },
        {
          "source": {
            "block": "0d327767-31d7-4811-800c-3c37c18a5dee",
            "port": "ffdd9aa2-aea3-4aa9-8431-80e799226774"
          },
          "target": {
            "block": "36751f23-7e07-42a1-afbd-c4ab4edfb7c6",
            "port": "rcv"
          }
        },
        {
          "source": {
            "block": "a3604b35-a173-4f69-9c6c-f5dd7ecb79f2",
            "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
          },
          "target": {
            "block": "5df1d6ab-a4a4-4285-a5c1-b174adfd4b49",
            "port": "28df90fe-d42a-4e8e-90d7-6d7b98b60d4a"
          },
          "vertices": [
            {
              "x": 344,
              "y": 408
            }
          ]
        },
        {
          "source": {
            "block": "26ba106e-42c3-422f-b4b6-e0522205c909",
            "port": "1e201ff8-5636-44f0-87aa-f8ee3cee39ad"
          },
          "target": {
            "block": "5df1d6ab-a4a4-4285-a5c1-b174adfd4b49",
            "port": "7fb08218-3b3a-434f-9f27-7778366a8142"
          }
        }
      ]
    }
  },
  "dependencies": {
    "7d29b152814bf71b6196f60482e77e954b60c880": {
      "package": {
        "name": "PxsVGAComp",
        "version": "1.0",
        "description": "Extract VGA components of a stream",
        "author": "Sergio Cuenca",
        "image": "%3Csvg%20xmlns:osb=%22http://www.openswatchbook.org/uri/2009/osb%22%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22755.437%22%20height=%22425.956%22%20viewBox=%220%200%20708.22224%20399.33334%22%3E%3Cdefs%3E%3ClinearGradient%20id=%22b%22%20osb:paint=%22gradient%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#ff0012%22/%3E%3Cstop%20offset=%22.217%22%20stop-color=%22#ee14e0%22/%3E%3Cstop%20offset=%22.367%22%20stop-color=%22#1a42b2%22/%3E%3Cstop%20offset=%22.491%22%20stop-color=%22#1dfff6%22/%3E%3Cstop%20offset=%22.638%22%20stop-color=%22#16e300%22/%3E%3Cstop%20offset=%22.782%22%20stop-color=%22#fdff0b%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#ff722e%22/%3E%3C/linearGradient%3E%3ClinearGradient%20xlink:href=%22#a%22%20id=%22c%22%20x1=%22206.272%22%20y1=%22470.729%22%20x2=%22529.407%22%20y2=%22470.729%22%20gradientUnits=%22userSpaceOnUse%22/%3E%3ClinearGradient%20id=%22a%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#d8d8d7%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#d8d8d7%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20xlink:href=%22#b%22%20id=%22d%22%20x1=%22626.311%22%20y1=%22631.444%22%20x2=%22725.472%22%20y2=%22479.978%22%20gradientUnits=%22userSpaceOnUse%22/%3E%3C/defs%3E%3Cg%20transform=%22translate(-16.909%20-250.314)%22%3E%3Crect%20width=%22702.222%22%20height=%22393.333%22%20x=%22-28.889%22%20y=%22-48.322%22%20transform=%22translate(48.798%20301.636)%22%20ry=%2271.111%22%20fill=%22#fff%22%20fill-rule=%22evenodd%22%20stroke=%22#000200%22%20stroke-width=%226%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M373.91%20326.754L528.57%20612.362l-321.428%202.857z%22%20fill=%22url(#c)%22%20fill-rule=%22evenodd%22%20stroke=%22#8c8c8c%22%20stroke-width=%225%22%20transform=%22translate(-42.915%20-25.272)%22/%3E%3Cpath%20transform=%22matrix(.98967%200%200%20.9846%20-41.814%20-16.08)%22%20d=%22M414.894%20392.788l-94.681%2023.404L108.51%20594.915%22%20fill=%22none%22%20stroke=%22#49d4c8%22%20stroke-width=%226%22/%3E%3Cpath%20transform=%22rotate(-7.693%20209.658%20736.89)%22%20d=%22M414.894%20392.788l307.425%2083.548-95.723%20170.707z%22%20fill=%22url(#d)%22%20fill-rule=%22evenodd%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "eed4ed07-b129-4341-852b-d506af77fcf0",
              "type": "basic.output",
              "data": {
                "name": "VSync"
              },
              "position": {
                "x": 2656,
                "y": -288
              }
            },
            {
              "id": "cb38b8eb-59d9-49cb-8b99-6d3408ccf994",
              "type": "basic.output",
              "data": {
                "name": "HSync"
              },
              "position": {
                "x": 2656,
                "y": -208
              }
            },
            {
              "id": "2abf4a55-a7e3-482a-8e13-477de4094d12",
              "type": "basic.output",
              "data": {
                "name": "Red"
              },
              "position": {
                "x": 2656,
                "y": -128
              }
            },
            {
              "id": "203b57b2-fe52-486c-841b-e4a718c21d3f",
              "type": "basic.input",
              "data": {
                "name": "RGBStr",
                "range": "[25:0]",
                "clock": false,
                "size": 26
              },
              "position": {
                "x": 1568,
                "y": -128
              }
            },
            {
              "id": "15e22576-89ce-4ed0-9723-78df34e2a47a",
              "type": "basic.output",
              "data": {
                "name": "Green"
              },
              "position": {
                "x": 2656,
                "y": -48
              }
            },
            {
              "id": "bf836ab8-2858-4d0a-9420-f98c587b5021",
              "type": "basic.output",
              "data": {
                "name": "Blue"
              },
              "position": {
                "x": 2656,
                "y": 32
              }
            },
            {
              "id": "fabbd2ae-d75a-443d-9b7e-b8205b86adb7",
              "type": "basic.code",
              "data": {
                "code": "// @include Pxs.vh\r\n// @include PxsVGAComp.v\r\n\r\n\r\n//-- Instantiate  PxsVGAComp module.\r\nPxsVGAComp \r\n PxsVGAComp1(\r\n\t\t\tRGBStr_i,\t// HSync, VSync, XCoord, YCoord, ActiveVideo, RGB(1:1:1)\r\n            HSync,      // Horizontal sync out\r\n            VSync,      // Vertical sync out\r\n            Red,        // RED vga output\r\n            Green,      // GREEN vga output\r\n            Blue        // BLUE vga output\r\n    );\r\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "RGBStr_i",
                      "range": "[25:0]",
                      "size": 26
                    }
                  ],
                  "out": [
                    {
                      "name": "VSync"
                    },
                    {
                      "name": "HSync"
                    },
                    {
                      "name": "Red"
                    },
                    {
                      "name": "Green"
                    },
                    {
                      "name": "Blue"
                    }
                  ]
                }
              },
              "position": {
                "x": 1800,
                "y": -296
              },
              "size": {
                "width": 720,
                "height": 400
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "fabbd2ae-d75a-443d-9b7e-b8205b86adb7",
                "port": "VSync"
              },
              "target": {
                "block": "eed4ed07-b129-4341-852b-d506af77fcf0",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "fabbd2ae-d75a-443d-9b7e-b8205b86adb7",
                "port": "HSync"
              },
              "target": {
                "block": "cb38b8eb-59d9-49cb-8b99-6d3408ccf994",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "fabbd2ae-d75a-443d-9b7e-b8205b86adb7",
                "port": "Red"
              },
              "target": {
                "block": "2abf4a55-a7e3-482a-8e13-477de4094d12",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "fabbd2ae-d75a-443d-9b7e-b8205b86adb7",
                "port": "Green"
              },
              "target": {
                "block": "15e22576-89ce-4ed0-9723-78df34e2a47a",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "fabbd2ae-d75a-443d-9b7e-b8205b86adb7",
                "port": "Blue"
              },
              "target": {
                "block": "bf836ab8-2858-4d0a-9420-f98c587b5021",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "203b57b2-fe52-486c-841b-e4a718c21d3f",
                "port": "out"
              },
              "target": {
                "block": "fabbd2ae-d75a-443d-9b7e-b8205b86adb7",
                "port": "RGBStr_i"
              },
              "size": 26
            }
          ]
        }
      }
    },
    "e304dcebf8f3416db8e9b0230b3a516bbbcd0aaa": {
      "package": {
        "name": "PxsSyncGen",
        "version": "1.0",
        "description": "VGA signal generator",
        "author": "Sergio Cuenca",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22117%22%20height=%2295%22%20viewBox=%220%200%20117%2095%22%20preserveAspectRatio=%22none%22%3E%3Cimage%20width=%22117%22%20height=%2295%22%20xlink:href=%22data:image/jpg;base64,%20/9j/4AAQSkZJRgABAQEAYABgAAD/4RDgRXhpZgAATU0AKgAAAAgABAE7AAIAAAAHAAAISodpAAQA%20AAABAAAIUpydAAEAAAAOAAAQyuocAAcAAAgMAAAAPgAAAAAc6gAAAAgAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHNlcmdpbwAAAAWQAwAC%20AAAAFAAAEKCQBAACAAAAFAAAELSSkQACAAAAAzM1AACSkgACAAAAAzM1AADqHAAHAAAIDAAACJQA%20AAAAHOoAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA%20AAAAAAAAAAAAAAAyMDE3OjExOjAyIDE0OjA5OjU4ADIwMTc6MTE6MDIgMTQ6MDk6NTgAAABzAGUA%20cgBnAGkAbwAAAP/hCxlodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvADw/eHBhY2tldCBiZWdp%20bj0n77u/JyBpZD0nVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkJz8+DQo8eDp4bXBtZXRhIHhtbG5z%20Ong9ImFkb2JlOm5zOm1ldGEvIj48cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3Jn%20LzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPjxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSJ1%20dWlkOmZhZjViZGQ1LWJhM2QtMTFkYS1hZDMxLWQzM2Q3NTE4MmYxYiIgeG1sbnM6ZGM9Imh0dHA6%20Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIi8+PHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9%20InV1aWQ6ZmFmNWJkZDUtYmEzZC0xMWRhLWFkMzEtZDMzZDc1MTgyZjFiIiB4bWxuczp4bXA9Imh0%20dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iPjx4bXA6Q3JlYXRlRGF0ZT4yMDE3LTExLTAyVDE0%20OjA5OjU4LjM0OTwveG1wOkNyZWF0ZURhdGU+PC9yZGY6RGVzY3JpcHRpb24+PHJkZjpEZXNjcmlw%20dGlvbiByZGY6YWJvdXQ9InV1aWQ6ZmFmNWJkZDUtYmEzZC0xMWRhLWFkMzEtZDMzZDc1MTgyZjFi%20IiB4bWxuczpkYz0iaHR0cDovL3B1cmwub3JnL2RjL2VsZW1lbnRzLzEuMS8iPjxkYzpjcmVhdG9y%20PjxyZGY6U2VxIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3lu%20dGF4LW5zIyI+PHJkZjpsaT5zZXJnaW88L3JkZjpsaT48L3JkZjpTZXE+DQoJCQk8L2RjOmNyZWF0%20b3I+PC9yZGY6RGVzY3JpcHRpb24+PC9yZGY6UkRGPjwveDp4bXBtZXRhPg0KICAgICAgICAgICAg%20ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg%20ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAg%20ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg%20ICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg%20ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg%20ICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg%20ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAg%20ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg%20ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAg%20ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg%20ICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg%20ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg%20ICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg%20ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAg%20ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg%20ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAg%20ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg%20ICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAg%20ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg%20ICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg%20ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg%20ICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg%20ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAg%20ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg%20ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAg%20ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg%20ICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg%20ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg%20ICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg%20ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAg%20ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg%20ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAg%20ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg%20ICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg%20ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg%20ICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8P3hwYWNrZXQgZW5kPSd3%20Jz8+/9sAQwAHBQUGBQQHBgUGCAcHCAoRCwoJCQoVDxAMERgVGhkYFRgXGx4nIRsdJR0XGCIuIiUo%20KSssKxogLzMvKjInKisq/9sAQwEHCAgKCQoUCwsUKhwYHCoqKioqKioqKioqKioqKioqKioqKioq%20KioqKioqKioqKioqKioqKioqKioqKioqKioq/8AAEQgAXwB1AwEiAAIRAQMRAf/EAB8AAAEFAQEB%20AQEBAAAAAAAAAAABAgMEBQYHCAkKC//EALUQAAIBAwMCBAMFBQQEAAABfQECAwAEEQUSITFBBhNR%20YQcicRQygZGhCCNCscEVUtHwJDNicoIJChYXGBkaJSYnKCkqNDU2Nzg5OkNERUZHSElKU1RVVldY%20WVpjZGVmZ2hpanN0dXZ3eHl6g4SFhoeIiYqSk5SVlpeYmZqio6Slpqeoqaqys7S1tre4ubrCw8TF%20xsfIycrS09TV1tfY2drh4uPk5ebn6Onq8fLz9PX29/j5+v/EAB8BAAMBAQEBAQEBAQEAAAAAAAAB%20AgMEBQYHCAkKC//EALURAAIBAgQEAwQHBQQEAAECdwABAgMRBAUhMQYSQVEHYXETIjKBCBRCkaGx%20wQkjM1LwFWJy0QoWJDThJfEXGBkaJicoKSo1Njc4OTpDREVGR0hJSlNUVVZXWFlaY2RlZmdoaWpz%20dHV2d3h5eoKDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJytLT1NXW%2019jZ2uLj5OXm5+jp6vLz9PX29/j5+v/aAAwDAQACEQMRAD8A+eGmT7HGfs8ePMbjLccL71F50f8A%20z7Rfm/8A8VWo1voH2OP/AImepY8xsH+zo/Rf+m9RfZ/D3/QU1P8A8Fsf/wAfpTxKvs+n2X29Dm9v%20Ds//AAGX+RTLxC3ST7NHlnZTy3YD396Z50f/AD7Rfm//AMVWh5GgbQP7V1PAOQP7Oj/+P0n2fw9/%200FNT/wDBbH/8fpPFR6J/+Av/ACH7eHZ/+Ay/yKYeI27yfZo8q6qOW7g+/tTPOj/59ovzf/4qtDyN%20A2kf2rqeCckf2dH/APH6T7P4e/6Cmp/+C2P/AOP0PFR7P/wF/wCQe3h2f/gMv8imHiNu8n2aPKuq%20jlu4Pv7Uzzo/+faL83/+KrRex0uTT7uTT9RvZJLeNZTHNZrGrDeqdRK3Pz56VkVca6mvd6eVvzRd%20OpGpfl6eTX5lmN4njlJto8om4ct/eA9femedH/z7Rfm//wAVWjHY6XDYWst9qN7FLdRGQxwWayKA%20JGXG4yrn7melN+z+Hv8AoKan/wCC2P8A+P1DxUdktv7r/wAiPrELvf7pf5FOF4pJCGto8BGbgt2U%20n19qZ50f/PtF+b//ABVaAg0BTldV1MHGONOj/wDj9J9n8Pf9BTU//BbH/wDH6PrUbbP/AMBf+Qe3%20h2f/AIDL/IpwvFJIQ1tHgIzcFuyk+vtTPOj/AOfaL83/APiq0BBoCnK6rqYOMcadH/8AH6T7P4e/%206Cmp/wDgtj/+P0fWo22f/gL/AMg9vDs//AZf5FDzo/8An2i/N/8A4qir/wBn8Pf9BTU//BbH/wDH%206KX1ldn/AOAv/IPbw7P/AMBl/kUG/wCPGL/ro/8AJahq2y2/2OP97JjzGwfLHov+1UW22/56y/8A%20fof/ABVdM4O/3dV2NyGipttt/wA9Zf8Av0P/AIqjbbf89Zf+/Q/+KqOR/wBNDIaKm223/PWX/v0P%20/iqNtt/z1l/79D/4qjkf9NAWtN/48NW/69F/9HxVn1etLmC0EygtKk8flujxcEbg3ZweqinfatP/%20AOfOP/viT/47WShKMnpv5rsvMwXNGUtL3f6JBqX/AB4aT/16N/6PlrPq9d3MF2IVJaJII/LREi4A%203Fu7k9WNV9tt/wA9Zf8Av0P/AIqnTpyUdfPqu5VNOMde7/F3IaKm223/AD1l/wC/Q/8AiqNtt/z1%20l/79D/4qtOR/00akNFTbbb/nrL/36H/xVG22/wCesv8A36H/AMVRyP8ApoCGipttt/z1l/79D/4q%20ijkf9NADf8eMX/XR/wCS1DWg2nzfY4xvtsiRj/x9R+i/7VQ/2bP/AH7b/wACov8A4qonUhfddPyM%20/a0/5kVaKtf2bP8A37b/AMCov/iqP7Nn/v23/gVF/wDFVHtIdw9rT/mRVrW0O8ubGDVZ7G4ltpls%20wBJC5RhmeLPI5qn/AGbP/ftv/AqL/wCKq1bQm00/UvPlgzLbKiBJ0cs3nRtjAJPRSfwrOrKE48u+%20q/NGVaUJx5bp6r80L/wlXiH/AKDup/8AgZJ/jR/wlXiH/oO6n/4GSf41lUU/YUf5V9yH9WofyL7k%20av8AwlXiH/oO6n/4GSf40f8ACVeIf+g7qf8A4GSf41lUUewo/wAq+5B9WofyL7kav/CVeIf+g7qf%20/gZJ/jR/wlXiH/oO6n/4GSf41lUUewo/yr7kH1ah/IvuRq/8JV4h/wCg7qf/AIGSf40f8JV4h/6D%20up/+Bkn+NZVFHsKP8q+5B9WofyL7kav/AAlXiH/oO6n/AOBkn+NFZVFHsKP8q+5B9WofyL7kb7No%20/wBlQ/21q/32GfsKZPC/9N/85qPfo/8A0HNY/wDAFP8A4/WU3/HjF/10f+S1DWs1Vv8AxH07dvQX%20sZfzv/yX/wCRNvfo/wD0HNY/8AU/+P0b9H/6Dmsf+AKf/H6xKKm1X/n4/wAP8h+xl/O//Jf/AJE2%209+j/APQc1j/wBT/4/Rv0f/oOax/4Ap/8frEootV/5+P8P8g9jL+d/wDkv/yJt79H/wCg5rH/AIAp%20/wDH6N+j/wDQc1j/AMAU/wDj9YlFFqv/AD8f4f5B7GX87/8AJf8A5E29+j/9BzWP/AFP/j9G/R/+%20g5rH/gCn/wAfrEootV/5+P8AD/IPYy/nf/kv/wAibe/R/wDoOax/4Ap/8fo36P8A9BzWP/AFP/j9%20YlFFqv8Az8f4f5B7GX87/wDJf/kTb36P/wBBzWP/AABT/wCP0b9H/wCg5rH/AIAp/wDH6xKKLVf+%20fj/D/IPYy/nf/kv/AMibe/R/+g5rH/gCn/x+isSii1X/AJ+P8P8AIPYy/nf/AJL/APIm+2q6V9lT%20OhWO3e2P+Pjrhf8Apv8ASo/7V0n/AKAVj+Vx/wDJFI3ijX/scZ/tzUsmRgT9rk9F96i/4SrxD/0H%20dT/8DJP8azlCV/h7fbkc/sanb/yeX+RN/auk/wDQCsfyuP8A5Io/tXSf+gFY/lcf/JFQ/wDCVeIf%20+g7qf/gZJ/jR/wAJV4h/6Dup/wDgZJ/jU8kv5f8AyeQexqdv/J5f5E39q6T/ANAKx/K4/wDkij+1%20dJ/6AVj+Vx/8kVD/AMJV4h/6Dup/+Bkn+NH/AAlXiH/oO6n/AOBkn+NHJL+X/wAnkHsanb/yeX+R%20N/auk/8AQCsfyuP/AJIo/tXSf+gFY/lcf/JFQ/8ACVeIf+g7qf8A4GSf40f8JV4h/wCg7qf/AIGS%20f40ckv5f/J5B7Gp2/wDJ5f5E39q6T/0ArH8rj/5Io/tXSf8AoBWP5XH/AMkVD/wlXiH/AKDup/8A%20gZJ/jR/wlXiH/oO6n/4GSf40ckv5f/J5B7Gp2/8AJ5f5E39q6T/0ArH8rj/5Io/tXSf+gFY/lcf/%20ACRUP/CVeIf+g7qf/gZJ/jR/wlXiH/oO6n/4GSf40ckv5f8AyeQexqdv/J5f5E39q6T/ANAKx/K4%20/wDkij+1dJ/6AVj+Vx/8kVD/AMJV4h/6Dup/+Bkn+NH/AAlXiH/oO6n/AOBkn+NHJL+X/wAnkHsa%20nb/yeX+RN/auk/8AQCsfyuP/AJIoqH/hKvEP/Qd1P/wMk/xoo5Jfy/8Ak8g9jU7f+Ty/yJW8O3v2%20OMefpuRIx/5Clt6L/wBNKi/4Ry9/576Z/wCDW2/+OVVa6uPscZ8+TJkYE7z6LUX2u5/5+Jf++zXR%20OM7/ABLp9ny/xG/LX/mX3P8A+SL/APwjl7/z30z/AMGtt/8AHKP+Ecvf+e+mf+DW2/8AjlUPtdz/%20AM/Ev/fZo+13P/PxL/32anln/Mv/AAH/AO2Hy4j+Zfc//ki//wAI5e/899M/8Gtt/wDHKP8AhHL3%20/nvpn/g1tv8A45VD7Xc/8/Ev/fZo+13P/PxL/wB9mjln/Mv/AAH/AO2DlxH8y+5//JF//hHL3/nv%20pn/g1tv/AI5R/wAI5e/899M/8Gtt/wDHKofa7n/n4l/77NH2u5/5+Jf++zRyz/mX/gP/ANsHLiP5%20l9z/APki/wD8I5e/899M/wDBrbf/AByj/hHL3/nvpn/g1tv/AI5VD7Xc/wDPxL/32aPtdz/z8S/9%209mjln/Mv/Af/ALYOXEfzL7n/APJF/wD4Ry9/576Z/wCDW2/+OUf8I5e/899M/wDBrbf/AByqH2u5%20/wCfiX/vs0fa7n/n4l/77NHLP+Zf+A//AGwcuI/mX3P/AOSL/wDwjl7/AM99M/8ABrbf/HKP+Ecv%20f+e+mf8Ag1tv/jlUPtdz/wA/Ev8A32aPtdz/AM/Ev/fZo5Z/zL/wH/7YOXEfzL7n/wDJF/8A4Ry9%20/wCe+mf+DW2/+OUVQ+13P/PxL/32aKOWf8y/8B/+2DlxH8y+5/8AyR//2Q==%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "6e4ac81b-0abc-4441-a529-d2cb74e0a28c",
              "type": "basic.output",
              "data": {
                "name": "px_clk"
              },
              "position": {
                "x": 1000,
                "y": 48
              }
            },
            {
              "id": "0fca9eef-e2b8-43ed-bd1b-6470767c7dd1",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": true
              },
              "position": {
                "x": 248,
                "y": 128
              }
            },
            {
              "id": "e84dbc94-005f-4010-aaa3-62116805de5a",
              "type": "basic.output",
              "data": {
                "name": "VGAStr",
                "range": "[22:0]",
                "size": 23
              },
              "position": {
                "x": 1000,
                "y": 144
              }
            },
            {
              "id": "f2a67f7b-0098-4cbf-afd4-f46fe2fe0db8",
              "type": "basic.constant",
              "data": {
                "name": "FDivider",
                "value": "62",
                "local": false
              },
              "position": {
                "x": 408,
                "y": -64
              }
            },
            {
              "id": "1a50030c-6f74-48ad-b0b0-e928d4c6d5e9",
              "type": "691d984a94b89833a169721f34d525f1b32f9576",
              "position": {
                "x": 800,
                "y": 96
              },
              "size": {
                "width": 96,
                "height": 160
              }
            },
            {
              "id": "74d6fd2a-349e-4b1a-9e45-ef573b06afec",
              "type": "basic.info",
              "data": {
                "info": "<b>Feedback divider</b>\n\n62 - 16Mhz - TinyFPGA.</br>\n83 - 12Mhz - iceZum Alhambra.",
                "readonly": true
              },
              "position": {
                "x": 576,
                "y": -80
              },
              "size": {
                "width": 352,
                "height": 96
              }
            },
            {
              "id": "cab79a76-d2c0-4653-962b-6a550967a348",
              "type": "b78b9d229f9d35c85554374971213906a473160e",
              "position": {
                "x": 408,
                "y": 64
              },
              "size": {
                "width": 96,
                "height": 192
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "0fca9eef-e2b8-43ed-bd1b-6470767c7dd1",
                "port": "out"
              },
              "target": {
                "block": "cab79a76-d2c0-4653-962b-6a550967a348",
                "port": "1d7cba26-8a20-4d0d-a807-3d04c9da167d"
              }
            },
            {
              "source": {
                "block": "cab79a76-d2c0-4653-962b-6a550967a348",
                "port": "3c1e3bb9-fedd-4958-922d-f6bea987a9cd"
              },
              "target": {
                "block": "6e4ac81b-0abc-4441-a529-d2cb74e0a28c",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "cab79a76-d2c0-4653-962b-6a550967a348",
                "port": "1abb0e43-39a7-4a67-a9f3-814c1bcfa121"
              },
              "target": {
                "block": "1a50030c-6f74-48ad-b0b0-e928d4c6d5e9",
                "port": "339d597b-0dfa-4d6b-94f5-7ddaff388a11"
              },
              "vertices": [
                {
                  "x": 632,
                  "y": 176
                }
              ]
            },
            {
              "source": {
                "block": "cab79a76-d2c0-4653-962b-6a550967a348",
                "port": "d1e8b4bb-5fc8-4ed7-bb56-e77d0d3599d8"
              },
              "target": {
                "block": "1a50030c-6f74-48ad-b0b0-e928d4c6d5e9",
                "port": "0f34c3f0-e7b5-4d6b-910f-ee3d8a4caf34"
              }
            },
            {
              "source": {
                "block": "1a50030c-6f74-48ad-b0b0-e928d4c6d5e9",
                "port": "ff0be578-6fd7-4fac-80b2-2d09cb3b6430"
              },
              "target": {
                "block": "e84dbc94-005f-4010-aaa3-62116805de5a",
                "port": "in"
              },
              "size": 23
            },
            {
              "source": {
                "block": "cab79a76-d2c0-4653-962b-6a550967a348",
                "port": "0e4ec6f7-fe91-47bb-8666-305db4da1e5b"
              },
              "target": {
                "block": "1a50030c-6f74-48ad-b0b0-e928d4c6d5e9",
                "port": "e9af1631-d09a-427f-8cb0-2e41ce9931e3"
              }
            },
            {
              "source": {
                "block": "cab79a76-d2c0-4653-962b-6a550967a348",
                "port": "9c481124-0c6c-4f08-80f6-2ec1a16afd9b"
              },
              "target": {
                "block": "1a50030c-6f74-48ad-b0b0-e928d4c6d5e9",
                "port": "130d52fc-564a-4fcd-80ea-a8a3cc421411"
              },
              "size": 10
            },
            {
              "source": {
                "block": "cab79a76-d2c0-4653-962b-6a550967a348",
                "port": "e6d80a12-f2da-4827-8420-458a8727fc4d"
              },
              "target": {
                "block": "1a50030c-6f74-48ad-b0b0-e928d4c6d5e9",
                "port": "aa905f8d-a5b3-4174-b1e6-f477c86cd4ef"
              },
              "size": 10
            },
            {
              "source": {
                "block": "f2a67f7b-0098-4cbf-afd4-f46fe2fe0db8",
                "port": "constant-out"
              },
              "target": {
                "block": "cab79a76-d2c0-4653-962b-6a550967a348",
                "port": "77ae2e1b-9769-490a-a072-5562ea351075"
              }
            }
          ]
        }
      }
    },
    "691d984a94b89833a169721f34d525f1b32f9576": {
      "package": {
        "name": "PxsStrVGAJoin",
        "version": "1.0",
        "description": "Join the components of a VGA stream",
        "author": "Sergio Cuenca",
        "image": ""
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "0f34c3f0-e7b5-4d6b-910f-ee3d8a4caf34",
              "type": "basic.input",
              "data": {
                "name": "VSync",
                "clock": false
              },
              "position": {
                "x": 1520,
                "y": -328
              }
            },
            {
              "id": "e9af1631-d09a-427f-8cb0-2e41ce9931e3",
              "type": "basic.input",
              "data": {
                "name": "HSync",
                "clock": false
              },
              "position": {
                "x": 1520,
                "y": -248
              }
            },
            {
              "id": "339d597b-0dfa-4d6b-94f5-7ddaff388a11",
              "type": "basic.input",
              "data": {
                "name": "ActiveVideo",
                "clock": false
              },
              "position": {
                "x": 1520,
                "y": -88
              }
            },
            {
              "id": "ff0be578-6fd7-4fac-80b2-2d09cb3b6430",
              "type": "basic.output",
              "data": {
                "name": "VGAStr",
                "range": "[22:0]",
                "size": 23
              },
              "position": {
                "x": 2528,
                "y": -88
              }
            },
            {
              "id": "130d52fc-564a-4fcd-80ea-a8a3cc421411",
              "type": "basic.input",
              "data": {
                "name": "XCoord",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": 1520,
                "y": 16
              }
            },
            {
              "id": "aa905f8d-a5b3-4174-b1e6-f477c86cd4ef",
              "type": "basic.input",
              "data": {
                "name": "YCoord",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": 1512,
                "y": 112
              }
            },
            {
              "id": "fabbd2ae-d75a-443d-9b7e-b8205b86adb7",
              "type": "basic.code",
              "data": {
                "code": "// @include PxsStrVGAJoin.v\r\n\r\n\r\n//-- Instantiate PxsStrVGAJoin module.\r\nPxsStrVGAJoin \r\nPxsStrVGAJoin1(\r\n\tHSync,         // Horizontal sync out\r\n    VSync,         // Vertical sync out\r\n    XCoord,          // ScanX postion\r\n    YCoord,          // ScanY position \r\n    ActiveVideo,\r\n\tVGAStr\t// HSync, VSync, XCoord, YCoord, ActiveVideo, RGB(1:1:1)\r\n    );\r\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "VSync"
                    },
                    {
                      "name": "HSync"
                    },
                    {
                      "name": "ActiveVideo"
                    },
                    {
                      "name": "XCoord",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "YCoord",
                      "range": "[9:0]",
                      "size": 10
                    }
                  ],
                  "out": [
                    {
                      "name": "VGAStr",
                      "range": "[22:0]",
                      "size": 23
                    }
                  ]
                }
              },
              "position": {
                "x": 1928,
                "y": -304
              },
              "size": {
                "width": 448,
                "height": 496
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "0f34c3f0-e7b5-4d6b-910f-ee3d8a4caf34",
                "port": "out"
              },
              "target": {
                "block": "fabbd2ae-d75a-443d-9b7e-b8205b86adb7",
                "port": "VSync"
              }
            },
            {
              "source": {
                "block": "e9af1631-d09a-427f-8cb0-2e41ce9931e3",
                "port": "out"
              },
              "target": {
                "block": "fabbd2ae-d75a-443d-9b7e-b8205b86adb7",
                "port": "HSync"
              }
            },
            {
              "source": {
                "block": "339d597b-0dfa-4d6b-94f5-7ddaff388a11",
                "port": "out"
              },
              "target": {
                "block": "fabbd2ae-d75a-443d-9b7e-b8205b86adb7",
                "port": "ActiveVideo"
              }
            },
            {
              "source": {
                "block": "130d52fc-564a-4fcd-80ea-a8a3cc421411",
                "port": "out"
              },
              "target": {
                "block": "fabbd2ae-d75a-443d-9b7e-b8205b86adb7",
                "port": "XCoord"
              },
              "size": 10
            },
            {
              "source": {
                "block": "aa905f8d-a5b3-4174-b1e6-f477c86cd4ef",
                "port": "out"
              },
              "target": {
                "block": "fabbd2ae-d75a-443d-9b7e-b8205b86adb7",
                "port": "YCoord"
              },
              "size": 10
            },
            {
              "source": {
                "block": "fabbd2ae-d75a-443d-9b7e-b8205b86adb7",
                "port": "VGAStr"
              },
              "target": {
                "block": "ff0be578-6fd7-4fac-80b2-2d09cb3b6430",
                "port": "in"
              },
              "size": 23
            }
          ]
        }
      }
    },
    "b78b9d229f9d35c85554374971213906a473160e": {
      "package": {
        "name": "VGASyncGen",
        "version": "2.0",
        "description": "640x480@72Hz VGA synchronism generator.",
        "author": "Juan Manuel Rico",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22210mm%22%20height=%22297mm%22%20viewBox=%220%200%20744.09448819%201052.3622047%22%3E%3Cimage%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAABQAAAALQCAYAAADPfd1WAAAABHNCSVQICAgIfAhkiAAAIABJREFU%20eJzs3UuPJNm6JuT3W+ZRtS/nNLTUEoNWI1BPuEigRoz51cxATJjBiAFqEOIgaNHqPqgv5/Tepyoz%203NbHwMw9PKIyKyuvnmn5PFte5m5m7mG5Y8Xyb7223K26u8Nn867/e+d5TTKyzJEef5uq/zczf53q%20f5fU/5W/e/wfM5Z/lu6fUv1vU8tfZ9SrjP4xVZU1r5Ocv8i/BW7NGjlnyevlIf/y8ef89cM/yP/0%20N3/IX//xH+Wf/s2af/3H/zT/z/wn+dvlP04vf5lz/YOs+YdZ84ecZm9/Gz88ZO269z+Fb9TMut8b%20L7Zc2lRf99xWPz1e8lNO/TfJ/Lfp859zrv8tffof0vmrjFkZ+XdZ659ljL9NekkyMjOSzPR4laSj%205fJl7C2tT9fH4/zv52H9xzm9/g/y7/U/yH/yb/6r/Ef/7X+ef/Jv/sv8n//d/5x//K/+fv6bf/uf%205T/8V7/PX7xes/SaWa+yptJ5SPeSh7v9e/j2zaTWbXnpf3vZt41ny0qlqp7Xw/WnrP3XGeNfpOqf%20Z/Zfpef/npm/ypJ/kVH/Ot1/TuUxvfffs5KtXOjMSpb5+f+VHNel9KzLnR5JzYxOUmvmZXWS7f1/%20SfqUzpJX/Q/z5/Ff58/jH+fP9ffzT8c/yn+//Bf5X9e/zM+vfs7f1JJ/vvwxr3/8ezm9PqXPj3no%20V5njnMf6MZ2RMU9qCD7CpQN8Uf8+NewX+13q4JlRf8q6/t9Z8i9T4//Lmv8ja/8vSf9VUv8mqZ8y%205jmdx9SY6VlJ/pgelfSft76/16cSm2/Oy1ETAAAAAHAgAkAAAAAAODABIAAAAAAcmAAQAAAAAA5M%20AAgAAAAAByYABAAAAIADEwACAAAAwIEJAAEAAADgwASAAAAAAHBgAkAAAAAAODABIAAAAAAcmAAQ%20AAAAAA5MAAgAAAAAByYABAAAAIADEwAC8B0aL+6/6e1w7su+uQ/AR+mRkZH0KemHVJ+SVC59cWfZ%20l1u/PGt7Tnps9+Fr0SPVI5Vzlu6MjFQ/JKlU3+44ny9LTcH9dGa6ZlJrthr30v9uPe/WPp8acGXN%20yHqPQ+UzON37AL53y7Kku5JOqioZe1E0t/sAfJhRtZcv24ix+ynQmz2T2oO/Hkn9clRZlVRdCqPa%20ayRFO8DHGak8pPL7JH+Ryh8zc8o29DxlqR8z+3Vm1oxlpLqTPKRGpfMqNaZzMtxNJ1nT6UrSS5Ya%20+WGZ+WF2avy9vMqPGefH9FgzZ1J1TnLentlLxujbbAW+uEone7ucWbOFfw9Jb+Ff9zmV897PVjo/%20pedWE3em9vuNkzAB8P3qm7fBvoSAL94a68WZewA+Sl1OvmRJepvxd9kys6/P04mZTt300XBHNdN1%20MzM1SfXcWu48pXpJZbl5wkzqMqtKHcGd1c3J8Jrb4x556m/3ddX7nOyt3dZlKfz75gkAAQCAL2gf%20hPbzYKSug9COaSYA8GkJAAEAgC+mr9+tehvymR0FAJ+TABAAAPhCLjP+1jyFgDfhn+9aBYDPQgAI%20AAB8QXvwd/3479y/mL63i+KZDQgAn5wAEAAA+IJmtiuj7l84f/3Ov9uPBb/8iPC4uQEA78s7KAAA%208GXU7ey/S+j34vbsY8AdQxYA+Hinex8Au0pS9c7d4Gsy50wtT+32fD5f18/p4zvc1+xt5sila60a%202xfP7xNK1nVNzZmeMzMzGZ1U9rY7jTf55r2trNiutOoKq9zPzDlLn5O8zsxjZs6ZeUz3Y3pdU/28%20ffb+uFPptbPc4ZjhTcr4DfiGGN4AAABf0C+/A/DqFxcBEbAAwKcgAAQAAL6QS+B3vrl/+1Hgt2jD%20FgD4GN5JAQCAL+jmgh/1Mvx723cBAgAfQwAIAAB8WXX7EeDk6UrAv8IsQAD4YN5FAQCAL+gNV/79%20xfZf43sBAeB9CQABAIA7u3zs1xWqAeBzEADeWV9OYFby5qJnJnX5kuRk9Hixi+9G4X46W9NdOlmS%20zJGstXUs46ZpzpsT9dVbu28n77mry0DznNRjkvWp/63Hvd+tbK358gX1I+lTvHXy9bhcSGFvu31K%20+sekH7Zt1362kpxuPj6pduBrcfs9f2/oW2/bbN3uKyQEgPd1uvcBfO/mTJLOGGuS10m/zuxzMue2%20rh6Tekxdr5Q2koxUZip9DVPgS9tCvC0Y+eGx88cfHrKeRn5aH7PM5Ic1WSrJqMzurJmZ61awn5ck%20p5H0TL+h4L/mMPXmxj327VPb/66NS/t4SydYVelOLgPFOZ9Cj8rc+9efk/HnpH7KNRAcf07yc7or%20PUcyzkkek/5dtiBlDwzhjuacmfOctX/OOn/KeX2d82NlPv4hvf4hqTWpV0mNpCuVH1K1pjPTOSd5%20uPc/ge9YZUmqtnbaM5UlldP+vj/Te+B37bbrMZ3HXE+Wy/8A4L2ZxnBnndpDlO02X17t7Lqtb77t%20ZGS4MhpfiZEtkFuy5TDr2B/3U1DXtYV1tzFNV94Y/sEXU+ekXl9PtDzNClz3GYDJ09vkPt+1T3vg%20KH3mni5nSS6zWC+B9NhnAC779pt23OPFBRTUEHxNRp4PS95QD9dlpra2CwAfwugbAAAAAA5MAAgA%20AAAAByYABAAAAIADEwACAAAAwIEJAAEAAADgwASAAAAAAHBgAkDgo1VVRkbG2LqUOWfO5/OdjwoA%20AABIBIAAAAAAcGgCQAAAAAA4MAEgAAAAAByYABAAAAAADkwACAAAAAAHJgAEAAAAgAMTAN5VbYse%206Upmbfc3fjUAn1WPpE9JlqSXfeXY7vdpfzyTTq79dZ2T6uwr4U7qHdvVEHxpH9AnvqkZ39bB/dSO%20a3/50TND98snc9OYLu2t391/Vs+M7ow8b499Gdqlk0pmzU94rPBp/ZZK4dKCdbvHcXr3LnxOcyZV%20lTlnksoYS1KnVI/UOG1/dKWUB3hp9qUceVmWXCrwfr4cdd1eOSXrkvSPyfx9Uj9m62lHMv+YZE3G%203+yvvWwDglqzlUIKer4SvbfZ1NP9m8Frz6f121/Bvq9Sns9u7yerttuzNtfpzHR3qrbQpFPpa1te%20Ujml93DlNkSpqnRrv3ysS5v6rSOsmdQ2Vqs5cxprTn3OMjrVSXenM7L2zFqdPiX1Q6XOnX7dmZeg%20cFbm7CzvOocDX0j12yuCN1W7rYT45smV7ujyt3M786+vbwh+NQCfVZ/22X4P+4y/PTy5nQFYc58d%20uOQp/BMA8hXp56HfE7ME+dJ+y6jwEqRs95/Xvbe3p/WXGVZ1DRU//kj5jtXLdvSGdvtrswBrprpT%20PbeZqTcB9cw+rstM18xM0s9mAV5+qP6X+6k8zar+La6n2/W9h6D3AQAAAIADEwACAAAAwIEJAAEA%20AADgwASAAAAAAHBgAkAAAAAAODABIAAAAAAcmAAQ+GhjjMzMzDkzhm6Fb0N3p7uTJFWVqnq2DQAA%204CiM1AEAAADgwASAAAAAAHBgAkAAAAAAODABIAAAAAAcmAAQAAAAAA5MAAgAAAAAByYAvKPal6OT%201NzW9WXrvMMRwfubSWYla7b2u8z9cW3L7OtHJ33zvOqktHM+Qr17FwC+mN/SK4+kx7bMabvfp/1x%205TI06Yzr/Xm77lIol/qBO+nL8Hlk9NM4rnprsaO3bdVjb7lP+z9Vwtov99NJum766zontb7YqfZ9%20L33xuGn7fMtO9z6A790YSdIZY6TT6V6TPqfnzJjnmzcS+LpUJ70mdar8vHT+Luc8zCW/G6fMZc35%20YWStJLMzTntRf6rM3jqePs/0snxQCTQlPySpqm242W9uEL33nW/ZnDlnTqMyliVdY2uL+5OWZcn6%205qcB8E77QLErST11yElSlcqS9JK+BoBLKg/bYHMuqYxURuZeJVTVNV+syvMzivCJzZ5bG9uKjK3N%20VqVq5FRLxqwstWRUJbPzkJGRmZHOqUaWmfS5k/PI2IOT7k6nt7YMd9SXDrRHMiqZa9KvsgXTW3ud%206SxLZXQl88dkVGa/SlU/PZ9vkhj3rp7OYlY/nwnozBDfgksNvu4zAMdMlt5nBd70Lrchdtc++897%20Bx/peuYdgDt7n1DjaTZJzVOeZv49zfp7uezrbEAVMl+DsdWxfZnj16nMXOZMVY+Mfmrn421nIuGO%20Zl362Zkt6O59ksXz9tr7CZuUcy9HIAAEAAAAgAMTAAIAAADAgQkAAQAAAODABIAAAAAAcGACQAAA%20AAA4MAEgAAAAABzY6d4HAHy7xhg5pzPnTJJ0d7q3C8Qvy/LOa8WPMdJdv74TfCZjjO3WI6NG5r6+%20qlKlXQIAH+dSF1+WcG9LLVmWJTO1jdW6t5vS97tgBiAAAAAAHJgAEAAAAAAOTAAIAAAAAAcmAAQA%20AACAAxMAAgAAAMCBCQABAAAA4MAEgMBHqSRLJ0uSOZJ1v4R8ddK13ebNZeWrt26nXWqeu5tJer/t%20j2u+2J59++16AJ7rd+9yNXPpb3uc89THXm75xbL25YjBC8AH28dh6ZHRl8cjyTZoG2/oyiu9D+y2%20cR/fttO9D+DoqvyZcGBVWVJ5WJMfs+T1kvypH7NkyTIrvYycx8hale7K0iM1xxaydKSAfJRrsPyO%20cee1ld3sV5Wsfc7sc9LnzLzew7+ZTqWzpiqp6v0Vant+zbzfQBfge7QHeFtHmuf9Zu997Jqqmc45%20yZrOY0ZmaqzJnOnMjP2VujudTlXSBqEAH2yMU8bYYqCxVmb9mOR3SZ0yxsjs/UTL7L0PP2/9btUe%20GDop/i1zEg34ILfZ3WlunclayXnvVepmv3WfCZiu1H62aareubvbWSe5mf13Owvl5XoA3uy3nByZ%2015MtyXm7X+c8zci+nfF3mfV3s+5SfLQhDMCHqB7beOyiR9JLrtFQXfrpy37zOgt7o//9lvntAQAA%20AMCBCQABAAAA4MAEgAAAAABwYAJAAAAAADgwASAAAAAAHJgAEAAAAAAO7HTvAwC+XVWVZ1eR7053%20X+/DPY1R6U5SlSSZc+5bOrPnW58HAABH1N2Zc6ZrPh+v7es5NjMAAQAAAODABIAAAAAAcGACQAAA%20AAA4MAEgAAAAAByYABAAAAAADkwACAAAAAAHJgC8s8qa6svltkdG77+SWrfbvj5Jui77zby8QHft%20z3vfJXyourlq/KxkJhmdLL097n19sq2r3p7UlVRmln7DiwIABzaSHvvyITWXpH94834ZSeZWS/RI%20Z9mf9yWPF95kbuOyOu+PHtL9Q5KZ1LbtUgMnl3q49ltiCM634ZI46HSP5HTvAzi67l/7g9neOKo7%20NSvJKV0Pe1DyU6p+StJb0VPZg8Lt1qOTqu1tpMcHB4BPoSL80hi/UqDUyGlW1lReV+cxa5Ys+d3y%20kKo16ynpU1KV/FiVVOV1d5LOaS+CHtN5Kobg05rz0v9uy6pLW6uMGqnTKZnJuq5Za01qXpvjnDNZ%20vvghw3u51BjdfW3fp9Mpy6Lx8rldatLkzWHGvq730KN762OTJJWRH1L1+6T/IiO/28O9SmVJXYK+%20JFmS6kr3KdUj3a+fn4GEz2DU2IK8JEmls/Wz3TPnfkw9zLx6/XfJj2tGLfnbP53zd+mMJK/WP+U8%20RpJTMipZk2Rk1MiSH9OG39zZ7JnMmYzKvEYBW587xsj5PPdy+KnPTnr/e9D/fuucfrizyj7o7JGk%20nmbm1TnJ+Rf7z/2s0rPX+IjZf2YC8jEuNXjfzAAc/fS4a7st82nfWTO1zwgc3kMA4Bv3G08mX2vO%20fXbf3M8U9k3gd93+4ql7KDhrZDpxyN1tAfisdZ/dtyR5SNfcY5J+S1C9jffg22Gy0NFIfwAAgG/A%20NAMQAD6QABAAAPiyau4fC+48/0jxvLkJ+wDgUxEAAgAAAMCBCQABAIAvZD6/1Yv7v7hA3WWGIADw%20MQSAAADAF/Ti4723IeDtPvXiMQDwwQSAAADAl1W3s/9uv+vvRRD4ixmBAMCHEAACAHxj5pyZc2Zd%2011RVujvruubVq1d5fHy89+HBr5o5J/Oc9JruNbNnZs6ZvaZ7CwOrKlWVMca1jY+RDKMX7uz169dZ%20liXruubx8TE/LD9kyZK115xOp3sfHsBbeQsFAAC+kM7T9/p1Ui++4+/yuG5mAparAQPAxxIAAgAA%20d/aOi30IAQHgowgAAQCAL6v6Vy7+cZkl6ArAAPCpCAABAIAv6E2h3ssg8A3MAgSADyYABAAAvrD5%204vZy29semxEIAB9CAAgAAHxBb5sBCAB8Lq5Tfm899hR2bF9zUvtVz3rkNp+9fOLhad9KUttzAPgA%20la1X3fvaHtuqPO9/t/74st4AFeC5Sx9Z7/WcrqRqzVO/enmd235266ert5J39PZY+csH67GPtS4r%203tBu613v9ad0PbXXWS9nsdY+VnsyK8ZtwN0JAO9qJP2Q7k719q7Qdc7oTvqUzOWNX3VSnVR+SKXS%20OceAFPgejb1/fFcP+KYav5NkVqrHHvCdklq222WA2Ul3JX3TEfdIShXP/Y0xsixLll6u65ZlybIs%20GcMHPPjcxovlb3TtQ5dUVZKZrrn3vadtXc10r0k6/Vh7cNJJdeaapLYKGD7c+/aR42lyRp9S4yGV%20U8YYGeksNTPPr5IsWdc1qVO2OqKT7nTWVC3v+BkAn58K8c7GZfA5t19F9T4D8HrmqFLZHlePXAed%20XUl7IwH4cCNbKlhPj3u82J48zRQE4M3eZ/bfk66ZfW5f3tzP1n6yZ744Kf5hPw+eu2lHl1l/75z9%20l22ixj6L9de/y3I8mwjYl+Fda7/AfRjRAAAAX9DtVzC8CEP6bcMTn3gBgI8hAAQAAL68fvlR4t/6%200WIfAQaA9yUABAAAvpDLd6ldLmg3rt+9+tyHXJwBAHgbASAAAPAFjTff+m3fBQgAfCzvsAAAwJfV%20t4Gf4A8APjfvtAAAwBc0kix5PuvvclX2t4SBPv4LAB9FAAh8NlWVqkp3Z86Z7n62DQD4zvTIyJJk%20SdXIGA8ZtWTklDFO19rh2dWA9/Bvqx1cAISvy219C/A1O937AAAAgO/J5Tv/Tnk24+9yQZB+20lC%20QQsAfCgzAAEAgC/obRf/+C3fBeijwADwIQSAAADAF3IT+vXlu/9eBn/jxTIx+w8APo4AEAAA+IJu%20Lvpx/a6/PQhswxMA+By8wwIAAF/Y7TDkt14YzMd/AeBDCQABAIAv6Ha232/57j8f/wWAjyUA/Gr1%20G5b7Wc+6nP3cll0ftnx5H97X5SJ91VtnMmu7JfuHe3q7reP5Bf0uF/ibv/WEP3wWM0mna73pV5PU%20mtQ5o7MNTmvd9x3pXK5YCcCT9wnoZpLH7TYekzonWffbbV2qr+XrVr+h2d/uc6mL4Z46l3HZpY+d%202frfi7Htk6T3r2vouh20yQ++Zad7H8B3r7YB6PY1KL0/ni+2z704ug0Bt+d05gcHgMI/3mXOt7eR%20WcnP5zXL8pCHmSypvM7Mn8+vM8/JfH1OjZl+6LzOzMxMzZnqmcdKUpWuxUl9Ptg1QH5HG7qWLP18%205axzlvGYUY+ZfU53Jz0z6lWW5Zx5Hqle0vW4vchcshVLr5Os6fz2D63BpzbnzLquWfupaF/XNeu6%20/mrfDV/GpV6t7fasA37M7D9n1N8k9afM/lNmfsrMz6k+p2rVt/JVE+LxLasxUrWkMrJk5JzHJK+T%20TrorVQ/pVKo63ZXkx4yqzP753ofOJ+DU2lfnJgC8vLvczvi7ud/X/YV/fHnXWXx5mgF4WZc8/zDP%20us/2uzTprm0d3M+ln133Eyzn/fFMck5lzfXjaZXM2mYApi4tWwMGeO63pCKXWvYxqVdJPSb1Olsf%20fHOi++rmAiGX2lX3y1fgNgT8LQPqITTkK7L1ppeWu/W9I3MfyF1m/WWfcLRkZrnPgfLJCQABAAAA%204MAEgAAAAABwYAJAAAAAADgwASAAAAAAHJgAEAAAAAAOTAAIAAAAAAcmAAQ+WFUlSeZMKpWqSnc/%202wbApzfGyBgjy7Kku1NVWZYlP/74Yx4eHu59eACHtSxLxhjXmndZlvzw8EM6fecjA/h1AkAAAAAA%20ODABIAAAAAAcmAAQAAAAAA5MAAgAAAAAByYABAAAAIADEwACAAAAwIEJAO9sXu7U9qjrF1uuF5R/%202vbkTesAeJf97a+XpE9JTvvjkeSUzpJkJjWTTkaP7XHPbXntmQGA783tGGy+fbenfYzZ+FrUOSPn%20pNY81bMj8xoNbXVu9ba5smZk37d+S2vna3a69wEcXdWv9/Zdc8v+0klVqiozSY1Kjb7Zfvuc7U/V%20+wjwPRt7zfKuUuQa1b3oNEefkvmQuT6k65ScKqmRuf6YnF+laqZrTbJsQWGtSS43fTD3NedMzZm1%2011RVujvruubVq1d5fHy49+EBHNZ5rpk1U8tWCazrmtePr1NZ7nxk8A410+tjerxO8ndZ69V+8vuH%20pJKxVObjutXAc6ugOz+nu5Ox3vXQ+TTMAPwKXM8IVbINVV8MZ6uvZ5lk7gCfykhSqV724me3zwqc%20lX0G4LLvO1M5R08MAPyWT2Ld7tPl01vc20xd6tl6UdPe1MLVWzSxR9xJzpedvtSB8pkIAAEAAADg%20wASAAAAAAHBgAkAAAAAAODABIAAAAAAcmAAQAAAAAA5MAAgAAAAAByYABL5KVfc+AoCv1xgjy7Jk%20WZbrusvjMZR3AAA8p0IEAAAAgAMTAAIAAADAgQkAAQAAAODABIAAAAAAcGACQAAAAAA4MAEgAAAA%20AByYAPDeemy3JOkkqTz9Wi7rK9XbvqNHqpPan1P9ZQ8X3mbuy67n624fX+7PF88BAL519e5dclP3%20ZtzUsfPF7Wn93F+2c1svw6dw05iu47HfMjze2uml/Y6b9dUv2/DI83a/1cOXn/y+S/g4l7Z4SvqU%20Z3FQ/XJktrW7Zdt/2+lzHyCf2endu/D5PQV96ZGR0/aHOStZl1SdUr1mZKR6ZPT291lLZWZEjMK9%209OgknVqSSmXtzkyy9sx5znRtzXjb61K8j3R1upJK521vJK3SAYBv1E1tm3r+pl6VykjV9v5fvdUD%20tZ02TGpN55wt/Hte47bigE/i0q7eHPbNy+ZKtjY5U6NTlSxdyXpOZWapzimnjJzy4+khP51fZzl1%20MjupTmVJMlN52F6vR2pU+hLn9f4n8h7L62HBh+iRmUrNU2r8PqN+lzVJ+jFJsp5nqpZ0d2p0MiuV%203yWjMvNTkvPWAHXF3ywzAO/uNvy7nf23de1jn/1XXddZf9czpv7w+IrcNsdrc77ddpn9d1u1/Kaz%20rADA1+0DIok31bF18xmBm/Dv+gmCGs/rCHhfl3Z1bUfvOaCqS9t8el49q2f7xUyq8cvC+LJnvf/y%20DS8D72mf/ddLnv4Qtpmrs7KPz54aWmfJzPIiq+Bb5TcIAAAAAAcmAAQAAACAAxMAAgAAAMCBCQAB%20AAAA4MAEgAAAAABwYAJAAAAAADiw070PgF8350zmTM3t0tyX2+hOz5ksdz5AAAAA4KtXqVRVujud%20TrqTdJJkjLHFDRyWGYAAAAAAcGACQAAAAAA4MAEgAAAAAByYABAAAAAADkwACAAAAAAHJgAEAAAA%20gAMTAH4tqrdbkvTYbjnd7HDZVk/7p+M63cD3atZ2A+AItpp29Mvatn+xT+v7AeC9nd69C1/GOak1%20W2FTyTwl45RlWVJLMmpJ9Ujqh4xak9mpIfwDvm+dJG8ZCPabVwNwZzNrKmsqM0mns6bTSfe1Tx+9%209eJzzGxzFtS9APAxzAC8u0oyk9pvSbZfy8gvRrU9bpYzCiHgeybgAziafRbgpcbda+PKNOMbAD6S%20ABAAAAAADkwACAAAAAAHJgAEAAAAgAMTAAIAAADAgQkAAQAAAODABIAAAAAAcGCnex8Ab1GVdN/7%20KAC+Wn3tI1/2lfWlDwW+Ouu6pvvpPO/lr6KqUjWSeZ/jAgDup9Pp7tSoVCpJJb1VCXNOM8QOzu8X%20AAAAAA5MAAgAAAAAByYABAAAAIADEwACAAAAwIEJAAEAAADgwASAAAAAAHBgAsCvwstfw9xvnVRf%20H3fNbXPN9NPVuuGu6sVyZGu21S/22R+PfdvoJJc2DcA7PPWXs3rrP2tm1kj1KdUjy0xGzqme+35j%20rxU6qTWp89Y/z+U+/wQOrN+9y5v2fUsdcF3b4/qM8T4/AoA36jzPEW4jhdHPt8kbjud07wM4ku6+%20Li/3x/i1jLVunrcFfV1rar+fOmfW64zxmNnnVJ9TOW9PHZWqJK0a4n5GjywZGamMJKcxstTIw1L5%208eEhvc5knamRVCqnSrKH17OTkcr6lteu0rz5dVUv4+fn3tV+qiqjRnqMnJZT5hiZnSzLksx6r+Es%20vL9Lu32fljaznWaZWcfrjJrJfMiYD1lm5TRnljxmZE1lSWfJms7IY5JXSSVL/yHJkqTTb+2B4WNd%20TlpX9oL1aVPNVM9Unk5sX3QudfHImvPWz/dIKqnqVLXaAOCjVKoq3Z265hCddDKWkXXeBH/1okq5%207M43ywzAr1FdZgDOmxmAl4AwmXU5s3+/Q4TkaZZfvXh8mQU43rJPeeMA+HC1nTBMddJPMwAr83pL%20RtL7DMBaM8ea1LrvB5/Db3lznzfLN+//VN++qaVu69QRAB/uTXOvXwZDZv8dkwAQAAAAAA5MAAgA%20AAAAByYABAAAAIADEwACAAAAwIEJAAEAAADgwASAAAAAAHBgp3sfAHBsVds15OecmXNmqW1dvePS%208t1f4OD4pvW1kbxsLO9oXHAAc13T3ZlzJrn0q5UxRsZwfhcAgOdUiAAAAABwYAJAAAAAADgwASAA%20AAAAHJgAEAAAAAAOTAAIAAAAAAcmAAQAAACAAxMAfiX6N+5XnYx95/FbnwSfSdevPwbgSxrZKoq5%20339Z5tW+De5tpGsvGnpc1z2/JVub3erfZKt9DV4A4MN4D72zTlJVqapk7MuLqvR5Ta8zvc6kO5nb%20/Trv6+DOZn4ZYM9sYeAY49qmL8u1Z9ae6ZZgA3yo08OPOZ/P+f0ffszolxF2AAAgAElEQVSf/vS3%20+cMf/iI//d2r/PDDKZ01o06pGqnqVOlv+drUFvz1JQg8JVlSOe23kcpDRo9cQkB1AwB8HAHgV+CD%20Zk3tNZAJV3wrXpbtZgsCfAqXk4F7SVdzX1d7x9tP+7Syj6/F1ha73jb772n99omXUvMCwEdSCQIA%20AADAgQkAAQAAAODABIAAAAAAcGACQAAAAAA4MAEgAAAAAByYABAAAAAADux07wPg1y3Lkhoj1Z3q%20yqiRykhmpSpJ+t6HCAAAAMBXzAxAAAAAADgwASAAAAAAHJgAEAAAAAAOTAAIAAAAAAcmAAQAAACA%20AxMAAgAAAMCBCQC/Zf3066sPXAJ8v2aS3m/745ovtmfffrse7qxHam+2IzOpc0bvbbRP263WXHaa%20NZJekox0JZ1+0dbhPfVIMrbltR59V3X51Oau9Wg/36Pr+fJlK603PAe+VZe2/D5L7Z9PYeu1Lz1s%20Zasmxt7Atvq49hK5smZkvc+B8smd7n0AJNug8229+fYHmcxUlq3Iqr3oSmf0ViRVb7u+XC41rtvf%20tFynAQDwbRr1YqT4Ql+61cvmm262KknNdK9Jzcx+fXN/zaiZqqQunWlqe37N5y8EH+xD2tHIpUH3%20eabPjxnzdU71OqPWLBkZ/fv0PCX1OjWSrkqvp3Sd0t3pPm+v0sun/MfwXdnq0i34qxfrb7Yn6V6f%20+uK9zY/MVDrppLszqrKOypzb44zL+q1enZWMSwCS7XHrhrmjMba2vq5rZs2MZWTJkpyTOWdqnJKq%20VP2yp+/up0Av2QOW91jCRxpbT5oayXmd6ZyS/LA3sJnuxyTnvZ8dSV5devQ7HTGfkhmAd/Xyj+jD%20wrgPOXt0fe4H/USAI7ic5dz73uuMqJt1v1gP9/K8ZKseWyhSa5I1I70PEn9I+pTqTuqcJOmMpE/b%202f0kUxHPJ3E5SX25JW8fWlyK0Of96FtnAGYL+t5kaL584+omzPPpLb60p5nUl/54JLk9KTgvp75T%2019mAtx2vCOlb5rcHAAAAAAcmAAQAAACAAxMAAgAAAMCBCQABAAAA4MAEgAAAAABwYAJAAAAAADiw%20070PgM9rzvnWbe168sB3bM6Z06iMZUnXknOSdCepjDGy3vn44FPq7sT7PgDAd8sMQAAAAAA4MAEg%20AAAAAByYABAAAAAADkwACAAAAAAHJgAEAAAAgAMTAAIAAADAgQkA76qu92aSy69j3uwxk/S+W1cy%206+ap++Pb7e+zTJL+6H8DwLdobrdakzpvy/R2f+t5b+7D12Y8rwmy1wMZubTtp/f6mbpUGZ1c9tK2%20ge9S78Pf6yCo3rbn25/f49nzum7703r6GcnW/1Yn1dvwzeCLT+A6rs+L5cv1xv+8cLr3AXzvurb/%20VFVmd5LOTCeVVDpdna6Zrs7sNUvNrDWzZHtO9/5HXB+4BPhGjb0Te1eM8aYavzMz83Nm/5z0q8y8%20SufnJK/SvWb262Sc8/QTRpJle7Gq6EG5t1lJqnLuc2Y6s5O1K7UkY0m2Bj9SmVkqSY+MVCqVy1+N%20Vgx8n953Dswl9NtvvSQ9Mms/6VIza/d2eqVPW986k9lrqtd0HlNZtpVZPu0/he9O14uAr19MGJqX%20ynjm2hiTpGfmmGaAfef8/r8CtwX4vEntu96w/uYPft6cbfpF+v8blwDfr95n/t3MBtwL+V+PFb11%208vXomns9cGmXe/vt548v81UuNwBuesPLuKp+y+zoSxj4fCb2Njv7advm0gebdc3Hux3D/9qn/J6p%20F0u+a0YxAHynLt+h8OKtsL01AgAAx2KUA8B3bNws68VjAACAY/AdgAB8h26+z6dvwr8XX+wNAABw%20BKY4APCd2r6se/tC7pff2TN8FBgAADgMMwAB+D712K+sNLK9Hd5c4Q8AAOBAjHIA+A6NF7d6WvbN%20x4MBAAAOwAzAz2zOX7vk++f/rqkxfn0A++vHB3Bcox4y6oeMzIxxysxDOj+kxkjVSD/tma2vnknN%20bQl3tixLZlWqKnPOZ+/ny7Lc8cgAjm2MkTFGqrZxXHdvt2xLXyUMfK1MbwDgO3Q7869uZvy9vAEA%20AHz7jG4A+E7dBn37hUBuvxfQx4ABAICD8BFgAL5PXdtVgPtyAZB9NqDQDwAAOBijHAC+Q2+6AMjt%20jL/P/x2tAAAAX4oAEIDv1+Xjvkmeh395ut/eKgEAgG+bUQ0A36mbt8BfhHxm/wEAAMchAATgOzbS%20L7O+PQwc/Xy/ZKQDwKaTzJtbbpYv7R2tGdUAH+y2ZK1+8/IX+sWS75qLgHyk7l/+JVVVqn7L7JHK%20+rY6affw8JCZynldM3pmjGSMkerK7Hc8Ocmc794H4HtUSzLnmqxrZs2M08isJcusvW+v1Ox0OlvV%20dPtdget1DcD3ZSbppOaLQG9m6x+fas+qJVWXPvWy/t1XWJ89M/be99LPXuvrSrJ+mn8JwLem9o6x%20kq0rviz3WGLUuPadXdv6rqRq2yYd+L45DQfAd+ddxc/zs6j1tL/ED2AL/zK3ZV16yHdNLzHsAPgU%20rrP+8mL5cv0bZgcqZb9v3okBAAAA4MAEgAAAAABwYAJAAAAAADgwASAAAAAAHJgAEAAAAAAOTAAI%20AAAAAAcmAPzKPT4+pruzLEvG2H5dc850d6pcxBsAvlfdne6+1gVJMsbI6XS685HBxxk1UlWpPNW6%20l/bes+94ZADw7RIAAgAAAMCBCQABAAAA4MAEgAAAAABwYAJAAAAAADgwASAAAAAAHJgAEAAAAAAO%20TAB4V53qpK6PK6Mvd2eSue+2/Zq6tufksqX9+gA+xMjex9a6387b48wk53R1rn1wet8/exc8f/mC%20ALyfHtmGIiNP/e/ca+B9l+v9kfSyP6devhIA8Buc7n0A371aMzoZPZJa0iMZvaYyU5VsRc4pnfNe%207myFUechqUr/2msDHNi8jAHf0RFeh4q3+9VMz1dZxuvU6Zxkzblfpft11ho5jZnuJKNTXdurXMO/%20fv66cAdzznR3uvf2WJUxRqoqVVon34KR5JT0Vud2XqXqtqOeqbEFgD0fUhlZ+9VeH6uAAeB9mUJ2%20Z3U507mfBa3rAPNyu/yKtuWsuc8EjBmAAB9oO7+yzfyrnLcZgM9mAc6ngPE6A2UK/QA+ictMvtta%209uZTLjX32X+X2deXfc0ABIAPJUECAAAAgAMTAAIAAADAgQkAAQAAAODABIAAAAAAcGACQAAAAAA4%20MAEgAAAAABzY6d4HAADA+xljJGNk7LckmXNmXdc8Pj7e+egAvl17l5pOklQ6SXene2btNVnud2wA%20H8MMQAAAAAA4MAEgAAAAAByYABAAAAAADkwACAAAAAAHJgAEAAAAgAMTAAIAAADAgZ3ufQAAALyn%20HtnO446MHknmvmFbV9cdR9KnJCOdpLJ+6SPliHoktS+v6m177+aL+53U7bpK9daCZ49Utp9Rnf0/%208+l5AHwB5osdjQDwI1W9q9j5dUoYgA8z+9KDvuxJ69ni5eo3PQO+PSNJpeaSPYnJyEz1JfDLfn97%20PFPJ/t9LGAgfZg+ce2uDz9ffbE/SvebaVV9a3Zjp7tSYqVoz+zE1lyz5MSMjY+4R9txer2sm/bgt%20l2T2uoWDcCdVle7O9X97I6/UR48N4XO7tNnKzBjJ2kl6JlWZc77lWVudwbfPuycAwDdn3MwCvMQw%20M9uMwJvdruHf/vDLHSCHV7nMOH0e/r3J3vL2GX+9z+brmvu6feZqX5aXV9vbc82k1iTz3RMNAfgE%20Lv25TvdIBIAAAAAAcGACQAAAAAA4MAEgAAAAAByYABAAAAAADkwACAAAAAAHJgAEAAAAgAMTAAIA%20AADAgQkAAQAAAODABIAAAAAAcGACQAAAAAA4MAEgAAAAAByYABAAAAAADkwACAAAAAAHJgAE7mbe%20+wD4ptUneYWR61thX94Sb9b9Yj18LWZSM5eetJNsbXRm3v5x1Dlj35p8ir8bAOD4LiO1/tW9+Lac%207n0AwBHsgUlfgpNK+k3DzH2f3t5IZs/0G0KV2t9nqt48VB379mkk+12rqi3MeGNbuzazt23e2+Kl%203Z6SurTjSnqLTLrr6YUuz6mKYoh7W9fHpH/MrHPGqIyxZGaka2adr5L8ZbpmUmtSndFbybf9Ocwk%20i1YMAN+ZSu1jrJF5nY2xjc/GcrvulorhKExnAO6ndUF8uNFPYfAHvkK2OKSeHj9rk5f7FW+XfHWu%20s/9mZs08tdFt3dOfxkzqnGSmzLsGAH4zdcPRGNEAAAAAwIEJAAEAAADgwASAAAAAAHBgAkAAAAAA%20ODABIAAAAAAcmAAQAAAAAA5MAAh8Nt2d7k6SVFXGGKmqJMmcLisPAAAAX4IAEAAAAAAOTAAIAAAA%20AAcmAAQAAACAAxMAAgAAAMCBCQABAAAA4MAEgAAAAABwYALAO+uMpEdSl8eV5JT0st9G0peNI6NH%20qvcn17zer3zYEr6UX7Y5rZB7m0k6qcekzvu6er69R3LppzOTWr/4UQIAAHys070P4Hu3zpGqzsw5%20yZpRD6n8fh+Q/iGzRlIjY44kS9IPSWYqM5XKMka6kup80HKd887/D/CtG0kqM1s4UklmRi9bjNLb%201muA0pXq7bxDZc1SlTfGKe/IBqfskE9gLEn3qzyuf5tz/pRaKslDul9nna+SZW+d88cknYyftr45%20td/6ra8NAADwNTED8I62oWNtId9lXY19VuAP2QK/p9l/dZmJkrH/dwvvrrMA33O5/XT4cNW//hi+%20br3N6KvHm5l942nb1X4C5jpL8EIPCgAAfBsEgAAAAABwYAJAAAAAADgwASAAAAAAHJgAEAAAAAAO%20TAAIAAAAAAcmAAQAAACAAzvd+wAAAPi05pyZM+nuF1vqLscDAMB9mQEIAAAAAAcmAAQAAACAAxMA%20AgAAAMCBCQABAAAA4MAEgAAAAABwYAJAAAAAADgwAeAd1b4cnaTmtq4v6+cv9u+b+zPJrF/sAl9U%20168//oXaW3H9sn3D+5r1Mf3gUxvsLHl6O7ysr5u+ed1uPZ71w3nxCL6oHukaubTdWfN533q9/7TP%201mL1vwAA36PTvQ/ge7dUUumMrqQ63Wt6npN1puq8le29BSt1M9bs2oLCOWd+rZgfQ8bL5zXzyxhk%201kxXp7Ome2+jtS9HJyMZ2Rv1O1NDeLPu3tveyxZYzxZvff44p2cn/UPSP6ZrTWrN6JHklPTYmuj4%20OVuAcgkKt7bc7/4R8PmMyg8PP+b8OPPHP/5l/u6nv8nvfr/k1atXqfpDtuD60paXzIyMzKSSbvE1%20AMD3Rjp0Zy9n+1Xv998yQ2rWU9GueOdbcm2ve9uW+/GxPqYPnDf/TS95ivIus7HHvm4mtWbWNgNw%20CwHha3CZ+Xfbdl/WDnNvt+O6BwAA3ycBIAAAAAAcmAAQAAAAAA5MAAgAAAAAByYABAAAAIADEwAC%20AAAAwIEJAAEAAADgwE73PgDg21VV6fQv1l2MMTLGdp6huzPnTDK3Uw83+wEAAACfjxmAAAAAAHBg%20AkAAAAAAODABIAAAAAAcmAAQAAAAAA5MAAgAAAAAByYABAAAAIADEwB+4zpJ137/PZeX58PHWkey%20JllmsrxoVJVtXWVre5fNpfFxR+P639u3wZlLC+2az/e/tNdru9WAAQD41syk5rZ8dnuP5/PNOt37%20APh4nST15uXaM30JX96whA9VnWR2euk8LsnrrHlYl/xFPaT7ddba9nm4eY+Y2ULAUydVIhQ+zqg3%20nNW4ce3jLptvG1wlNU/JrPQ1BJxJnTPHkpGZqiSjUqkkY3/+U5H05p8K8P+3d2/LjWPLlmCnLzAi%2098W6zPq1///Xuq3f2o5V7VOZIWJ5PwCkKKUiMuNKCRqjDAckAEZil1yLjolFCjiy7k6NStXjkiSd%20Tl8utOA1qpnOQ5I1nXNS56S/HAR2eu+FBX9HYAbgG3ed1ZdvW8P3qOxBc20zAE9zW5KtNqu3ZfTj%20jL9LzZoByD3V9e1vPNbiddbf1gDNFxr4S4sPAABvT2/B359mAM6bXpijEgACAAAAwIEJAAEAAADg%20wASAAAAAAHBgAkAAAAAAODABIAAAAAAcmAAQAAAAAA7sdO8TAN62SqWq0ul097atKt2dsYxUVUaN%20jIx0RlIjo7dj/KF5AABek3lpUCtJOqmtb60aWbLc8cwAvo8ZgAAAAABwYAJAAAAAADgwASAAAAAA%20HJgAEAAAAAAOTAAIAAAAAAcmAAQAAACAAxMAAvCOzaTOSa2Pm+qcpPcnYzsmvT3uU5L61ScJcEC3%20lyHzydL1uH3uj/tyfAcA+Aane58AAPwMVZXuvj6+2ZNkpntN1ZrUH0k9JFmSqv35H+ke6TmScU7y%20kPQ/9tc+7AsA36IytjH6uqGTnunqVK2Z8yGVNWvmNfDrdObcnizuwwDAVzMDEID3qebNbL+5b5zb%20bMA6788vb5OdpLYZgF0xCxDg+9Xz2Xx1MxZfx+VcZwTOynVGIADwdQSAAAAAAHBgAkAAAAAAODAB%20IAAAAAAcmAAQAAAAAA5MAAgAAAAAByYABAAAAIADO937BIDjmnOmR2f2zPX/1czspKqSsdz7FAEA%204GrsU2Q6SVLpJN2d7pm112TZnqfud44A38IMQAAAAAA4MAEgAAAAAByYABAAAAAADkwACAAAAAAH%20JgAEAAAAgAMTAAIAAADAgQkAgdQ3rq+v72RJkppJOmPfNkfSlVSPLD2SjKRHurbtcFc9kj4lWZJe%209o1je9yn/flMOrlWfZ234t42wi80nz0/b6vea/bS0tWlNvcxN7W9ts5JrTfb4RXqS22qU36Fm/fy%20S+3136m7ufexW53O6n3sHc8a3Ln3xsmsmes4XnoI7qn2Pnf8eflb9c9bdvrrQ/i7uvu6vjwe469+%20iaQg3M+y12f1Jaj7++uqkT9S6XTG7HxIZUknvaZ6a3A+zTWfaubjWqmx5GGM9KisndSYl6jwjv8/%20wNFVVVJ/rrGtWpekf0vmP5P6LdfmZ/47yZqM/8p2cbBsDVGt2Zr350EMfItLXX7NheBMMh7DvFqT%20+dtWx33a9tenpP6RyimVj6laUjUzlj+2f+LhH6l8SGpeexX49bb6uw7PXbkG1r2kstfzzbFJpy5t%20tdLlu1xq6++GHZcgr5Ke6bFmjGSpf+Q0fsvpNLLMysjHjPqYqnOydEY6WS+jfW9jt5CFe+qx9QDZ%20x9kXg8Cn6tqvjOiB3z6jD7xj1xuW+fp18niTc5sB+NioX9YzIzPbDMC6HpzM8vbBK9Cnfbbfh8cG%206DKb6jIDsOY+u2rJY/inenkFap8BmMtM1ttAcQ8KLzNbayZZ9+USsmgBubfbsfRzF6DqlB+sLrPw%20LhteSJO/ND7WY932tV4vvcHNuLvXd9ceHtbcPwGjh+DeLiH0l4O/L76eN8tPDwAAAAAOTAAIAAAA%20AAcmAAQAAACAAxMAAgAAAMCBCQABAAAA4MAEgAAAAABwYKd7nwAA3EN3J91JkqpKqtK3+wAAAA7C%20DEAAAAAAODABIAAAAAAcmAAQAAAAAA5MAAgAAAAAByYABAAAAIADEwACAAAAwIEJAIEfquuvDvgl%20pwF/w8xWkP34vOaz/dn3324H4Efo65j70hg7rutLazHaxQsAfKvTvU8AeLuqk8/lfV1Pl+dGZIH8%20fN1bwFf1tAg7ndRMVafnTOqcZCa9JrUkmalKqjpblddWsHUJDQH4VjOdJUlVZdTIrEp6pnobn6u2%205mGkMlOpGunqbcxOG4a5u+7OOtec5znnOmdd1602AV4xN9GAH+L23v1fzQIc+iNehcvMvr16n8xE%20uanoL85QAeDrPB9z/9wU1M2mkSQ9nmwDAL6eABAAAAAADkwACAAAAAAHJgAEAAAAgAMTAAIAAADA%20gQkAAQAAAODABIAAAAAAcGCne58A8PZVVSqVMUaqKnOuOZ/Pycd7nxnvWXc/e3x53knd5ZQAgFdu%209txahkq2nqG2XrdGlix3PjuAb2cGIAAAAAAcmAAQAAAAAA5MAAgAAAAAByYABAAAAIADEwACAAAA%20wIEJAAEAAADgwASAwHfrSjojs5LHYWWkMlOddM109X7wnU4SXjT3pZMeN9s6SeWxnjvJKenTvh3u%207Em9zv3xSHpJckplJjVvjl0y5odffprwZ3vtXmv4b4ypl1qG73Wpu2s/+pXv6f14+VzX8Xfsy0xq%203fdux1WP7TU9Ur0/hzvqbNdujz3uTLLeHDG2Y7Jd3yWVrtvfE+PxW3a69wkAb9dpqTykck7nU2bG%20+C2VJTMj3Z0PM/lQnVkzPbZQZXSyJKk58jA6/UIieMkKq15uysa+f8ph3rXZl9p5XkP1ZPV88+0r%20OjOph6TOSUZSSzL+k8xP6blsjU992l7c/0zyIcnDvsD3+Ja7IVsjnh6ZD5U5k/On/+Q8/5NPnz7l%20/FB5+L1y/lSp6ow6Z+RDukf6/K891h5JOv2k2Ydfq/YBubsze6a7cw1Mqtws5Cf72hBuD/H2oK/P%20lbkkXZ+SWlO1pGpJ8rCFJj2StTLX2m6E96WuT9m6YAXO/cx0RkZ6JktG1v1KbivLkaoP6Wx9RHcl%20+S2jKrN/v/OZ8yO4BQF8s9GPd5HWZG+OHlOWMXOdAbjWfpe05jXgG/of7mY+ruv2Dv5l27o979NN%20SV/u4i8xC5Bfbzx7PLbBt85Jzvt4OpKcMnoL+bZa3ma3jl6e1K4K5nUYz9a35tO1WYD8cDcjYX1N%20nY29l936h9G1T6maj3ex9+MuMwbHNUDMZfoV3M1W5befcpkZmXttXmb9ZbvnmCUzy31OlB9OAAgA%20AAAAByYABAAAAIADEwACAAAAwIEJAAEAAADgwASAAAAAAHBgAkAAAAAAODAB4Cs3xkjV9qfiuzvd%2025+Wr6qM4cfH/XX65e398nb4VUZV6mZJ93WZPe99evBDXHqExLgLAMDnSZAAAAAA4MAEgAAAAABw%20YAJAAAAAADgwASAAAAAAHJgAEAAAAAAOTAAIAAAAAAcmALyzfv68vnz86OQvDoFfojpJRiojybgZ%20TDqpmeqZ1Lwee93fhh1ei5lkpPca3p5ne9xLxqWG91pPZrrmzXHweszqm8c3O/bG4nFbJ5l/6j8A%20gPdhuxq79LOVZGRm7Bd4M0lvDzuprBlZ73Oi/HCne58AW2/eVU+eX9ZzzozafwGrUpfjZqf3X8y/%20Cg3h5xjpOVLLh6zn/yQfk86a1MxYOsvp8gayv7n0SGqk+jZoge/0JOj48iHdTzd2ZRtT1yWpkc5D%20Ms8Z80O6P6aWNVXndJ2SXrb/QD3k0hF13JDhjsYpVUsyThljZIxkjKSWZIytte8a6RrZCv7yQuMv%20ALxXI5VkpkZyXmc6pyQf96Z2pvshyXnvm0eSP/bO4e/dOrz0IJ8zpz7knkzFubOupwHe/MLV5O0u%20Pzhehd4uLB9rcz5bntZtPU+rzQbkG/3YGx9jr8U9tO7TXquX55e7opdZrRoXXoEXx89Lcz4fbyze%20HPfYY6hhAHiPKpdPct188iXLzRFzOyZJXWcD3oZ/rt/eMj89AAAAADgwASAAAAAAHJgAEAAAAAAO%20TAAIAAAAAAcmAAQAAACAAxMAAgAAAMCBCQABAN6YMUaqKsuyZIyR0+mUZVlyOp0yhvaO16+q7n0K%20APCu6BABAAAA4MAEgAAAAABwYAJAAAAAADgwASAAAAAAHJgAEAAAAAAOTAAIAAAAAAcmAAS+Xc0k%20nb5uGDfLKUlu9iVdNy+93QFf6Un9dJ4W2te4Lcrnm2ten3uz5O3Zfylu6vjbf1Hg56i+1Od8Ye/Y%2092zrvozEyhjgm3Uu7e+lu51J1psjxrW13sbdStdtv/zSeM1bcbr3CRxJ7b8YVS9fUMKxzKTWJOc9%20jRlJj6SXZH5I+rQtlzeXS1hY89q8j1Ev9/F/8Ss0/YqRZNRWP/WZgqkk+wF/3tcjS51SvaTHKZ2R%203g+cfU72i9KumWReEsHt8d74KENeg3U+ZPaa8/op63zI+fwp5/PHzDkz5zlzLkk+bPXda7abNjNb%20BYu2uYftYrNzTtVMzU6lU/v4WvsdnqrK7EvoN5LMdNYYffnZxpOsees1ujvdM2uvSW31eTqdMjKy%20rmvWdU2nt+tAITWv2ExnZKRnsmRkzTmdT3vdjlRtPUNVp7uS/JZRldm//71/fwoIXzOdH/BNtjtH%20c7+QvEQijzMA+6ZB73KviJ/j+y4DtwCk+qW3wn4xaDZzlTehXhpx922KmFeh91KcN/X6uU5hXCdr%20z5SbgADf6fG6LdmSv5lxveF9mfWXpJLOkpnlPifKDycABAAAAIADEwACAAAAwIEJAAEAAADgwASA%20AAAAAHBgAkAAAAAAODABIAAAAAAcmAAQAOCNqapUVcYY6e5UVbo7c86s63rv0wMA4JURAAIAAADA%20gQkAAQAAAODABIAAAAAAcGACQAAAAAA4MAEgAAAAAByYABAAAAAADkwACHyzWdu6Olluto9OKskc%20Sde+vx/3d7btqZuN8A1UEMBbVPsykr69HOmkOl0zye1yeZlRHwC+1eneJwC8XZc2/JTkQ5KRmZHO%20qE7SWStZK/k4k+4kNTPH9qSq0ulsFwDw9WZvSXP/KQbcampkD6B/+ZkB8HkjlSXJkvRIV6Vr6xO2%209ZrZayrn6yuuPcTcwsDFHAYA+GoCQOCb9WdmAF7M2pY9D9wP3u7ll2CG79CVJzW1bbzTyQDwlUZS%20I3/6MFJdZvs9n/mXGOQB4Pu4fQYAAAAAByYABAAAAIADEwACAAAAwIEJAAEAAADgwASAAAAAAHBg%20AkAAAAAAODABIPBdKpWq/XFVujvdfd+TAgAAAK4EgAAAAABwYAJAAAAAADgwASAAAAAAHJgAEAAA%20AAAOTAAIAAAAAAcmAAQAAACAAxMAwjvWtS2Xx1+zTpLq5Obp1eht39iXp//Rx2PgW9Vt/XSudfVj%20jLxc2QD8MF89bhuX+dFuirDH0/XfMHpk3BxfmameLx359Glpgl4C8KIAAB/tSURBVIH7ON37BID7%20WefWpFSS7q9fn3pJlspSlUpljLEtVTmlsuxB4CVonHvvvsxkqaRTWe/xP5xDGFXpJPWZi8KeW4Pd%20e6NddTmuMmpknteMrOl5To9OVaVTyRipa0N/27TPpGZ+cNoI8O5UlqQr69rpJCMjVSM9O2vWjL2v%20uHlBkmTUPia/lLHA33YpoJfDvr093t/tZ+b+qLcuIacaWbLkj/NMRmUZp3xYlpzXc9IPGVVJLo3v%20KZWZ9NZDdNdNPwLwa5kBCFzjjK9djz0MrH7ai19m/1W/PMiMuPnJj/HjW+ibiv2KWQAA/AjbuKtH%204KepvWO9NhBfW2z7zfPO3idURo+9ZrePJFz64O2fH08/9VLSa+B+XN0AAAAAwIEJAAEAAADgwASA%20AAAAAHBgAkAAAAAAODABIAAAAAAcmAAQAAAAAA7sdO8TAAAA3o+qSqoyaqQzkuzrXtK1JOu9zxAA%20jscMQAAAAAA4MAEgAAAAAByYABAAAAAADkwACAAAAAAHJgAEAAAAgAMTAAIAAADAgQkAX4N+/mOY%20Sc2kOkk/Ps983A9v1Z/qHd66+sY1fIf6q15Ar8Ar17Ut25M89rvJny5ReuyL8ZN7u6nNmqnuvW47%202/t7pW/f52tm1sy8lro+GLgfI9Ar0N37MtO9prO9iXQ/JPUpqYck56TWpM73Pl14wdiWHo+PU/u2%20+vO+3hokjTxv26WOx7et4bvNZ4/nC9v6WVj4/Bj49dZek65ULUmPnNff87D+nnV9SJLU3jeMMVJZ%20UvmYqg/p3oNCeAVGLtdm63VL+pTZI3Nul9nbtd2a1NzrF+B+BICv0t6c103jXrcNj8aHN+oa+Bl6%20OIjLnfyvXScRAvLz6BN47Z73AzPJ7U3ukae9wkh6+RUnBl/h5pqtZh7r9vKeX0+O2ya9eu8H7sdV%20OPADmFECAAAAr5UAEAAAAAAOTAAIfLvrlx7fPn/2XVP10vedmC0IAAAAv4oAELgTX4QMAAAAv4IA%20EPgJns0MvCh/vQ8AAAB+NQEgAAAAAByYABD4ZmOMrL3mX//6Vx7mQ3777bf893//d3777bdU1c2R%20c/9+QAB+hDlnujvdnWVZkuTZuAsAAI8EgMD9vPgHQgAAAIAf6XTvEwDeun1m3+X7/Z6Ees//KnBu%20jjVTBQAAAH4FMwCBb+QjvQAAAPAWCACBn+Bz3/nnuwABAADgVxMAAgAAAMCBCQCBX+Az3wUIAAAA%20/HQCwDurvv1TCJVx+fsJdROY9PZj6kqS7YB5sx3uY+wVOjKSjE7WMTNrXv8gSCWZlaw1stbI6PGs%20nuGNu3yk/WvXSS7jOQDwVmxfZ9M1M3NK18isyzv6SLJkXr7yptY8vQE+470fuCd/Bfjeas3obMFI%20LemRjF5TmalKtnjwlM55Dwr3N518SKq8hXA3s5JZp5yTjDlSmfmUNX8sD+nzTPVMzTXpkfNpSWek%20ZmXpkXXM9Ei2CpYE8lbtI3DtDf3XruE79Jzp7owxUlU5nU6pqlQZU3n9KpVOJ93XOh51ylyT7tYZ%208CpcrsVGjVQtSZ0ye8msdbvBnSVzntKnmTVrZj4m+ZBlzJxPnVFJurf74unU2GreXXDgXkwhu7O6%203CHqkWTsbxDzZrn8iLb1rPn4nmEGIHfUlXRVOmMPsbcZgOt4nP13Oe4yCzD7sbP23kcNcwj9jWsA%204E3Zr8W6ZjqnzBrXOX6dkc7yOPtvnymYy7K/HuBeXH0DAAAAwIEJAAEAAADgwASAAAAAAHBgAkAA%20AAAAODABIAAAAAAcmAAQAAAAAA5MAAgAAAAAByYABAAAAIADEwACAAAAwIEJAAEAAADgwASAAAAA%20AHBgAkAAAAAAODABIAAAAAAc2OneJwC8ZZ2kbp6PpGtfj1zuMfR1/3x6OADwDnWSuS0192238xL2%20fcm+f318GdxTj6QqMyPJTD+p35nUuh3TS9KV6ktPfGmBzb8B7kcACHyz7nXvY7bmprOk83Fb10jX%20kqpKaqYzU5V0Z9sGwDerMVJVmXOmu3M+n9Pd6ZaQ8PpVOlUza/+RzprUSM8tGJnznMo5qZk5t3ru%20+iNJp8b8wr8KP9Y2nHZmbyF0Jzln5tyV+rBkjDXLSLqXnNdO8pDOSPdI5siclZpju11elfQpAkDg%20noxAwLermcfb8bXf4dzX+93Oec365v58W7tEBYD3at4s/eRTA4/7e+szrjMAhX+8Enu99l6fTz/p%20sub6SZhetscZGX2pbzfBgfsRAAIAAADAgQkAAQAAAODABIAAAAAAcGACQAAAAAA4MAEgAAAAAByY%20ABAAAAAADkwACPw0VfWFbf1rTwbgQMYYqapUVdZ1TZJ0G1cBfraPHz8mSeacOZ/P6e5UVTptHAZe%20NQEgAAAAAByYABAAAAAADkwACAAAAAAHJgAEAAAAgAMTAAIAAADAgQkAAQAAAODABIBA6hvW1Unv%20z2dty0tGf/551/y2EwbgC7R3vH79pG8YLyyV9Eh6XPuPyx64n5nKOcl5q8seqV6SLE+OSc08dsoA%20r8Pp3idwJN19XV8ej/HlNuW6/6YL6u70nCnhCD/Zstdf9VaCX7UeI+eemTXTY2SuM+c+Z1anR2Wu%20nc6a7jXdnaqksya9pmanl9pq/YXmqPZNVS+nipcQ8XOhI8D7MJ49fh6P3IQo17H29jHcx0xnJFmW%20JWuWrOdkJllyyhgfU/Mh3cnI1mekR1Jz6yWULz/ZqK3e9qu5bLe+Rzoj1Z0/Pv2v1MdPyeykR85r%20pdeRymnvXfeAcCRVnUoZdoFXwU00eMeqb8K2r1xvrfrTWYBf+98G4Bv1X7VwWjxev65Lnb40A3Db%20vt30q322lTt/3F/lnOrLRI2R0SNPZwD2Zxpd4zJwX0YhAAAAADgwASAAAAAAHJgAEAAAAAAOTAAI%20AAAAAAcmAAQAAACAAxMAAgAAAMCBCQDvbM6ZOWfSj38qvqoyxsgYfjwAAAC/yuyZy+VZ79dol+uz%20ZVny4cOHfPr06fr4YT5kzZqllu26btfd1wXgNZAwAQAAAMCBCQABAAAA4MAEgAAAAABwYAJAAAAA%20ADgwASAAAAAAHJgAEAAAAAAOTAAIAADcwXy23nQll8uUua/bZQvAD3EZXTeVZGxjbfW+vbeHnVTW%20jKz3OVF+uNO9TwAAAHg/6sWtM13bvu7tynPNtu6e6e5UbS9++fUA/JWRSjJTIzmvM51Tko/7wDrT%20/ZDknO7t6OSPPSrsO50xP5JbaQAAwC+yzzqpuc0w+RsXlZfZf7OezxUE4GtU9ol+19F0JFlujpip%20y3HX2YC347QI6S3z0wMAAACAAxMAAgAAAMCBCQABAAAA4MAEgAAAAABwYAJAAAAAADgwASAAAAAA%20HNjp3ifArupx6WRd16TP9z4r+KKq+qZ9AMD71elcuoSq2pbetsw5o4MAgB/PDEAAAAAAODABIAAA%20AAAcmAAQAAAAAA5MAAgAAAAAByYABAAAAIADEwACAAAAwIEJAOEd69qWy+OvWV+Gj9rXo2dSc1+v%20qZyTzO2Yvv2vGnZ4LSpbPe412ZfavNn2p+0AfJ+9f5iXMbWe7O3KC7Z+YrSRGOD7zGfr54+fqef7%20vnAsr97p3idwJFX1ZP23XjP2NmZN0p2k092pqm2f3y9+omsuV/vjr1lXMuYpa5I516TXLGOm8ym9%20/u/0/CMjayozyUxmp9ftP9rd6Z7JYgjijnqku7aAr09JRlLLnoyPdGff309ek6rc/PYA8JUqld4G%202VS2YffcSfXMqGRWMlLJviwZSTo1Lr3yXU8f4M3qrOk8pGqmasseth2dOc9bDpEkXelc9q9JagsD%20jb9vmptowHUc/9r1dpt+3Mzw22YBVtZ9vYV/Y98/up7MBqw2BHFPI7leYO7Pn9Tk7ewUtQrwo1xH%2012czrG/7jHmZdXKzHp1rTwHAV7rO5utnz5O/nHn0p5mAvEWuaAAAAADgwASAAAAAAHBgAkAAAAAA%20ODABIAAAAAAcmAAQAAAAAA5MAAgAAAAAB3a69wkAwM9QVZcHz/ekUulffkYAbB7H5xoj1ZVRI6mx%20jc8GaICfolLXHrm7k0tHXJVlWXI+3+/c+PnMAAQAAACAAxMAAgAAAMCBCQABAAAA4MAEgAAAAABw%20YAJAAAAAADgwASAAAAAAHJgA8N56bEvmviTbj+WyXLbd7tvVDNzb6KfPq18+bvP8YDXMvexjbJ+2%20JUvSlaQe9wHwU3RGklNS2zhcPZKubZ2R6pHR+zh8s56VzLrXWQPA23a69wm8d+dzksyc6pyMNanK%20yMd0TvvFaCc55zE4GfvDmT+FKXA3W6P+GP49C09uU8FSu/wYl/D5czFy93ZAX+rtWoedSiX9Ienf%20kn5I5sekPyY57eXpChPg5xjpnDLqt6R+S+Yp6SVLfkv1h1ROST6kutM5by9ZbsZzwzMAfBNTHF6N%20znYZe+lqbmag3M6S6svslOczA+HXu1br5/K8vh1i1CqvTF/G2X0G4HXcrWe1C8CPNW4+BTNSfco2%20B3vrLB4zvv3RPibP0k0AwLcyAxAArjdh9ktLH08H+Inms8fGXAD42UxxAOB9qstF519dePrIOsAP%20V/PmZstlLO48vSFj/AWAH8UMQADesZsQ8HIxWkn6cgEKwI93O/YK+QDgVzADEIB3ar/wvM5C8d2q%20AD/fZWbf8xBwfmEbAPC9BIAAvEO3F5rPLzyTL19weusE+D6XGzAvBX8CPwD4GVzFAPA+1ZrUeV8u%20s0189Bfg53se+O03Y+pZGHjxPBQUEgLAVxMAAt9szpllLPn999/zzw//zH//93/ndDrl06dPWZbl%203qcHX7BdXNZ19sma7jXp87a7bmcGXoybpX7p2QIcxzb+dn/K+vBHzudP6az7tjVzbuNu9+N3A3b3%20Nkan074ykJ9s1MgYSVVStb3fd3fmnFnX9fG4MfLhw4ec6pQlS8YY6Zs/XFNV1wXgNRAAAvA+1dxm%20AT6fdeIL6QF+sn3G9fVmSz/O6nv+seDrMQDA9xAAAvCO3Xz87PlHz3zEDODneXHs3cM/N2IA4IcT%20AALwTt3OMrmdgWK2CcDP9Tzwu8z+811/APCzCAABeIduP+77pdl+N0Fg79//177LB+CbVb8w+y/x%2014AB4OcSAALwvj35+FluLjr/6uJTEAjwzerZjZjPutyo+TWnBQBHJQAE4H168eO+PvoL8PO9EPi9%20+L1/xmQA+FEEgK9Jf/7HcbnpObJ/cuLZdvjVLn36bQ1WknHp1W/ruSuX4UYrz48ya1u+2eUjvc+r%20+Fq7z8bkJ7NVEtXMXf3lxyN9fJJXrE/bkpH0ks5IZ0nXSNfIWmPbVpWuvYfobVR28cJ3ubzHX9/C%20X2gk/nJ83Ws3ydOPrt/8m74uhNeox/at17X3uz3y9Gb42I+pdCV9HXXHF7MK3o7TvU/gSLr7ur48%20HuNLvyjPo5PHR9VJd5LuLfDrZHRt60pqVmrR3vN95vz2CpqVfDz9lrU7//7nv/L/nv/I//jX/5n/%2055z887d/5n92JVmyDTOnVD6kllNGn9IjWUenqlIvNUh/0TN9V+jDYXT33q48D+Lq6aoeC6azDa6z%20k5GRysicldQpVad0L7mEglWVqvE4IPelwT+/8N+EX2vrM2aqKqfTKWMkp9PY16eM8/Z4jErmTF3D%207pmqpF2ccifVlcrHJP/MUv/Kmn/mvH7IOUtq+ZClfsv5/LDV7H7Te0lv4/fsVC4j8Od7mFEuVPmS%20r62PS/gx9vB6yagPWZOk1tQ4p9dPqfotlctN77GN093prNl6Yri/mdqux7JkyZI1M51P2VrkrSfu%20JFWdpFL5R6oqs3/fB9/1vv8D+C7eHV+5sYd/t7P+kn0CSkcSz6twmZl61Tf36J/U6D4LsPLCPvg6%20PyaCez4L8Hbm6vP6vHwpvfCP187tQV6xJ0HKNpNqZrsY7Zyy1ikzI2tdor/kMjaLrfmxbirqc3+J%20+iX9bAbg8+8SvvpMn+sGDHc1MvfZ17neUplbtV4/tbXNAEwlnSVTgH0Yrr4BAAAA4MAEgAAAAABw%20YAJAAAAAADgwASAAAAAAHJgAEAAAAAAOTAAIAAAAAAcmAHzlqurJ+onuX3w2AMfS3S+Pr/DK3dbt%20nPO6HkNrBwDAn+kSAQAAAODABIAAAAAAcGACQAAAAAA4MAEgAAAAAByYABAAAAAADkwACAAAAAAH%20JgB8LXokqZsNc19XLj+mTpLq7XElXX58vA4zW01+dv/Nvv7pZwMAvC3zZjnv685j1zA/8zoAvs5M%206jLe7s8vj+ulK7XbY3nrTvc+gfetU7U3Nz2SPu29zkyypjKv22fOqe70mOmaGf0hGZXM9c7/G3jP%20Zjpr9kA6yZrOTKcrWbsze3sTqar9rePmTWWUNBDgG3V3+maMraqMMTLGyLIsdz47+Cu3N7EvF5dr%20Uuek1oxlu0Ade59Q3amMVGscAL7HGPtSlTlnMrcbLp01c57TvWYLCTvJeHK9VqPT4oc3zRSyu7uk%206SPXH0ddtu2/dKmkxzaLquY++y9Jjy/OuoKf6VJ7/WzbrJePu/X8GADgHavLjJTOduG5X4CaeQLw%2049TzWX+342vfHHN73LP9vGkCQAAAAAA4MAEgAAAAAByYABAAAAAADkwACAAAAAAHJgAEAAAAgAMT%20AAIAAADAgZ3ufQIA8DOMqnSSXP5vz3ueDvxQVZWqSjrp7nR35pyZc2Zd13ufHgAAr4wZgAAAAABw%20YAJAAAAAADgwASAAAAAAHJgAEAAAAAAOTAAIAAAAAAcmAAQAAACAAxMA3lnX2NczqZlUkoykkk5l%201kxXb/uSpEeq9xdftgHwDSrb2+D+VtiXt8SbbX/aDq/F8x7gtm7HCz3CvDkOXpkee49bGT2SXrZ1%20RqrVLMAPsY+n2/+97RMq/ezQkaR6pLJmZM2f+w7eotO9T+BIqurJ+u/omXRVUmtGnVNJZleSJamR%20rpmuc7p6D/72BikzlUp10n//PwevyvzTW83mEnJ/7ndp7Pun2n/XxqU+PjMIVpL05UHS/XzfSHft%20F56nbKHJsv17PdKdff/NC3skVfs/DHdW/Vife4BybevnzOw1s89JTlstJ9sNRo0DdzezD7IZteRU%20p3SfUnNJ1ZJlnq6Xo2O/6KzM7f2/ZqYgG+Cb1N4vdNasWZP6kPSSrTueqe6kKr0m3TPJp3R3Mua2%205k3z7nlnXZfLyJmkM+uybezXtP3sLv7WtI/EDECA7zKyjan1+PzJTJPL44q3S16fl2YA7rX6pI63%20/iLJ1jf0Tb3DHVxL8EkOPVJ77Y7LDZlUxn6wWYAAP0b1Zfjtm/97M8bWTPXcZ/8lyZrkHDe/j8G7%20KQAAAAAcmAAQAAAAAA5MAAgAAAAAByYABAAAAIADEwACAAAAwIEJAAEAAADgwASAdzZGpWpbujtz%20znRvf2K7qu58dgBv15yd7sflMtZWVcbw9sfbVlV5eHjIhw8f8p///Cf//ve/88cff+S3336796kB%20AK9UZ8sckmy5Q3dSlVRlWZY7nx0/mysgAAAAADgwASAAAAAAHJgAEAAAAAAOTAAIAAAAAAcmAAQA%20AACAAxMAAgAAAMCBCQBfgbp5PPpxW/UL2/vx+HGzHwB4T563cPPJs+pxc9zWOYweN83F0+PhV+rM%20JOd0zaRmKuckM5W5rXtufe6zep21LXBft+PnSHp8Zt/njoF7u63Tysux0Ixe4XhO9z6B9646Se2N%20eVWSSrr2cK+uQeDYHqU6WTqp7i0B1AQB79Tsy4Xh87sh9WT1fPNLr4C3ZoxTZkaWjCzLkrFs7cRI%2053Ta2rvq2oPASwiokec1mOmck/qU2b+n+/ek1pyyJjkn848stSa97oP1TO8NcVWntb/c2exzZp9T%20tSQ9UrVkjFPWed5qO6ckM+kP2+Ne8/mQBX61ZwH2JaCul24s1s1xn+u7eUuMQq/E7Wy+8Wx73cwK%20vO672QYAvDPXYG+zzZbamvqRue3vkXQlPf7U8OkfuJvqXGeW1Jpt5t85dTsDMDfHJNfaNgOQ+3t+%20I+WFYK9ujjHzj9fkWpudp+Hes4HVpwUOy4gEAAAAAAcmAAQAAACAAxMAAgAAAMCBCQABAAAA4MAE%20gAAAAABwYAJAAAAAADiw071PAACAr7Ouaz6cTvn06VP+8Y9/5H/+z/+Zjx8/5vfff8/5XPc+Pfii%20MUYyRkaNzFlZ15nOTDKTdKKEAeCHMwMQAAAAAA5MAAgAAAAAByYABAAAAIADEwACAAAAwIEJAAEA%20AADgwASAAAAAAHBgAsBXYtZXvmA/vn/4mcDfU51cKvA8krWS6pFlVjojs0aSkepk9OX4mVmPzyvz%20fv8DeOfGdd0ZeentcPSlPh9H2v7asRp+ltrG00v/cFn3ZVvNJ/U69+VC/8A9deXayyZbPfbz/c8e%20zxe2wfe5qboeT9d/43Vj73E3I8/KelO3I+/+uIzAwH2c7n0C713XC28UybUTqs710vRPjZHmh+80%20xpebnDm/HNA9fPo9+e1f+a+H37N++Hce/uuP/B//4//K//1fv+fTPysZp61255qRNWtmUjOnJCMj%20a1XWl7r4v6jtrw7MedeqHgum00l3Zs9URqqWJCPp5XpFOXqk99dVKl37gPusX+8YhrmP3suxa6ar%20s465P74syezOrO3YNb3VfjrdLjx5HdbudM/M3mq2qzIykhpZZ2c8C7D3Ct4GXmXMd7n0ty/3wZf2%20t/dj5/6o06lsod+HUVlnZ/kwUrO2ILBqiwHXmcxOet3H3Jmk0r2mU0/6EoBfyQzAN8hdT16Tzjb7%20b01lzG0G4LzOAMx1BuBl/knX3Gb/ad65o20creTJ7L/Ht8Tnw+z83A64s8tQ2vW0P7idEfjkuF91%20YvAFT2as3m7PY40+n92aqF9+gMuMvGtdfW1Vba+/7WPH9fne+z65xJ7bs/KpF+D+BIAAvFOXu/Jz%20b8z/bnPurRMAAHhbXMUA8I7dhH51+e4Fd+kBAIBjEQAC8D7V7cy/fTbgNfy72QYAAPDGCQABeIdu%20gr9rCHgbBgIAAByHABCA9+k6A/Dvfux3JH35oyH+GggAAPB2CAABeKcuH/s95+kfArn9wyAAAABv%20nwAQ+G7d20cmq57OihpjZFmWJ9u7O92dOYUr3NMW8lVdQsA13ecka1IzdXl3vMwSFAYCAABvmAAQ%20gPeptuAvteZxxt/lD39cFgAAgLfvdO8TAID7eP7HPy7bvvT9fr7/DwAAeHvMAATg/amb7/mrmVw+%20CvynY2707VumIBAAAHg7BIAAvE/17OO+XwoDAQAA3jABIADvWO/r2+//+yveOgEAgLfFVQwA79Rl%209l/fbLv8VWB/BAQAADgOAeCd1X7dOXokffN9UtfvnqqkT9u+HjeXo2PbDsBXq07SS5Jl3zJuns8t%20EryOsTPjkhG2t02A73UZU6ufXozcfrvq6KfrxDev8ko8/47gq5e26xuA18OIdG/Vewg4krk8XlyO%203rK/nDLzITOnJPWYGPaS6iV+hNzTsizpdNa106ksy4ckI1VL5tovvGLsNa6F595Gqk/JXNL7GDzy%207yT/zKykM9PzY+b8mO6ZzjnJsoWEnSQzlZdqHIC/MufMUpXTsmSpkXQnc2akchrL1t12J93pfd92%20TNLrvc8ecvN9wZ086wdGjYwxsvXElco2kaNqiR4YuCfp0Z3Vk1kllx/HfFz3JRR8GvbVk+PhjWpN%20EHfUp60hv87APu1Lksztxkuf9l59G5fLDECA71bPMpPK01ikXpj192QmoPsvvCl6B+B1MBoBAAAA%20wIEJAAEAAADgwASAAAAAAHBgAkAAAAAAODABIAAAAAAcmAAQAAAAAA5MAPjKdfeT9RNVv/hs4Knb%20uux0Hh4ekiRzzpdrFl6Z7k7tY6maBQAAjkoACAAAAAAHJgAEAAAAgAMTAAIAAADAgQkAAQAAAODA%20BIAAAAAAcGACQAAAAAA4MAHgKzcr6Uo623LRda8zgkedkWRkmcmSrV7XSkZmRndSM10zs+b+ipnK%20pZ4VMT9Tf2HfSHokqaQ/7MvHfbAdSZ+2bZlJzf2fGo/PM7/wb8OvMWtbkqfVPutSoS+3eE9H3vmN%20a4A3qvex8Tpwfm0/uvcQXXkyztZnxse+HYtnvtyfwK9wqdW+ef436rJFR0dwuvcJvHfd+y9b5/r+%20Myup3jbOdNJzW7Jm6ZnKzEhHI873mvPba6gz0lmSnLI8VP6Rj/m0JP/r/L8z0vnQ53Q/ZM1D5ujM%20WrPMkZ6VWZ2uTne/GGbX/mtR9XJTNvb9U4b4ro0sX9i7F8eThrxSqaSSpX7LPP+W9D+TtZPlH9ka%20+SWZ/0r6nJz+vyTrtq2XpNbtea3RwPOrXfqFy7hYValxypyVMU5bZ1BLZlcyKmNZUuOUUadUbb8t%20o0cq51xuw2z/4qXx/5p14h4y360767qmu7OMJd1L5pyZfVZd/GRfrrDxJCPce4M+pbOkekmy5HT6%20R9YaeXg45+PHU5Zz5dP5U5Zx2odYVczr1PsN7e4123v6ljMkc7s2u+QTN71uVW3PeuzH8lYZmV6R%20L11O9k042PX43ExA7mlmm0W1zJGRZB3Jw7JFg9VbUN3VmTW3jLtnqre6naV++ck+dzc+2Yvv9DgD%20cH7M9S2xPyaXcLHmFv5dZgDm/DPPGP62vmnh/twTvNDedfLyTJfnjf7fWQvAgSO4GRMvPcOXeoeL%20Ho/L0x35y/Hx7/z78NN9Zmb/i/X5Uq3zVvlJAgAAAMCBCQABAAAA4MAEgAAAAABwYAJAAAAAADgw%20ASAAAAAAHJgAEAAAAAAOTAB4Z939ZJ2qjDFSVamx3PHMAIBXqzvdnTln1nXNnPPJAq9ZVT3pebs7%20s7e6vfbEAMAPJQAEAAAAgAMTAAIAAADAgQkAAQAAAODABIAAAAAAcGACQAAAAAA4MAEgAAAAAByY%20ABAAAAAADuz/B6P0lOj/YdwkAAAAAElFTkSuQmCC%22%20preserveAspectRatio=%22none%22%20height=%22720%22%20width=%221280%22%20transform=%22matrix(.65625%200%200%20.92857%20-47.953%20175.22)%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22140%22%20y=%2292.362%22%20transform=%22matrix(2.94547%200%200%202.58969%20-190.771%20-99.327)%22%20font-weight=%22400%22%20font-size=%2240%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22140%22%20y=%2292.362%22%20style=%22line-height:125%25;-inkscape-font-specification:'Britannic%20Bold,%20Normal';text-align:start%22%20font-size=%2260%22%20font-family=%22Britannic%20Bold%22%3EVGA%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22165.714%22%20y=%22938.076%22%20transform=%22matrix(1.10999%200%200%201.53556%20-74.497%20-488.982)%22%20font-weight=%22400%22%20font-size=%2240%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22165.714%22%20y=%22938.076%22%3E640x480@72Mhz,%203bits%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "3c1e3bb9-fedd-4958-922d-f6bea987a9cd",
              "type": "basic.output",
              "data": {
                "name": "px_clk"
              },
              "position": {
                "x": 960,
                "y": 96
              }
            },
            {
              "id": "d1e8b4bb-5fc8-4ed7-bb56-e77d0d3599d8",
              "type": "basic.output",
              "data": {
                "name": "vsync"
              },
              "position": {
                "x": 960,
                "y": 184
              }
            },
            {
              "id": "0e4ec6f7-fe91-47bb-8666-305db4da1e5b",
              "type": "basic.output",
              "data": {
                "name": "hsync"
              },
              "position": {
                "x": 960,
                "y": 264
              }
            },
            {
              "id": "1d7cba26-8a20-4d0d-a807-3d04c9da167d",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": true
              },
              "position": {
                "x": -56,
                "y": 304
              }
            },
            {
              "id": "1abb0e43-39a7-4a67-a9f3-814c1bcfa121",
              "type": "basic.output",
              "data": {
                "name": "activevideo"
              },
              "position": {
                "x": 960,
                "y": 344
              }
            },
            {
              "id": "9c481124-0c6c-4f08-80f6-2ec1a16afd9b",
              "type": "basic.output",
              "data": {
                "name": "x_px",
                "range": "[9:0]",
                "size": 10
              },
              "position": {
                "x": 960,
                "y": 432
              }
            },
            {
              "id": "e6d80a12-f2da-4827-8420-458a8727fc4d",
              "type": "basic.output",
              "data": {
                "name": "y_px",
                "range": "[9:0]",
                "size": 10
              },
              "position": {
                "x": 960,
                "y": 512
              }
            },
            {
              "id": "77ae2e1b-9769-490a-a072-5562ea351075",
              "type": "basic.constant",
              "data": {
                "name": "FDivider",
                "value": "62",
                "local": false
              },
              "position": {
                "x": 384,
                "y": -40
              }
            },
            {
              "id": "acff07b8-f9b5-452f-936b-0e148483079c",
              "type": "basic.code",
              "data": {
                "code": "// @include VGASyncGen.v\n\n\n//-- Instantiate VgaSyncGenr module.\nVGASyncGen #(FDivider)\nVGASyncGen1 (\n    clk,                // System clock.\n    hsync,              // Horizontal syncro.\n    vsync,              // Vertical syncro.\n    x_px,               // Actual x pixel.\n    y_px,               // Actual y pixel.\n    activevideo,        // Active video.\n    px_clk              // Pixel clock 31.5Mhz (PLL).\n    );\n",
                "params": [
                  {
                    "name": "FDivider"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    }
                  ],
                  "out": [
                    {
                      "name": "px_clk"
                    },
                    {
                      "name": "vsync"
                    },
                    {
                      "name": "hsync"
                    },
                    {
                      "name": "activevideo"
                    },
                    {
                      "name": "x_px",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "y_px",
                      "range": "[9:0]",
                      "size": 10
                    }
                  ]
                }
              },
              "position": {
                "x": 144,
                "y": 88
              },
              "size": {
                "width": 576,
                "height": 496
              }
            },
            {
              "id": "af256521-1acd-4448-b46e-51cd08f08e39",
              "type": "basic.info",
              "data": {
                "info": "<b>Feedback divider</b>\n\n62 - 16Mhz - TinyFPGA.</br>\n83 - 12Mhz - iceZum Alhambra.",
                "readonly": true
              },
              "position": {
                "x": 528,
                "y": -48
              },
              "size": {
                "width": 352,
                "height": 96
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "1d7cba26-8a20-4d0d-a807-3d04c9da167d",
                "port": "out"
              },
              "target": {
                "block": "acff07b8-f9b5-452f-936b-0e148483079c",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "77ae2e1b-9769-490a-a072-5562ea351075",
                "port": "constant-out"
              },
              "target": {
                "block": "acff07b8-f9b5-452f-936b-0e148483079c",
                "port": "FDivider"
              }
            },
            {
              "source": {
                "block": "acff07b8-f9b5-452f-936b-0e148483079c",
                "port": "px_clk"
              },
              "target": {
                "block": "3c1e3bb9-fedd-4958-922d-f6bea987a9cd",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "acff07b8-f9b5-452f-936b-0e148483079c",
                "port": "vsync"
              },
              "target": {
                "block": "d1e8b4bb-5fc8-4ed7-bb56-e77d0d3599d8",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "acff07b8-f9b5-452f-936b-0e148483079c",
                "port": "hsync"
              },
              "target": {
                "block": "0e4ec6f7-fe91-47bb-8666-305db4da1e5b",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "acff07b8-f9b5-452f-936b-0e148483079c",
                "port": "activevideo"
              },
              "target": {
                "block": "1abb0e43-39a7-4a67-a9f3-814c1bcfa121",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "acff07b8-f9b5-452f-936b-0e148483079c",
                "port": "x_px"
              },
              "target": {
                "block": "9c481124-0c6c-4f08-80f6-2ec1a16afd9b",
                "port": "in"
              },
              "size": 10
            },
            {
              "source": {
                "block": "acff07b8-f9b5-452f-936b-0e148483079c",
                "port": "y_px"
              },
              "target": {
                "block": "e6d80a12-f2da-4827-8420-458a8727fc4d",
                "port": "in"
              },
              "size": 10
            }
          ]
        }
      }
    },
    "6663b89fb88d9e21e2124fe554d8341e8285c21d": {
      "package": {
        "name": "PxsRGB",
        "version": "1.0",
        "description": "generate one stream of constant RGB color",
        "author": "Sergio Cuenca",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22275%22%20height=%22231%22%20viewBox=%220%200%20275%20231%22%20preserveAspectRatio=%22none%22%3E%3Cimage%20width=%22275%22%20height=%22231%22%20xlink:href=%22data:image/jpg;base64,%20/9j/4AAQSkZJRgABAQEAkACQAAD/4QAiRXhpZgAATU0AKgAAAAgAAQESAAMAAAABAAEAAAAAAAD/%202wBDAAIBAQIBAQICAgICAgICAwUDAwMDAwYEBAMFBwYHBwcGBwcICQsJCAgKCAcHCg0KCgsMDAwM%20BwkODw0MDgsMDAz/2wBDAQICAgMDAwYDAwYMCAcIDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwM%20DAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCADnARMDASIAAhEBAxEB/8QAHwAAAQUBAQEBAQEA%20AAAAAAAAAAECAwQFBgcICQoL/8QAtRAAAgEDAwIEAwUFBAQAAAF9AQIDAAQRBRIhMUEGE1FhByJx%20FDKBkaEII0KxwRVS0fAkM2JyggkKFhcYGRolJicoKSo0NTY3ODk6Q0RFRkdISUpTVFVWV1hZWmNk%20ZWZnaGlqc3R1dnd4eXqDhIWGh4iJipKTlJWWl5iZmqKjpKWmp6ipqrKztLW2t7i5usLDxMXGx8jJ%20ytLT1NXW19jZ2uHi4+Tl5ufo6erx8vP09fb3+Pn6/8QAHwEAAwEBAQEBAQEBAQAAAAAAAAECAwQF%20BgcICQoL/8QAtREAAgECBAQDBAcFBAQAAQJ3AAECAxEEBSExBhJBUQdhcRMiMoEIFEKRobHBCSMz%20UvAVYnLRChYkNOEl8RcYGRomJygpKjU2Nzg5OkNERUZHSElKU1RVVldYWVpjZGVmZ2hpanN0dXZ3%20eHl6goOEhYaHiImKkpOUlZaXmJmaoqOkpaanqKmqsrO0tba3uLm6wsPExcbHyMnK0tPU1dbX2Nna%204uPk5ebn6Onq8vP09fb3+Pn6/9oADAMBAAIRAxEAPwDz3/huT41/9Fg+KX/hV3//AMdo/wCG5PjX%20/wBFg+KX/hV3/wD8dry2ivwv63X/AJ397P8AYb/VvKP+gWn/AOAR/wAj1L/huT41/wDRYPil/wCF%20Xf8A/wAdo/4bk+Nf/RYPil/4Vd//APHa8too+t1/5397D/VvKP8AoFp/+AR/yPUv+G5PjX/0WD4p%20f+FXf/8Ax2j/AIbk+Nf/AEWD4pf+FXf/APx2vLaKPrdf+d/ew/1byj/oFp/+AR/yPUv+G5PjX/0W%20D4pf+FXf/wDx2j/huT41/wDRYPil/wCFXf8A/wAdry2ij63X/nf3sP8AVvKP+gWn/wCAR/yPUv8A%20huT41/8ARYPil/4Vd/8A/HaP+G5PjX/0WD4pf+FXf/8Ax2vLaKPrdf8Anf3sP9W8o/6Baf8A4BH/%20ACPUv+G5PjX/ANFg+KX/AIVd/wD/AB2j/huT41/9Fg+KX/hV3/8A8dry2ij63X/nf3sP9W8o/wCg%20Wn/4BH/I9S/4bk+Nf/RYPil/4Vd//wDHaP8AhuT41/8ARYPil/4Vd/8A/Ha8too+t1/5397D/VvK%20P+gWn/4BH/I9S/4bk+Nf/RYPil/4Vd//APHaP+G5PjX/ANFg+KX/AIVd/wD/AB2vLaKPrdf+d/ew%20/wBW8o/6Baf/AIBH/I9S/wCG5PjX/wBFg+KX/hV3/wD8do/4bk+Nf/RYPil/4Vd//wDHa8too+t1%20/wCd/ew/1byj/oFp/wDgEf8AI9S/4bk+Nf8A0WD4pf8AhV3/AP8AHaP+G5PjX/0WD4pf+FXf/wDx%202vLaKPrdf+d/ew/1byj/AKBaf/gEf8j1L/huT41/9Fg+KX/hV3//AMdo/wCG5PjX/wBFg+KX/hV3%20/wD8dry2ij63X/nf3sP9W8o/6Baf/gEf8j1L/huT41/9Fg+KX/hV3/8A8do/4bk+Nf8A0WD4pf8A%20hV3/AP8AHa8too+t1/5397D/AFbyj/oFp/8AgEf8j1L/AIbk+Nf/AEWD4pf+FXf/APx2j/huT41/%209Fg+KX/hV3//AMdry2ij63X/AJ397D/VvKP+gWn/AOAR/wAj1L/huT41/wDRYPil/wCFXf8A/wAd%20o/4bk+Nf/RYPil/4Vd//APHa8too+t1/5397D/VvKP8AoFp/+AR/yPUv+G5PjX/0WD4pf+FXf/8A%20x2j/AIbk+Nf/AEWD4pf+FXf/APx2vLaKPrdf+d/ew/1byj/oFp/+AR/yPUv+G5PjX/0WD4pf+FXf%20/wDx2j/huT41/wDRYPil/wCFXf8A/wAdry2ij63X/nf3sP8AVvKP+gWn/wCAR/yPUv8AhuT41/8A%20RYPil/4Vd/8A/HaP+G5PjX/0WD4pf+FXf/8Ax2vLaKPrdf8Anf3sP9W8o/6Baf8A4BH/ACPUv+G5%20PjX/ANFg+KX/AIVd/wD/AB2ivLaKPrdf+d/ew/1byj/oFp/+AR/yCiiiuc9oKKKKACiiigAooooA%20KKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo%20oooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii%20igAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK%20ACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA%20KKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo%20oooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii%20igAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK%20ACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA%20KKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo%20oooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii%20igAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK%20ACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA%20KKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo%20oooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACii%20igAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKK%20ACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooA%20KKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAooooAKKKKACiiigAo%20oooAKKKKACiiigAooooAKKKKACiiigD/2Q==%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "69d500d0-9824-46b8-ae9c-cc19f55eefcb",
              "type": "basic.input",
              "data": {
                "name": "px_clk",
                "clock": false
              },
              "position": {
                "x": 1640,
                "y": -272
              }
            },
            {
              "id": "10563024-bd0a-4a4d-856c-4bb1dff3f104",
              "type": "basic.output",
              "data": {
                "name": "RGBStr",
                "range": "[25:0]",
                "size": 26
              },
              "position": {
                "x": 2408,
                "y": -216
              }
            },
            {
              "id": "03ffa583-169d-4213-a75b-dd41755aa32a",
              "type": "basic.input",
              "data": {
                "name": "VGAStr",
                "range": "[22:0]",
                "clock": false,
                "size": 23
              },
              "position": {
                "x": 1640,
                "y": -160
              }
            },
            {
              "id": "6fc99546-ebe2-4862-a4b1-81ce36d63b82",
              "type": "basic.constant",
              "data": {
                "name": "color",
                "value": "3'b001",
                "local": false
              },
              "position": {
                "x": 2024,
                "y": -408
              }
            },
            {
              "id": "fabbd2ae-d75a-443d-9b7e-b8205b86adb7",
              "type": "basic.code",
              "data": {
                "code": "// @include PxsConstant.v\r\n\r\n\r\n//-- Instantiate PxsConstant module.\r\nPxsConstant #(\r\n.color(color)\r\n)\r\nPxsConstant1(\r\n    px_clk,\r\n    VGAStr_i,\r\n    RGBStr_o\r\n    );\r\n",
                "params": [
                  {
                    "name": "color"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "px_clk"
                    },
                    {
                      "name": "VGAStr_i",
                      "range": "[22:0]",
                      "size": 23
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
                "x": 1864,
                "y": -296
              },
              "size": {
                "width": 416,
                "height": 224
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "69d500d0-9824-46b8-ae9c-cc19f55eefcb",
                "port": "out"
              },
              "target": {
                "block": "fabbd2ae-d75a-443d-9b7e-b8205b86adb7",
                "port": "px_clk"
              }
            },
            {
              "source": {
                "block": "fabbd2ae-d75a-443d-9b7e-b8205b86adb7",
                "port": "RGBStr_o"
              },
              "target": {
                "block": "10563024-bd0a-4a4d-856c-4bb1dff3f104",
                "port": "in"
              },
              "size": 26
            },
            {
              "source": {
                "block": "03ffa583-169d-4213-a75b-dd41755aa32a",
                "port": "out"
              },
              "target": {
                "block": "fabbd2ae-d75a-443d-9b7e-b8205b86adb7",
                "port": "VGAStr_i"
              },
              "size": 23
            },
            {
              "source": {
                "block": "6fc99546-ebe2-4862-a4b1-81ce36d63b82",
                "port": "constant-out"
              },
              "target": {
                "block": "fabbd2ae-d75a-443d-9b7e-b8205b86adb7",
                "port": "color"
              }
            }
          ]
        }
      }
    },
    "429fbcb9c06e515546027e073609a9fd57c51b74": {
      "package": {
        "name": "PxsVGAEndframe",
        "version": "1.0",
        "description": "Check endframe of a stream VGA.",
        "author": "Juan Manuel Rico",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22445.188%22%20height=%22384.582%22%20viewBox=%220%200%20417.36366%20360.54544%22%3E%3Cdefs%3E%3ClinearGradient%20id=%22a%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#fff%22/%3E%3Cstop%20offset=%221%22%20stop-color=%22#2442ff%22%20stop-opacity=%220%22/%3E%3C/linearGradient%3E%3ClinearGradient%20xlink:href=%22#a%22%20id=%22b%22%20x1=%22649.273%22%20y1=%22563.726%22%20x2=%22203%22%20y2=%22213.726%22%20gradientUnits=%22userSpaceOnUse%22/%3E%3C/defs%3E%3Cg%20transform=%22translate(-137.91%20-156.18)%22%20fill-rule=%22evenodd%22%20stroke-width=%226%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%3E%3Crect%20width=%22411.364%22%20height=%22354.545%22%20x=%22140.909%22%20y=%22159.18%22%20ry=%22112.266%22%20fill=%22url(#b)%22%20stroke=%22#000200%22/%3E%3Cpath%20d=%22M561.364%20513.726l-39.739-19.516-38.243%2022.303%206.28-43.824-33.029-29.48%2043.62-7.569%2017.83-40.522%2020.678%2039.146%2044.05%204.435-30.841%2031.763z%22%20fill=%22#f9f600%22%20stroke=%22#f20200%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "1e201ff8-5636-44f0-87aa-f8ee3cee39ad",
              "type": "basic.output",
              "data": {
                "name": "endframe"
              },
              "position": {
                "x": 1072,
                "y": 48
              }
            },
            {
              "id": "82f17f8e-ae05-48a4-a20c-51d02286ecff",
              "type": "basic.input",
              "data": {
                "name": "VGAStr_i",
                "range": "[22:0]",
                "clock": false,
                "size": 23
              },
              "position": {
                "x": -96,
                "y": 48
              }
            },
            {
              "id": "56b5cdb2-54a2-4a75-9d6e-13338e5cd203",
              "type": "basic.constant",
              "data": {
                "name": "width_screen",
                "value": "640",
                "local": true
              },
              "position": {
                "x": 304,
                "y": -104
              }
            },
            {
              "id": "7f587af9-e7f8-4b4c-82bf-c47c2298645c",
              "type": "basic.constant",
              "data": {
                "name": "height_screen",
                "value": "480",
                "local": true
              },
              "position": {
                "x": 736,
                "y": -104
              }
            },
            {
              "id": "96f9c582-aa38-448f-867b-924e5f1a9fbc",
              "type": "basic.code",
              "data": {
                "code": "// Alias in stream.\n`define XC 22:13\n`define YC 12:3\n\n// Check endframe.\nassign  endframe = ((VGAStr_i[`XC]==width_screen-1) && (VGAStr_i[`YC]==height_screen-1)) ? 1'b1 : 1'b0;\n",
                "params": [
                  {
                    "name": "width_screen"
                  },
                  {
                    "name": "height_screen"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "VGAStr_i",
                      "range": "[22:0]",
                      "size": 23
                    }
                  ],
                  "out": [
                    {
                      "name": "endframe"
                    }
                  ]
                }
              },
              "position": {
                "x": 136,
                "y": 16
              },
              "size": {
                "width": 864,
                "height": 128
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "96f9c582-aa38-448f-867b-924e5f1a9fbc",
                "port": "endframe"
              },
              "target": {
                "block": "1e201ff8-5636-44f0-87aa-f8ee3cee39ad",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "82f17f8e-ae05-48a4-a20c-51d02286ecff",
                "port": "out"
              },
              "target": {
                "block": "96f9c582-aa38-448f-867b-924e5f1a9fbc",
                "port": "VGAStr_i"
              },
              "size": 23
            },
            {
              "source": {
                "block": "56b5cdb2-54a2-4a75-9d6e-13338e5cd203",
                "port": "constant-out"
              },
              "target": {
                "block": "96f9c582-aa38-448f-867b-924e5f1a9fbc",
                "port": "width_screen"
              }
            },
            {
              "source": {
                "block": "7f587af9-e7f8-4b4c-82bf-c47c2298645c",
                "port": "constant-out"
              },
              "target": {
                "block": "96f9c582-aa38-448f-867b-924e5f1a9fbc",
                "port": "height_screen"
              }
            }
          ]
        }
      }
    },
    "c4dd08263a85a91ba53e2ae2b38de344c5efcb52": {
      "package": {
        "name": "Bit 0",
        "version": "1.0.0",
        "description": "Assign 0 to the output wire",
        "author": "Jesús Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2247.303%22%20height=%2227.648%22%20viewBox=%220%200%2044.346456%2025.919999%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22325.37%22%20y=%22315.373%22%20font-weight=%22400%22%20font-size=%2212.669%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22translate(-307.01%20-298.51)%22%3E%3Ctspan%20x=%22325.37%22%20y=%22315.373%22%20style=%22-inkscape-font-specification:'Courier%2010%20Pitch'%22%20font-family=%22Courier%2010%20Pitch%22%3E0%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 608,
                "y": 192
              }
            },
            {
              "id": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
              "type": "basic.code",
              "data": {
                "code": "// Bit 0\n\nassign v = 1'b0;",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "v"
                    }
                  ]
                }
              },
              "position": {
                "x": 96,
                "y": 96
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
                "block": "b959fb96-ac67-4aea-90b3-ed35a4c17bf5",
                "port": "v"
              },
              "target": {
                "block": "19c8f68d-5022-487f-9ab0-f0a3cd58bead",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "f8a63bec44260e47587e9fd93ceabbb59604aa0f": {
      "package": {
        "name": "Serial_RX_115200",
        "version": "0.1",
        "description": "Receptor serie a 115200 baudios",
        "author": "Juan Gonzalez-gomez",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22102.991%22%20height=%2276.959%22%20viewBox=%220%200%2096.554068%2072.14963%22%3E%3Cpath%20d=%22M74.06%2019.646l.167%2019.068%2021.39-19.731V1.24z%22%20fill=%22#ececec%22%20stroke=%22#000%22%20stroke-width=%221.875%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M1.103%2019.84L29.291.937l65.994.332-20.892%2018.903%22%20fill=%22#e6e6e6%22%20stroke=%22#000%22%20stroke-width=%221.875%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20y=%2269.396%22%20x=%227.234%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2229.899%22%20letter-spacing=%220%22%20word-spacing=%220%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2243.386%22%20y=%2297.246%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%224.712%22%20y=%2254.008%22%20font-weight=%22400%22%20font-size=%2216.326%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%224.712%22%20y=%2254.008%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ESerial%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%226.034%22%20y=%2271.91%22%20font-weight=%22400%22%20font-size=%2216.89%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%226.034%22%20y=%2271.91%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3E115200%3C/tspan%3E%3C/text%3E%3Crect%20width=%2273.621%22%20height=%2219.234%22%20x=%22.938%22%20y=%2219.978%22%20ry=%221.858%22%20fill=%22#e6e6e6%22%20stroke=%22#000%22%20stroke-width=%221.875%22%20stroke-linecap=%22square%22/%3E%3Ccircle%20cx=%2210.389%22%20cy=%2229.429%22%20r=%223.15%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%22.938%22%20stroke-linecap=%22square%22/%3E%3Ccircle%20cx=%2219.674%22%20cy=%2229.429%22%20r=%223.15%22%20fill=%22#faa%22%20stroke=%22#000%22%20stroke-width=%22.938%22%20stroke-linecap=%22square%22/%3E%3Ccircle%20cx=%2261.883%22%20cy=%2229.429%22%20r=%223.15%22%20fill=%22green%22%20stroke=%22#000%22%20stroke-width=%22.938%22%20stroke-linecap=%22square%22/%3E%3Ccircle%20cx=%2229.617%22%20cy=%2229.429%22%20r=%223.15%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%22.938%22%20stroke-linecap=%22square%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2261.668%22%20y=%2253.547%22%20font-weight=%22400%22%20font-size=%2216.326%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22green%22%3E%3Ctspan%20x=%2261.668%22%20y=%2253.547%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ERX%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "76d8f4db-f28e-41a7-8dda-54ffa99429a9",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -920,
                "y": -136
              }
            },
            {
              "id": "90c78331-94f6-48ef-8d69-1ccf4b9eb9b5",
              "type": "basic.output",
              "data": {
                "name": "rcv"
              },
              "position": {
                "x": 688,
                "y": -80
              }
            },
            {
              "id": "a40f5065-af61-4b43-8f29-35e9a13f7651",
              "type": "basic.output",
              "data": {
                "name": "data",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 688,
                "y": 80
              }
            },
            {
              "id": "36c50fc8-6f7a-4cca-a448-8ba0a032fd4f",
              "type": "basic.input",
              "data": {
                "name": "RX",
                "clock": false
              },
              "position": {
                "x": -904,
                "y": 160
              }
            },
            {
              "id": "00bfd815-08db-4566-a947-00aaef2a0b22",
              "type": "5d56f16d3f855d65c6efb53721204b2bf0dc5489",
              "position": {
                "x": -640,
                "y": 144
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "a618b998-10de-4ba2-8d65-3d497ff56605",
              "type": "basic.info",
              "data": {
                "info": "Generador de Baudios\nSe generan 115200 pulsos\npor segundo",
                "readonly": true
              },
              "position": {
                "x": -648,
                "y": -200
              },
              "size": {
                "width": 208,
                "height": 64
              }
            },
            {
              "id": "bf573176-7a6e-4d82-aabd-9991d2219c7a",
              "type": "basic.info",
              "data": {
                "info": "Línea de entrada asíncrona. Necesario un \nbiestable para sincronizar\n(y cumplir las reglas de diseño síncrono)",
                "readonly": true
              },
              "position": {
                "x": -664,
                "y": 48
              },
              "size": {
                "width": 336,
                "height": 80
              }
            },
            {
              "id": "250386eb-78cf-4494-bb0f-fc88ee9de863",
              "type": "basic.info",
              "data": {
                "info": "Registro de desplazamiento para pasar el dato\nrecibido de serie a paralelo",
                "readonly": true
              },
              "position": {
                "x": -304,
                "y": 208
              },
              "size": {
                "width": 384,
                "height": 48
              }
            },
            {
              "id": "e1ddc14d-42be-46ef-8edc-9a3e2da64fd1",
              "type": "basic.info",
              "data": {
                "info": "Descartar el bit de start y de stop. Nos\nquedamos solo con el dato",
                "readonly": true
              },
              "position": {
                "x": -8,
                "y": 40
              },
              "size": {
                "width": 336,
                "height": 48
              }
            },
            {
              "id": "1839f21e-5261-429c-a08a-781948aaf4ab",
              "type": "basic.info",
              "data": {
                "info": "Registo de datos, \ncon el dato recibido\n",
                "readonly": true
              },
              "position": {
                "x": 464,
                "y": -8
              },
              "size": {
                "width": 192,
                "height": 48
              }
            },
            {
              "id": "0ede6c1b-324a-4f1d-b9b5-6b190465b475",
              "type": "basic.info",
              "data": {
                "info": "Controlador de recepción (Autómata finito)\nActiva las microórdenes (señales de control) en cada momento\nEs una máquina de estados",
                "readonly": true
              },
              "position": {
                "x": -352,
                "y": -200
              },
              "size": {
                "width": 496,
                "height": 64
              }
            },
            {
              "id": "a78ee373-bf48-4f21-a324-ba559c37b35e",
              "type": "basic.info",
              "data": {
                "info": "RECEPTOR SERIE A 115200 BAUDIOS\n\nDiseño dividido en Ruta de datos + Controlador\nLa ruta está compuesta por:\n* Generador de baudios\n* Registro de desplazamiento de 10 bits para pasar de serie a paralelo\n* Registro de datos de 8 bits",
                "readonly": true
              },
              "position": {
                "x": -672,
                "y": -368
              },
              "size": {
                "width": 592,
                "height": 128
              }
            },
            {
              "id": "da73d150-38c5-4b7d-871f-bf6ab73321a0",
              "type": "basic.info",
              "data": {
                "info": "Microórdenes (Señales de control):\n\n* RCV: Se pone a uno cuando se ha recibido un carácter\n* Bauden: Activar el generador de baudios\n* Load: Cargar el dato en el registro de datos y poner contador\n de bits recibidos a cero",
                "readonly": true
              },
              "position": {
                "x": -112,
                "y": -376
              },
              "size": {
                "width": 528,
                "height": 112
              }
            },
            {
              "id": "fc5f7564-167c-4ad9-8c71-8557eeee8b7d",
              "type": "b669841b237f7cc5fbee6b1a0307e61e5d580042",
              "position": {
                "x": 136,
                "y": 96
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "3559720f-4da5-4846-af6d-4274cf3d93dc",
              "type": "2393067d102d16e1ec56845b622db53a04bf9321",
              "position": {
                "x": 512,
                "y": 64
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "6a841675-66e0-47cd-9779-7aa497bd072d",
              "type": "1c3bf0d6d2b59ac4ab7cc628dc57caed8cc88b1e",
              "position": {
                "x": -152,
                "y": 96
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "af15fef7-21dc-4fcb-8f82-d9a4562b1d4a",
              "type": "dd29f1d8cc92ad6e8873d43349718c4923115c1d",
              "position": {
                "x": -544,
                "y": -80
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "8ec8899e-49f6-45ed-a832-a410954070de",
              "type": "9c7988289d81cdd2bc27ab92c8c8d27cd07b71d0",
              "position": {
                "x": -176,
                "y": -96
              },
              "size": {
                "width": 96,
                "height": 96
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "36c50fc8-6f7a-4cca-a448-8ba0a032fd4f",
                "port": "out"
              },
              "target": {
                "block": "00bfd815-08db-4566-a947-00aaef2a0b22",
                "port": "78ec5b41-e94f-4892-a7c5-42f2b4970c1b"
              }
            },
            {
              "source": {
                "block": "3559720f-4da5-4846-af6d-4274cf3d93dc",
                "port": "47f26063-a63e-443b-a7fb-cfe694929fbd"
              },
              "target": {
                "block": "a40f5065-af61-4b43-8f29-35e9a13f7651",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "fc5f7564-167c-4ad9-8c71-8557eeee8b7d",
                "port": "91dc4d8d-432e-4642-9cb7-c9b07b051a25"
              },
              "target": {
                "block": "3559720f-4da5-4846-af6d-4274cf3d93dc",
                "port": "33700e97-a265-48de-8d15-7a54ad25acf6"
              },
              "size": 8
            },
            {
              "source": {
                "block": "6a841675-66e0-47cd-9779-7aa497bd072d",
                "port": "1553aade-c0ec-486b-a704-dd7f13a29e26"
              },
              "target": {
                "block": "fc5f7564-167c-4ad9-8c71-8557eeee8b7d",
                "port": "a80324d0-d1eb-4404-9af4-84c75e75502b"
              },
              "size": 10
            },
            {
              "source": {
                "block": "af15fef7-21dc-4fcb-8f82-d9a4562b1d4a",
                "port": "8e4ef6fc-6752-45ff-89b6-b866d6728dd4"
              },
              "target": {
                "block": "8ec8899e-49f6-45ed-a832-a410954070de",
                "port": "1f5ad563-489e-4b76-a630-b7a161d426e4"
              }
            },
            {
              "source": {
                "block": "8ec8899e-49f6-45ed-a832-a410954070de",
                "port": "7073bcf4-87c3-4d8d-a312-94023491897b"
              },
              "target": {
                "block": "af15fef7-21dc-4fcb-8f82-d9a4562b1d4a",
                "port": "8ecc801f-f2c7-4a16-ae8c-1c52431e53e0"
              },
              "vertices": [
                {
                  "x": 168,
                  "y": -192
                },
                {
                  "x": -680,
                  "y": -224
                }
              ]
            },
            {
              "source": {
                "block": "8ec8899e-49f6-45ed-a832-a410954070de",
                "port": "1acf8c0f-c22d-4324-b49f-1b7df46cc78b"
              },
              "target": {
                "block": "90c78331-94f6-48ef-8d69-1ccf4b9eb9b5",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "00bfd815-08db-4566-a947-00aaef2a0b22",
                "port": "f164a06d-b8e3-480d-b351-5d7d1e7ae3a2"
              },
              "target": {
                "block": "8ec8899e-49f6-45ed-a832-a410954070de",
                "port": "25a1e3f7-1de2-485b-82eb-5196e664a84a"
              },
              "vertices": [
                {
                  "x": -256,
                  "y": 72
                }
              ]
            },
            {
              "source": {
                "block": "76d8f4db-f28e-41a7-8dda-54ffa99429a9",
                "port": "out"
              },
              "target": {
                "block": "af15fef7-21dc-4fcb-8f82-d9a4562b1d4a",
                "port": "9621a51a-a428-4cf9-b4ed-9c57674f9a04"
              }
            },
            {
              "source": {
                "block": "76d8f4db-f28e-41a7-8dda-54ffa99429a9",
                "port": "out"
              },
              "target": {
                "block": "8ec8899e-49f6-45ed-a832-a410954070de",
                "port": "e014e6b9-e074-47bd-a64c-52649534e150"
              }
            },
            {
              "source": {
                "block": "76d8f4db-f28e-41a7-8dda-54ffa99429a9",
                "port": "out"
              },
              "target": {
                "block": "00bfd815-08db-4566-a947-00aaef2a0b22",
                "port": "e85c1424-78de-4f24-a4bc-6a2901b26148"
              },
              "vertices": [
                {
                  "x": -704,
                  "y": 64
                }
              ]
            },
            {
              "source": {
                "block": "76d8f4db-f28e-41a7-8dda-54ffa99429a9",
                "port": "out"
              },
              "target": {
                "block": "3559720f-4da5-4846-af6d-4274cf3d93dc",
                "port": "204b4f2f-b12f-46a8-be1f-de1e14a7d9b5"
              },
              "vertices": [
                {
                  "x": 424,
                  "y": -40
                }
              ]
            },
            {
              "source": {
                "block": "00bfd815-08db-4566-a947-00aaef2a0b22",
                "port": "f164a06d-b8e3-480d-b351-5d7d1e7ae3a2"
              },
              "target": {
                "block": "6a841675-66e0-47cd-9779-7aa497bd072d",
                "port": "6b783879-c159-4126-9d21-0045523c0585"
              }
            },
            {
              "source": {
                "block": "8ec8899e-49f6-45ed-a832-a410954070de",
                "port": "f1f8b871-f521-4107-a7a7-a0bae692da72"
              },
              "target": {
                "block": "3559720f-4da5-4846-af6d-4274cf3d93dc",
                "port": "fc45acac-34e6-4c46-a0bd-a1baaefefa91"
              },
              "vertices": [
                {
                  "x": 392,
                  "y": 40
                }
              ]
            },
            {
              "source": {
                "block": "76d8f4db-f28e-41a7-8dda-54ffa99429a9",
                "port": "out"
              },
              "target": {
                "block": "6a841675-66e0-47cd-9779-7aa497bd072d",
                "port": "a88f11c6-85a0-47f2-a20a-22a6b863660c"
              },
              "vertices": [
                {
                  "x": -280,
                  "y": 32
                }
              ]
            },
            {
              "source": {
                "block": "af15fef7-21dc-4fcb-8f82-d9a4562b1d4a",
                "port": "8e4ef6fc-6752-45ff-89b6-b866d6728dd4"
              },
              "target": {
                "block": "6a841675-66e0-47cd-9779-7aa497bd072d",
                "port": "72e750ab-d694-4705-a3bf-a8f15026aa01"
              },
              "vertices": [
                {
                  "x": -312,
                  "y": 72
                }
              ]
            }
          ]
        }
      }
    },
    "5d56f16d3f855d65c6efb53721204b2bf0dc5489": {
      "package": {
        "name": "Biestable-D-0",
        "version": "0.0.1",
        "description": "Biestable D inicializado a 0",
        "author": "Juan Gonzalez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2263.799%22%20height=%2257.366%22%20viewBox=%220%200%2059.811602%2053.780232%22%3E%3Cg%20transform=%22translate(-310.54%20-373.968)%22%3E%3Cpath%20d=%22M353.401%20407.803l3.157%2019.445%203.914-19.445%22%20fill=%22#ccc%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22310.844%22%20y=%22395.812%22%20font-weight=%22400%22%20font-size=%2227.335%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22310.844%22%20y=%22395.812%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ED%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22316.916%22%20y=%22420.476%22%20font-weight=%22400%22%20font-size=%2220%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%22316.916%22%20y=%22420.476%22%3E1%3C/tspan%3E%3C/text%3E%3Crect%20width=%2223.595%22%20height=%2221.484%22%20x=%22311.539%22%20y=%22402.712%22%20ry=%223.545%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M351.238%20398.03l1.658-19.774h-6.818v-3.788h22.097v3.788h-6.44l1.196%2019.953s5.208.866%206.428%204.494c1.221%203.628-.254%205.053.105%205.104l-25.022-.03s-.566-4.234%201.398-6.377c1.965-2.142%205.398-3.37%205.398-3.37z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "e85c1424-78de-4f24-a4bc-6a2901b26148",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 120,
                "y": 112
              }
            },
            {
              "id": "9402f46c-f0c1-489e-9870-4a7918bacf00",
              "type": "f031e4fc352e6ede045a170c47e79b3daea935b9",
              "position": {
                "x": 368,
                "y": 184
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "f164a06d-b8e3-480d-b351-5d7d1e7ae3a2",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 608,
                "y": 184
              }
            },
            {
              "id": "78ec5b41-e94f-4892-a7c5-42f2b4970c1b",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 120,
                "y": 200
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "9402f46c-f0c1-489e-9870-4a7918bacf00",
                "port": "f164a06d-b8e3-480d-b351-5d7d1e7ae3a2"
              },
              "target": {
                "block": "f164a06d-b8e3-480d-b351-5d7d1e7ae3a2",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "e85c1424-78de-4f24-a4bc-6a2901b26148",
                "port": "out"
              },
              "target": {
                "block": "9402f46c-f0c1-489e-9870-4a7918bacf00",
                "port": "e85c1424-78de-4f24-a4bc-6a2901b26148"
              }
            },
            {
              "source": {
                "block": "78ec5b41-e94f-4892-a7c5-42f2b4970c1b",
                "port": "out"
              },
              "target": {
                "block": "9402f46c-f0c1-489e-9870-4a7918bacf00",
                "port": "78ec5b41-e94f-4892-a7c5-42f2b4970c1b"
              }
            }
          ]
        }
      }
    },
    "f031e4fc352e6ede045a170c47e79b3daea935b9": {
      "package": {
        "name": "Biestable-D-0",
        "version": "0.0.1",
        "description": "Biestable D inicializado a 1",
        "author": "Juan Gonzalez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2287.998%22%20height=%2260.81%22%20viewBox=%220%200%2082.498336%2057.009284%22%3E%3Cg%20transform=%22translate(-290.853%20-371.476)%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22287.101%22%20y=%22427.822%22%20font-weight=%22400%22%20font-size=%2240.87%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22287.101%22%20y=%22427.822%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ED%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22289.914%22%20y=%22386.672%22%20font-weight=%22400%22%20font-size=%2220%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22289.914%22%20y=%22386.672%22%3EFlip-Flop%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22346.916%22%20y=%22420.476%22%20font-weight=%22400%22%20font-size=%2220%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%22346.916%22%20y=%22420.476%22%3E1%3C/tspan%3E%3C/text%3E%3Crect%20width=%2237.881%22%20height=%2227.274%22%20x=%22334.396%22%20y=%22400.212%22%20ry=%224.5%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "1efbaf77-17bd-4606-966f-21008e0a1556",
              "type": "basic.constant",
              "data": {
                "name": "INI",
                "value": "1",
                "local": true
              },
              "position": {
                "x": 376,
                "y": 72
              }
            },
            {
              "id": "e85c1424-78de-4f24-a4bc-6a2901b26148",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 120,
                "y": 112
              }
            },
            {
              "id": "dca68ad6-8ef1-4bf1-b17b-ec58e5fe751d",
              "type": "7bd2552a05ad36e0726c3b65301c8a223561ad9f",
              "position": {
                "x": 376,
                "y": 184
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "f164a06d-b8e3-480d-b351-5d7d1e7ae3a2",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 608,
                "y": 184
              }
            },
            {
              "id": "78ec5b41-e94f-4892-a7c5-42f2b4970c1b",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 120,
                "y": 200
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "1efbaf77-17bd-4606-966f-21008e0a1556",
                "port": "constant-out"
              },
              "target": {
                "block": "dca68ad6-8ef1-4bf1-b17b-ec58e5fe751d",
                "port": "bfd12554-1a25-4ee2-8ab9-eeefad56595e"
              }
            },
            {
              "source": {
                "block": "e85c1424-78de-4f24-a4bc-6a2901b26148",
                "port": "out"
              },
              "target": {
                "block": "dca68ad6-8ef1-4bf1-b17b-ec58e5fe751d",
                "port": "6855f64f-fa1c-4371-b2e1-a98970674a96"
              }
            },
            {
              "source": {
                "block": "78ec5b41-e94f-4892-a7c5-42f2b4970c1b",
                "port": "out"
              },
              "target": {
                "block": "dca68ad6-8ef1-4bf1-b17b-ec58e5fe751d",
                "port": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2"
              }
            },
            {
              "source": {
                "block": "dca68ad6-8ef1-4bf1-b17b-ec58e5fe751d",
                "port": "ffdd9aa2-aea3-4aa9-8431-80e799226774"
              },
              "target": {
                "block": "f164a06d-b8e3-480d-b351-5d7d1e7ae3a2",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "7bd2552a05ad36e0726c3b65301c8a223561ad9f": {
      "package": {
        "name": "Flip-flop D",
        "version": "1.0.0",
        "description": "Delay flip-flop",
        "author": "Carlos Diaz",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2287.998%22%20height=%2260.81%22%20viewBox=%220%200%2082.498336%2057.009284%22%3E%3Cg%20transform=%22translate(-290.853%20-371.476)%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22287.101%22%20y=%22427.822%22%20font-weight=%22400%22%20font-size=%2240.87%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22287.101%22%20y=%22427.822%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ED%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22289.914%22%20y=%22386.672%22%20font-weight=%22400%22%20font-size=%2220%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22289.914%22%20y=%22386.672%22%3EFlip-Flop%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22341.738%22%20y=%22420.476%22%20font-weight=%22400%22%20font-size=%2220%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%22341.738%22%20y=%22420.476%22%3EIni%3C/tspan%3E%3C/text%3E%3Crect%20width=%2237.881%22%20height=%2227.274%22%20x=%22334.396%22%20y=%22400.212%22%20ry=%224.5%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "bfd12554-1a25-4ee2-8ab9-eeefad56595e",
              "type": "basic.constant",
              "data": {
                "name": "DINI",
                "value": "0",
                "local": false
              },
              "position": {
                "x": 568,
                "y": 16
              }
            },
            {
              "id": "e5222a6e-4717-4f08-99d7-7cde897060ca",
              "type": "basic.code",
              "data": {
                "code": "// D flip-flop\n// parameter DINI = 0;\n\nreg q = DINI;\n\nalways @(posedge clk)\nbegin\n  q <= d;\nend\n\n",
                "params": [
                  {
                    "name": "DINI"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "d"
                    }
                  ],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 432,
                "y": 128
              },
              "size": {
                "width": 368,
                "height": 272
              }
            },
            {
              "id": "6855f64f-fa1c-4371-b2e1-a98970674a96",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 232,
                "y": 168
              }
            },
            {
              "id": "ffdd9aa2-aea3-4aa9-8431-80e799226774",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 864,
                "y": 232
              }
            },
            {
              "id": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 232,
                "y": 304
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2",
                "port": "out"
              },
              "target": {
                "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
                "port": "d"
              }
            },
            {
              "source": {
                "block": "6855f64f-fa1c-4371-b2e1-a98970674a96",
                "port": "out"
              },
              "target": {
                "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
                "port": "q"
              },
              "target": {
                "block": "ffdd9aa2-aea3-4aa9-8431-80e799226774",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "bfd12554-1a25-4ee2-8ab9-eeefad56595e",
                "port": "constant-out"
              },
              "target": {
                "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
                "port": "DINI"
              }
            }
          ]
        }
      }
    },
    "b669841b237f7cc5fbee6b1a0307e61e5d580042": {
      "package": {
        "name": "Split10-Hx8xL",
        "version": "0.1",
        "description": "Separar los bits de un bus de 10 en  alto (H)  centrales y bajo (L)",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2278.363%22%20height=%2234.431%22%20viewBox=%220%200%2073.465763%2032.279629%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2267.193%22%20y=%2214.102%22%20font-weight=%22400%22%20font-size=%229.594%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22red%22%3E%3Ctspan%20x=%2267.193%22%20y=%2214.102%22%3EH%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%224.237%22%20y=%229.769%22%20font-weight=%22400%22%20font-size=%2212.858%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%224.237%22%20y=%229.769%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ESplit%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M38.215%2024.076H.542l-.069-7.403h37.868l6.346-6.346h21.848v.993l-21.687-.089-6.3%206.156%2028.02-.025.064%205.418-27.824.063L44.76%2029.3h21.955v.914H44.477z%22%20fill=%22#00f%22%20stroke=%22#00f%22%20stroke-width=%22.938%22%20stroke-linecap=%22square%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2267.925%22%20y=%2232.28%22%20font-weight=%22400%22%20font-size=%229.594%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22red%22%3E%3Ctspan%20x=%2267.925%22%20y=%2232.28%22%3EL%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "6f5f4b82-18a2-42d1-8c75-3b3e13c958a9",
              "type": "basic.output",
              "data": {
                "name": "H"
              },
              "position": {
                "x": 592,
                "y": 120
              }
            },
            {
              "id": "91dc4d8d-432e-4642-9cb7-c9b07b051a25",
              "type": "basic.output",
              "data": {
                "name": "o",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 592,
                "y": 192
              }
            },
            {
              "id": "a80324d0-d1eb-4404-9af4-84c75e75502b",
              "type": "basic.input",
              "data": {
                "name": "i",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": 88,
                "y": 192
              }
            },
            {
              "id": "a36c4562-0ae4-4956-b759-800d0d4ce3d9",
              "type": "basic.output",
              "data": {
                "name": "L"
              },
              "position": {
                "x": 592,
                "y": 272
              }
            },
            {
              "id": "28b1f946-d6f7-4a7e-8197-7be015a1fd0b",
              "type": "basic.code",
              "data": {
                "code": "assign o = i[8:1];",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i",
                      "range": "[9:0]",
                      "size": 10
                    }
                  ],
                  "out": [
                    {
                      "name": "H"
                    },
                    {
                      "name": "o",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "L"
                    }
                  ]
                }
              },
              "position": {
                "x": 240,
                "y": 176
              },
              "size": {
                "width": 240,
                "height": 96
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "28b1f946-d6f7-4a7e-8197-7be015a1fd0b",
                "port": "o"
              },
              "target": {
                "block": "91dc4d8d-432e-4642-9cb7-c9b07b051a25",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "28b1f946-d6f7-4a7e-8197-7be015a1fd0b",
                "port": "H"
              },
              "target": {
                "block": "6f5f4b82-18a2-42d1-8c75-3b3e13c958a9",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "28b1f946-d6f7-4a7e-8197-7be015a1fd0b",
                "port": "L"
              },
              "target": {
                "block": "a36c4562-0ae4-4956-b759-800d0d4ce3d9",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "a80324d0-d1eb-4404-9af4-84c75e75502b",
                "port": "out"
              },
              "target": {
                "block": "28b1f946-d6f7-4a7e-8197-7be015a1fd0b",
                "port": "i"
              },
              "size": 10
            }
          ]
        }
      }
    },
    "2393067d102d16e1ec56845b622db53a04bf9321": {
      "package": {
        "name": "Reg8_ld",
        "version": "0.0.1",
        "description": "Registro de 8 bits, con entrada de load, inicializado a 0",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22109.404%22%20height=%2277.949%22%20viewBox=%220%200%20102.56663%2073.076845%22%3E%3Cg%20transform=%22translate(-208.312%20-424.877)%22%3E%3Cpath%20d=%22M288.631%20471.868l4.174%2025.586%205.175-25.586%22%20fill=%22#ccc%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22207.303%22%20y=%22444.804%22%20font-weight=%22400%22%20font-size=%2227.335%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22207.303%22%20y=%22444.804%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3EReg%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22212.366%22%20y=%22480.075%22%20font-weight=%22400%22%20font-size=%2220%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%22212.366%22%20y=%22480.075%22%3E0x00%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M285.771%20459.009l2.192-26.019h-9.014v-4.984h29.214v4.984h-8.514l1.581%2026.254s6.885%201.14%208.499%205.913c1.614%204.774-.337%206.65.138%206.717l-33.08-.04s-.75-5.57%201.848-8.39c2.597-2.82%207.136-4.435%207.136-4.435z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Crect%20width=%2257.074%22%20height=%2231.82%22%20x=%22209.812%22%20y=%22457.548%22%20ry=%223.018%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%223%22%20stroke-linecap=%22square%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "204b4f2f-b12f-46a8-be1f-de1e14a7d9b5",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 496,
                "y": 128
              }
            },
            {
              "id": "fc45acac-34e6-4c46-a0bd-a1baaefefa91",
              "type": "basic.input",
              "data": {
                "name": "ld",
                "clock": false
              },
              "position": {
                "x": 496,
                "y": 240
              }
            },
            {
              "id": "47f26063-a63e-443b-a7fb-cfe694929fbd",
              "type": "basic.output",
              "data": {
                "name": "q",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 1208,
                "y": 256
              }
            },
            {
              "id": "33700e97-a265-48de-8d15-7a54ad25acf6",
              "type": "basic.input",
              "data": {
                "name": "d",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 496,
                "y": 368
              }
            },
            {
              "id": "3cde35d8-225a-4a66-9595-1711ca0a5fb0",
              "type": "basic.code",
              "data": {
                "code": "reg [7:0] do = 8'h00;\n\nalways @(posedge clk)\n  if (load)\n    do <= di;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "load"
                    },
                    {
                      "name": "di",
                      "range": "[7:0]",
                      "size": 8
                    }
                  ],
                  "out": [
                    {
                      "name": "do",
                      "range": "[7:0]",
                      "size": 8
                    }
                  ]
                }
              },
              "position": {
                "x": 800,
                "y": 200
              },
              "size": {
                "width": 256,
                "height": 176
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "33700e97-a265-48de-8d15-7a54ad25acf6",
                "port": "out"
              },
              "target": {
                "block": "3cde35d8-225a-4a66-9595-1711ca0a5fb0",
                "port": "di"
              },
              "size": 8
            },
            {
              "source": {
                "block": "3cde35d8-225a-4a66-9595-1711ca0a5fb0",
                "port": "do"
              },
              "target": {
                "block": "47f26063-a63e-443b-a7fb-cfe694929fbd",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "204b4f2f-b12f-46a8-be1f-de1e14a7d9b5",
                "port": "out"
              },
              "target": {
                "block": "3cde35d8-225a-4a66-9595-1711ca0a5fb0",
                "port": "clk"
              },
              "vertices": [
                {
                  "x": 672,
                  "y": 216
                }
              ]
            },
            {
              "source": {
                "block": "fc45acac-34e6-4c46-a0bd-a1baaefefa91",
                "port": "out"
              },
              "target": {
                "block": "3cde35d8-225a-4a66-9595-1711ca0a5fb0",
                "port": "load"
              },
              "vertices": [
                {
                  "x": 672,
                  "y": 288
                }
              ]
            }
          ]
        }
      }
    },
    "1c3bf0d6d2b59ac4ab7cc628dc57caed8cc88b1e": {
      "package": {
        "name": "SReg10_ini_0",
        "version": "0.1",
        "description": "Registro de desplazamiento de 10 bits. Entrada serie, salida paralelo. Específico para unidad de recepción serie",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22123.473%22%20height=%2298.316%22%20viewBox=%220%200%20115.75597%2092.170889%22%3E%3Cdefs%3E%3Cmarker%20orient=%22auto%22%20id=%22a%22%20overflow=%22visible%22%3E%3Cpath%20d=%22M-5.231-2.42L1.324-.01-5.23%202.401c1.047-1.423%201.041-3.37%200-4.821z%22%20fill=%22#00f%22%20fill-rule=%22evenodd%22%20stroke=%22#00f%22%20stroke-width=%22.375%22%20stroke-linejoin=%22round%22/%3E%3C/marker%3E%3C/defs%3E%3Cg%20transform=%22translate(-195.123%20-405.783)%22%3E%3Cpath%20d=%22M288.631%20471.868l4.174%2025.586%205.175-25.586%22%20fill=%22#ccc%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22193.161%22%20y=%22445.309%22%20font-weight=%22400%22%20font-size=%2227.335%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22193.161%22%20y=%22445.309%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ESReg%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22200.749%22%20y=%22480.075%22%20font-weight=%22400%22%20font-size=%2220%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%22200.749%22%20y=%22480.075%22%3E0x000%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M285.771%20459.009l2.192-26.019h-9.014v-4.984h29.214v4.984h-8.514l1.581%2026.254s6.885%201.14%208.499%205.913c1.614%204.774-.337%206.65.138%206.717l-33.08-.04s-.75-5.57%201.848-8.39c2.597-2.82%207.136-4.435%207.136-4.435z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Crect%20width=%2270.206%22%20height=%2231.82%22%20x=%22196.68%22%20y=%22457.548%22%20ry=%223.018%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%223%22%20stroke-linecap=%22square%22/%3E%3Cpath%20d=%22M200.679%20413.606h103.54%22%20fill=%22#00f%22%20stroke=%22#00f%22%20stroke-width=%223%22%20stroke-linecap=%22square%22%20marker-end=%22url(#a)%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "a88f11c6-85a0-47f2-a20a-22a6b863660c",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 40,
                "y": -80
              }
            },
            {
              "id": "72e750ab-d694-4705-a3bf-a8f15026aa01",
              "type": "basic.input",
              "data": {
                "name": "clk_baud",
                "clock": false
              },
              "position": {
                "x": 40,
                "y": 72
              }
            },
            {
              "id": "1553aade-c0ec-486b-a704-dd7f13a29e26",
              "type": "basic.output",
              "data": {
                "name": "data",
                "range": "[9:0]",
                "size": 10
              },
              "position": {
                "x": 848,
                "y": 72
              }
            },
            {
              "id": "6b783879-c159-4126-9d21-0045523c0585",
              "type": "basic.input",
              "data": {
                "name": "ser_in",
                "clock": false
              },
              "position": {
                "x": 40,
                "y": 208
              }
            },
            {
              "id": "01630021-b404-4f16-9819-6dc357b8b873",
              "type": "basic.code",
              "data": {
                "code": "reg [9:0] raw_data = 10'h0;\n\n\nalways @(posedge clk)\n  if (clk_baud == 1)\n    raw_data <= {ser_in, raw_data[9:1]};\n    \nassign data = raw_data;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "clk_baud"
                    },
                    {
                      "name": "ser_in"
                    }
                  ],
                  "out": [
                    {
                      "name": "data",
                      "range": "[9:0]",
                      "size": 10
                    }
                  ]
                }
              },
              "position": {
                "x": 272,
                "y": 24
              },
              "size": {
                "width": 384,
                "height": 160
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "a88f11c6-85a0-47f2-a20a-22a6b863660c",
                "port": "out"
              },
              "target": {
                "block": "01630021-b404-4f16-9819-6dc357b8b873",
                "port": "clk"
              },
              "vertices": [
                {
                  "x": 192,
                  "y": 48
                }
              ]
            },
            {
              "source": {
                "block": "72e750ab-d694-4705-a3bf-a8f15026aa01",
                "port": "out"
              },
              "target": {
                "block": "01630021-b404-4f16-9819-6dc357b8b873",
                "port": "clk_baud"
              }
            },
            {
              "source": {
                "block": "6b783879-c159-4126-9d21-0045523c0585",
                "port": "out"
              },
              "target": {
                "block": "01630021-b404-4f16-9819-6dc357b8b873",
                "port": "ser_in"
              },
              "vertices": [
                {
                  "x": 192,
                  "y": 160
                }
              ]
            },
            {
              "source": {
                "block": "01630021-b404-4f16-9819-6dc357b8b873",
                "port": "data"
              },
              "target": {
                "block": "1553aade-c0ec-486b-a704-dd7f13a29e26",
                "port": "in"
              },
              "size": 10
            }
          ]
        }
      }
    },
    "dd29f1d8cc92ad6e8873d43349718c4923115c1d": {
      "package": {
        "name": "Baudgen-rx-115200",
        "version": "0.1",
        "description": "Generacion de temporizacion para el receptor serie de 115200 baudios",
        "author": "Juan Gonzalez-gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22116.563%22%20height=%22107.832%22%20viewBox=%220%200%20109.27784%20101.09301%22%3E%3Ctext%20y=%22100.766%22%20x=%222.348%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2240.397%22%20letter-spacing=%220%22%20word-spacing=%220%22%20font-family=%22sans-serif%22%20fill=%22red%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%22100.766%22%20x=%222.348%22%20font-weight=%22700%22%20font-size=%2223.084%22%3E115200%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M40.85%2073.768c-1.314-2.254-3.35-4.461-7.21-7.812-2.092-1.815-3.364-2.823-10.606-8.401-5.676-4.373-8.508-6.8-11.79-10.101-3.28-3.302-5.208-5.932-6.862-9.361-1.056-2.19-1.782-4.3-2.234-6.492-.573-2.785-.65-3.728-.648-7.83.004-5.38.182-6.275%201.954-9.865%201.317-2.666%202.317-4.07%204.4-6.18C9.877%205.68%2011.19%204.75%2014.03%203.35c3.155-1.556%205.437-1.964%2010.138-1.813%203.653.118%204.99.48%207.886%202.142%204.558%202.615%208.095%206.813%209.074%2010.77.16.647.325%201.177.367%201.177.042%200%20.411-.757.82-1.682%201.392-3.145%202.685-5.064%204.74-7.038C53.342.86%2063.257-.234%2071.274%204.234c3.274%201.824%205.938%204.48%208.002%207.978%201.625%202.753%202.456%206.41%202.598%2011.433.205%207.277-1.13%2012.32-4.683%2017.694-1.41%202.133-2.453%203.425-4.409%205.46-3.156%203.288-6.002%205.704-12.72%2010.799-4.24%203.215-6.754%205.282-10.39%208.55-2.916%202.618-7.432%207.176-7.867%207.938-.19.333-.362.605-.382.605-.02%200-.278-.415-.574-.923z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%223%22/%3E%3Cpath%20d=%22M26.952%2049.239h10.205V22.905h7.952V49.28H53.8%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222.813%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22bevel%22/%3E%3Ctext%20y=%2272.74%22%20x=%2261.743%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2229.899%22%20letter-spacing=%220%22%20word-spacing=%220%22%20font-family=%22sans-serif%22%20fill=%22red%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2272.74%22%20x=%2261.743%22%20font-weight=%22700%22%20font-size=%2217.085%22%3EBaud%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "9621a51a-a428-4cf9-b4ed-9c57674f9a04",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -1088,
                "y": -56
              }
            },
            {
              "id": "8e4ef6fc-6752-45ff-89b6-b866d6728dd4",
              "type": "basic.output",
              "data": {
                "name": "clk_out"
              },
              "position": {
                "x": -160,
                "y": 48
              }
            },
            {
              "id": "8ecc801f-f2c7-4a16-ae8c-1c52431e53e0",
              "type": "basic.input",
              "data": {
                "name": "clk_ena",
                "clock": false
              },
              "position": {
                "x": -1096,
                "y": 168
              }
            },
            {
              "id": "f8dd7f07-1a39-4503-9683-434f74ac831b",
              "type": "basic.code",
              "data": {
                "code": "//-- Constants for obtaining standard BAURATES:\n`define B115200 139 //16Mhz\n`define B57600  208\n`define B38400  313\n\n`define B19200  625\n`define B9600   1250\n`define B4800   2500\n`define B2400   5000\n`define B1200   10000\n`define B600    20000\n`define B300    40000\n\n\nlocalparam BAUDRATE = `B115200;\n\n//-- Number of bits needed for storing the baudrate divisor\nlocalparam N = $clog2(BAUDRATE);\n\n//-- Value for generating the pulse in the middle of the period\nlocalparam M2 = (BAUDRATE >> 1);\n\n//-- Counter for implementing the divisor (it is a BAUDRATE module counter)\n//-- (when BAUDRATE is reached, it start again from 0)\nreg [N-1:0] divcounter = 0;\n\n//-- Contador módulo M\nalways @(posedge clk)\n\n  if (clk_ena)\n    //-- Normal working: counting. When the maximum count is reached, it starts from 0\n    divcounter <= (divcounter == BAUDRATE - 1) ? 0 : divcounter + 1;\n  else\n    //-- Counter fixed to its maximum value\n    //-- When it is resumed it start from 0\n    divcounter <= BAUDRATE - 1;\n\n//-- The output is 1 when the counter is in the middle of the period, if clk_ena is active\n//-- It is 1 only for one system clock cycle\nassign clk_out = (divcounter == M2) ? clk_ena : 0;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "clk_ena"
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
                "x": -856,
                "y": -136
              },
              "size": {
                "width": 592,
                "height": 432
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "9621a51a-a428-4cf9-b4ed-9c57674f9a04",
                "port": "out"
              },
              "target": {
                "block": "f8dd7f07-1a39-4503-9683-434f74ac831b",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "8ecc801f-f2c7-4a16-ae8c-1c52431e53e0",
                "port": "out"
              },
              "target": {
                "block": "f8dd7f07-1a39-4503-9683-434f74ac831b",
                "port": "clk_ena"
              }
            },
            {
              "source": {
                "block": "f8dd7f07-1a39-4503-9683-434f74ac831b",
                "port": "clk_out"
              },
              "target": {
                "block": "8e4ef6fc-6752-45ff-89b6-b866d6728dd4",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "9c7988289d81cdd2bc27ab92c8c8d27cd07b71d0": {
      "package": {
        "name": "Serial-RX-controller",
        "version": "0.1",
        "description": "Controlador para la recepcion serie",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22104.379%22%20height=%2297.208%22%20viewBox=%220%200%2097.855538%2091.133307%22%3E%3Cpath%20d=%22M30.63%2060.216a12.161%2012.161%200%200%201-2.118-.807c-1.344-.702-3.332-2.71-4.051-4.09l-.556-1.067-1.712-.046c-1.368-.036-1.925-.125-2.77-.44-2.98-1.112-5.217-3.415-6.123-6.304-.435-1.39-.46-3.63-.054-4.987.15-.504.252-.93.225-.945-2.14-1.239-4.028-3.672-4.69-6.043-.326-1.167-.26-3.509.134-4.775.583-1.871%201.933-3.8%203.478-4.968.433-.327.503-.452.356-.628-.357-.43-.964-2.302-1.061-3.276-.333-3.32%202.195-6.876%205.615-7.9l.9-.27-.095-1.03c-.441-4.731%204.034-8.883%208.792-8.157.916.14%201.274.145%201.316.018.122-.364%201.286-1.712%201.946-2.251.91-.744%202.532-1.49%203.628-1.667%202.928-.476%206.381%201.552%207.889%204.631l.604%201.235.042%2022.364c.045%2024.049.061%2023.5-.749%2025.66-1.618%204.316-6.536%206.896-10.946%205.743zm21.797.077c-2.924-.634-5.726-3.036-6.76-5.794-.826-2.203-.803-1.41-.758-25.614l.04-22.452.611-1.233C47.07%202.15%2050.497.109%2053.338.566c1.12.18%202.076.56%203.1%201.227.863.563%202.163%201.9%202.444%202.514.154.337.222.354.96.235.436-.07%201.322-.118%201.97-.105%204.173.081%207.7%204.047%207.312%208.22l-.097%201.046.51.106c1.982.41%204.256%202.248%205.22%204.217.783%201.596.99%203.02.66%204.537-.143.654-.442%201.552-.666%201.997l-.408.81.518.39c1.519%201.147%202.872%203.083%203.462%204.952.397%201.26.46%203.584.129%204.775-.58%202.08-2.194%204.35-3.927%205.517-.393.265-.736.498-.763.518-.027.02.075.449.226.953.405%201.356.38%203.598-.055%204.987-.902%202.875-3.158%205.198-6.123%206.304-.845.315-1.402.404-2.77.44l-1.712.046-.556%201.066c-.718%201.38-2.707%203.389-4.048%204.09-1.96%201.023-4.202%201.338-6.297.885z%22%20fill=%22#faa%22%20stroke=%22#000%22/%3E%3Ctext%20y=%2275.222%22%20x=%223.975%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2229.899%22%20letter-spacing=%220%22%20word-spacing=%220%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2275.222%22%20x=%223.975%22%20font-weight=%22700%22%20font-size=%2217.085%22%3ESerial%20RX%3C/tspan%3E%20%3C/text%3E%3Ctext%20y=%2290.886%22%20x=%22-.87%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2217.472%22%20letter-spacing=%220%22%20word-spacing=%220%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3EController%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M30.486%2060.852a12.161%2012.161%200%200%201-2.117-.808c-1.344-.702-3.332-2.709-4.052-4.09l-.555-1.066-1.712-.046c-1.368-.036-1.925-.125-2.77-.44-2.98-1.112-5.217-3.415-6.123-6.305-.436-1.389-.46-3.63-.055-4.986.151-.505.252-.93.226-.945-2.14-1.24-4.028-3.672-4.69-6.044-.327-1.166-.26-3.508.133-4.774.583-1.872%201.934-3.8%203.479-4.969.432-.326.503-.45.356-.627-.358-.43-.964-2.302-1.062-3.277-.332-3.32%202.196-6.876%205.616-7.9l.9-.27-.096-1.028c-.44-4.733%204.035-8.885%208.792-8.158.917.14%201.274.145%201.317.018.121-.365%201.286-1.712%201.946-2.252.909-.743%202.532-1.489%203.628-1.667%202.927-.475%206.381%201.553%207.888%204.632l.605%201.235.042%2022.363c.045%2024.05.06%2023.5-.75%2025.662-1.617%204.315-6.535%206.895-10.946%205.742zm4.125-2.401c2.45-.653%204.236-2.498%204.822-4.98.154-.65.197-5.87.197-23.532V7.241l-.46-.83c-.575-1.035-1.437-1.823-2.58-2.358-1.253-.586-2.884-.573-4.063.033-1.099.565-1.94%201.458-2.573%202.73-.312.627-.686%201.135-.939%201.276-.386.215-.492.203-1.333-.152-1.356-.573-3.24-.552-4.465.048a5.034%205.034%200%200%200-2.481%202.71c-.286.755-.339%201.158-.287%202.182.037.731.168%201.45.313%201.722.137.256.469.934.738%201.506%201.436%203.059%205.58%204.902%208.783%203.907%201.323-.41%202.31-1.084%203.589-2.45.873-.932%201.184-1.166%201.547-1.166%201.022%200%201.555.95%201.065%201.895-.467.902-2.43%202.684-3.677%203.338l-1.16.609.384.236c.211.13.985.84%201.718%201.58%201.654%201.664%202.427%203.034%202.59%204.589.13%201.223.042%201.316-1.088%201.147-.674-.101-.705-.132-1.449-1.462-1.533-2.74-3.819-4.537-7.112-5.588-1.925-.614-3.188-1.145-4.038-1.698-1.11-.72-2.576-2.292-3.161-3.388l-.517-.968-.651.1c-.995.152-2.542.96-3.076%201.608-.905%201.094-1.166%201.852-1.175%203.402-.01%201.605.247%202.34%201.223%203.498.902%201.071.724%201.738-.652%202.45-1.062.548-2.526%201.948-2.992%202.86-.784%201.533-.998%203.451-.568%205.096.534%202.046%201.665%203.403%203.627%204.35%201.71.827%201.77%201.01.98%203.035-.503%201.294-.51%203.643-.015%204.988%201.24%203.363%204.82%205.04%208.59%204.024a12.888%2012.888%200%200%200%202.375-.954c3.909-2.154%205.068-5.599%203.31-9.831-1.132-2.728-3.72-4.343-6.765-4.223-.837.033-.958-.004-1.297-.397-.476-.552-.474-1.065.005-1.62.366-.426.425-.44%201.845-.427%204.5.04%207.807%202.715%209.08%207.344.403%201.47.434%203.64.071%204.995-.729%202.72-2.955%205.28-5.854%206.734-.951.476-.96.578-.163%201.84.872%201.378%202.517%202.58%204.013%202.933.904.212%202.852.19%203.726-.043zm17.672%202.477c-2.923-.633-5.726-3.035-6.76-5.794-.826-2.203-.802-1.41-.758-25.613l.041-22.453.61-1.232c1.511-3.05%204.938-5.091%207.779-4.634%201.119.18%202.076.559%203.099%201.226.864.564%202.163%201.9%202.445%202.515.154.337.221.354.96.235.436-.07%201.322-.118%201.969-.105%204.174.08%207.701%204.046%207.313%208.22l-.098%201.046.51.105c1.982.411%204.257%202.249%205.221%204.218.782%201.596.989%203.02.659%204.537-.142.653-.442%201.552-.666%201.997l-.407.81.518.39c1.518%201.146%202.872%203.083%203.461%204.952.398%201.26.46%203.584.13%204.774-.58%202.08-2.195%204.35-3.927%205.518a85.5%2085.5%200%200%200-.763.518c-.027.02.075.448.225.953.406%201.356.381%203.597-.054%204.986-.902%202.876-3.158%205.199-6.124%206.305-.845.315-1.401.404-2.77.44l-1.712.046-.555%201.066c-.719%201.38-2.708%203.388-4.049%204.089-1.96%201.024-4.202%201.339-6.297.885zm4.878-2.85c1.88-.879%202.957-2.155%203.729-4.421.526-1.547.785-1.705%202.317-1.417%201.385.26%203.113.142%204.265-.293%201.759-.664%203.273-2.262%203.87-4.084.336-1.023.384-3.355.09-4.318l-.194-.64-2.158-.016c-2.26-.017-3.944-.265-5.658-.835-.892-.296-1.116-.313-2.145-.16-.632.094-1.535.315-2.006.49-1.918.717-3.663%202.476-4.367%204.402-.373%201.022-.753%201.39-1.434%201.39-.561%200-1.213-.633-1.213-1.177%200-.225.155-.774.343-1.22%201.156-2.73%203.426-4.927%206.034-5.837l.81-.283-.673-.868c-.946-1.223-1.412-2.09-1.888-3.514-.74-2.206-.734-5.714.009-6.456.473-.471%201.256-.489%201.736-.038.338.317.35.407.266%202.23-.068%201.499-.03%202.115.18%202.918.616%202.346%202.367%204.57%204.299%205.458%201.675.77%203.046%201.013%205.746%201.017%202.214.003%202.405-.021%203.257-.411%201.038-.475%202.43-1.782%202.922-2.745%201.037-2.03%201.036-4.611-.002-6.643-.455-.889-1.913-2.292-2.962-2.85-.474-.252-.948-.569-1.054-.703-.35-.45-.223-1.05.372-1.757.975-1.158%201.232-1.893%201.223-3.498-.01-1.55-.27-2.308-1.175-3.402-.532-.645-2.08-1.456-3.066-1.607l-.642-.098-.691%201.067c-.969%201.494-2.681%203.157-3.829%203.716-1.202.586-3.052.719-4.689.336-1.368-.32-3.62-1.365-3.845-1.785-.28-.522-.197-1.111.214-1.521.486-.486%201.028-.487%201.861-.005%201.725.999%204.074%201.322%205.361.738.853-.388%201.976-1.51%202.791-2.793%201.109-1.743%201.287-2.28%201.287-3.878%200-1.228-.057-1.528-.436-2.299A5.227%205.227%200%200%200%2063.57%207.89c-1.05-.484-3.25-.474-4.285.018-.405.193-.83.35-.946.35-.431%200-.909-.51-1.361-1.452-1.191-2.483-3.54-3.678-5.919-3.012-1.662.466-3.252%201.998-3.667%203.536-.252.934-.123%2045.394.134%2046.306.672%202.386%202.387%204.13%204.731%204.813.439.128%201.305.188%202.288.159%201.383-.041%201.712-.108%202.616-.53z%22%20stroke=%22#000%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "e014e6b9-e074-47bd-a64c-52649534e150",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -88,
                "y": 256
              }
            },
            {
              "id": "7073bcf4-87c3-4d8d-a312-94023491897b",
              "type": "basic.output",
              "data": {
                "name": "bauden"
              },
              "position": {
                "x": 1112,
                "y": 384
              }
            },
            {
              "id": "1f5ad563-489e-4b76-a630-b7a161d426e4",
              "type": "basic.input",
              "data": {
                "name": "clk_baud",
                "clock": false
              },
              "position": {
                "x": -72,
                "y": 488
              }
            },
            {
              "id": "1acf8c0f-c22d-4324-b49f-1b7df46cc78b",
              "type": "basic.output",
              "data": {
                "name": "rcv"
              },
              "position": {
                "x": 1112,
                "y": 528
              }
            },
            {
              "id": "25a1e3f7-1de2-485b-82eb-5196e664a84a",
              "type": "basic.input",
              "data": {
                "name": "rx",
                "clock": false
              },
              "position": {
                "x": -64,
                "y": 656
              }
            },
            {
              "id": "f1f8b871-f521-4107-a7a7-a0bae692da72",
              "type": "basic.output",
              "data": {
                "name": "load"
              },
              "position": {
                "x": 1120,
                "y": 680
              }
            },
            {
              "id": "8fd381b1-8e9c-40a4-af6d-c146154cae38",
              "type": "bfd6e21d813227ae4f1076cce95d83c18046eab3",
              "position": {
                "x": 176,
                "y": 440
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "1fd4d2d3-df56-4b1b-9f51-cafdc67f98cc",
              "type": "basic.code",
              "data": {
                "code": "//-------------------------------------------\n//-- CONTROLLER  (Finite state machine)\n//-------------------------------------------\n\n//-- Receiver states\nlocalparam IDLE = 2'd0;  //-- IDLEde reposo\nlocalparam RECV = 2'd1;  //-- Receiving data\nlocalparam LOAD = 2'd2;  //-- Storing the character received\nlocalparam DAV = 2'd3;   //-- Data is available\n\n//-- Control signals\nreg bauden = 0;  //-- Enable the baud generator\nreg clear = 0;   //-- Clear the bit counter\nreg load = 0;    //-- Load the received character into the data register\nreg rcv;\n\n//-- fsm states\nreg [1:0] state = IDLE;\nreg [1:0] next_state;\n\n//-- Transition between states\nalways @(posedge clk)\n    state <= next_state;\n\n//-- Control signal generation and next states\nalways @(*) begin\n\n  //-- Default values\n  next_state = state;      //-- Stay in the same state by default\n  bauden = 0;\n  clear = 0;\n  load = 0;\n\n  case(state)\n\n    //-- Idle state\n    //-- Remain in this state until a start bit is received in rx_r\n    IDLE: begin\n      clear = 1;\n      rcv = 0;\n      if (rx_r == 0)\n        next_state = RECV;\n    end\n\n    //-- Receiving state\n    //-- Turn on the baud generator and wait for the serial package to be received\n    RECV: begin\n      bauden = 1;\n      rcv = 0;\n      if (bitc == 4'd10)\n        next_state = LOAD;\n    end\n\n    //-- Store the received character in the data register (1 cycle)\n    LOAD: begin\n      load = 1;\n      rcv = 0;\n      next_state = DAV;\n    end\n\n    //-- Data Available (1 cycle)\n    DAV: begin\n      rcv = 1;\n      next_state = IDLE;\n    end\n\n    default:\n      rcv = 0;\n\n  endcase\n\nend\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "bitc",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "rx_r"
                    }
                  ],
                  "out": [
                    {
                      "name": "clear"
                    },
                    {
                      "name": "bauden"
                    },
                    {
                      "name": "rcv"
                    },
                    {
                      "name": "load"
                    }
                  ]
                }
              },
              "position": {
                "x": 464,
                "y": 192
              },
              "size": {
                "width": 496,
                "height": 592
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "1fd4d2d3-df56-4b1b-9f51-cafdc67f98cc",
                "port": "clear"
              },
              "target": {
                "block": "8fd381b1-8e9c-40a4-af6d-c146154cae38",
                "port": "5029b66e-b9f1-4976-8497-3a36230b32f4"
              },
              "vertices": [
                {
                  "x": 1024,
                  "y": 168
                },
                {
                  "x": 104,
                  "y": 344
                }
              ]
            },
            {
              "source": {
                "block": "8fd381b1-8e9c-40a4-af6d-c146154cae38",
                "port": "6ec6b18d-e370-4bf5-934f-d6f37e5a4053"
              },
              "target": {
                "block": "1fd4d2d3-df56-4b1b-9f51-cafdc67f98cc",
                "port": "bitc"
              },
              "vertices": [],
              "size": 4
            },
            {
              "source": {
                "block": "1f5ad563-489e-4b76-a630-b7a161d426e4",
                "port": "out"
              },
              "target": {
                "block": "8fd381b1-8e9c-40a4-af6d-c146154cae38",
                "port": "df1f6b75-8d15-4ec7-8d94-9dde7a482b75"
              }
            },
            {
              "source": {
                "block": "e014e6b9-e074-47bd-a64c-52649534e150",
                "port": "out"
              },
              "target": {
                "block": "1fd4d2d3-df56-4b1b-9f51-cafdc67f98cc",
                "port": "clk"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "e014e6b9-e074-47bd-a64c-52649534e150",
                "port": "out"
              },
              "target": {
                "block": "8fd381b1-8e9c-40a4-af6d-c146154cae38",
                "port": "c0854505-8d25-4c9f-9a3f-c5900782b2cf"
              },
              "vertices": [
                {
                  "x": 48,
                  "y": 304
                }
              ]
            },
            {
              "source": {
                "block": "1fd4d2d3-df56-4b1b-9f51-cafdc67f98cc",
                "port": "bauden"
              },
              "target": {
                "block": "7073bcf4-87c3-4d8d-a312-94023491897b",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "1fd4d2d3-df56-4b1b-9f51-cafdc67f98cc",
                "port": "rcv"
              },
              "target": {
                "block": "1acf8c0f-c22d-4324-b49f-1b7df46cc78b",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "1fd4d2d3-df56-4b1b-9f51-cafdc67f98cc",
                "port": "load"
              },
              "target": {
                "block": "f1f8b871-f521-4107-a7a7-a0bae692da72",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "25a1e3f7-1de2-485b-82eb-5196e664a84a",
                "port": "out"
              },
              "target": {
                "block": "1fd4d2d3-df56-4b1b-9f51-cafdc67f98cc",
                "port": "rx_r"
              }
            }
          ]
        }
      }
    },
    "bfd6e21d813227ae4f1076cce95d83c18046eab3": {
      "package": {
        "name": "Contador4-sr-ena",
        "version": "0.0.1",
        "description": "Contador de 4 bits, con reset sincrono y enable. Salida en bus",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22215.585%22%20height=%22145.758%22%20viewBox=%220%200%20202.11081%20136.64772%22%3E%3Cdefs%3E%3Cmarker%20orient=%22auto%22%20id=%22a%22%20overflow=%22visible%22%3E%3Cpath%20d=%22M-1.926-1.21L1.352-.005l-3.278%201.206a2.05%202.05%200%200%200%200-2.411z%22%20fill=%22#00f%22%20fill-rule=%22evenodd%22%20stroke=%22#00f%22%20stroke-width=%22.1875%22%20stroke-linejoin=%22round%22/%3E%3C/marker%3E%3C/defs%3E%3Cg%20transform=%22translate(-184.027%20-292.587)%22%3E%3Crect%20width=%2239.464%22%20height=%2263.929%22%20x=%22318.242%22%20y=%22329.214%22%20ry=%223.75%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22340.77%22%20y=%22359.153%22%20transform=%22scale(.94516%201.05802)%22%20font-weight=%22400%22%20font-size=%2247.638%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222%22%3E%3Ctspan%20x=%22340.77%22%20y=%22359.153%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M319.74%20362.607h37.093%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22192.91%22%20y=%22318.845%22%20font-weight=%22400%22%20font-size=%2234.561%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22192.91%22%20y=%22318.845%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3EContador%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M378.373%20388.969V343.75%22%20fill=%22#00f%22%20stroke=%22#00f%22%20stroke-width=%226%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20marker-end=%22url(#a)%22/%3E%3Crect%20width=%2239.464%22%20height=%2263.929%22%20x=%22273.599%22%20y=%22329.214%22%20ry=%223.75%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22293.536%22%20y=%22359.153%22%20transform=%22scale(.94516%201.05802)%22%20font-weight=%22400%22%20font-size=%2247.638%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222%22%3E%3Ctspan%20x=%22293.536%22%20y=%22359.153%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M275.097%20362.607h37.093%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Crect%20width=%2239.464%22%20height=%2263.929%22%20x=%22229.67%22%20y=%22329.214%22%20ry=%223.75%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22247.059%22%20y=%22359.153%22%20transform=%22scale(.94516%201.05802)%22%20font-weight=%22400%22%20font-size=%2247.638%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222%22%3E%3Ctspan%20x=%22247.059%22%20y=%22359.153%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M231.168%20362.607h37.094%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Crect%20width=%2239.464%22%20height=%2263.929%22%20x=%22185.027%22%20y=%22329.214%22%20ry=%223.75%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22199.826%22%20y=%22359.153%22%20transform=%22scale(.94516%201.05802)%22%20font-weight=%22400%22%20font-size=%2247.638%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222%22%3E%3Ctspan%20x=%22199.826%22%20y=%22359.153%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M186.525%20362.607h37.094%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22184.001%22%20y=%22428.746%22%20font-weight=%22400%22%20font-size=%2234.561%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22red%22%3E%3Ctspan%20x=%22184.001%22%20y=%22428.746%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3EBUS%204%20Bits%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c0854505-8d25-4c9f-9a3f-c5900782b2cf",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 80,
                "y": -296
              }
            },
            {
              "id": "5029b66e-b9f1-4976-8497-3a36230b32f4",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": 80,
                "y": -208
              }
            },
            {
              "id": "6ec6b18d-e370-4bf5-934f-d6f37e5a4053",
              "type": "basic.output",
              "data": {
                "name": "d",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 760,
                "y": -208
              }
            },
            {
              "id": "df1f6b75-8d15-4ec7-8d94-9dde7a482b75",
              "type": "basic.input",
              "data": {
                "name": "clk_baud",
                "clock": false
              },
              "position": {
                "x": 80,
                "y": -120
              }
            },
            {
              "id": "041648f1-a368-4d9d-b654-d0643978200d",
              "type": "basic.code",
              "data": {
                "code": "reg [3:0] _bitc = 0;\n\nalways @(posedge clk)\n  if (rst)\n    _bitc <= 4'd0;\n  else if (rst == 0 && clk_baud == 1)\n    _bitc <= _bitc + 1;\n    \n    assign bitc = _bitc;\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "rst"
                    },
                    {
                      "name": "clk_baud"
                    }
                  ],
                  "out": [
                    {
                      "name": "bitc",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ]
                }
              },
              "position": {
                "x": 296,
                "y": -256
              },
              "size": {
                "width": 368,
                "height": 160
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "041648f1-a368-4d9d-b654-d0643978200d",
                "port": "bitc"
              },
              "target": {
                "block": "6ec6b18d-e370-4bf5-934f-d6f37e5a4053",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "c0854505-8d25-4c9f-9a3f-c5900782b2cf",
                "port": "out"
              },
              "target": {
                "block": "041648f1-a368-4d9d-b654-d0643978200d",
                "port": "clk"
              },
              "vertices": [
                {
                  "x": 224,
                  "y": -232
                }
              ]
            },
            {
              "source": {
                "block": "5029b66e-b9f1-4976-8497-3a36230b32f4",
                "port": "out"
              },
              "target": {
                "block": "041648f1-a368-4d9d-b654-d0643978200d",
                "port": "rst"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "df1f6b75-8d15-4ec7-8d94-9dde7a482b75",
                "port": "out"
              },
              "target": {
                "block": "041648f1-a368-4d9d-b654-d0643978200d",
                "port": "clk_baud"
              }
            }
          ]
        }
      }
    },
    "8b89a54940796d87a750d07e9b511ed41621037e": {
      "package": {
        "name": "Flip-flop D",
        "version": "1.0.0",
        "description": "Delay flip-flop",
        "author": "Carlos Diaz",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%22-252%20400.9%2090%2040%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-231.121%22%20y=%22429.867%22%20font-weight=%22400%22%20font-size=%2224.601%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22-231.121%22%20y=%22429.867%22%3EDFF%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "6855f64f-fa1c-4371-b2e1-a98970674a96",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 232,
                "y": 168
              }
            },
            {
              "id": "ffdd9aa2-aea3-4aa9-8431-80e799226774",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 864,
                "y": 232
              }
            },
            {
              "id": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 232,
                "y": 304
              }
            },
            {
              "id": "e5222a6e-4717-4f08-99d7-7cde897060ca",
              "type": "basic.code",
              "data": {
                "code": "// D flip-flop\n\nreg q = 1'b0;\n\nalways @(posedge clk)\nbegin\n  q <= d;\nend\n\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "d"
                    }
                  ],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 432,
                "y": 128
              },
              "size": {
                "width": 368,
                "height": 272
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2",
                "port": "out"
              },
              "target": {
                "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
                "port": "d"
              }
            },
            {
              "source": {
                "block": "6855f64f-fa1c-4371-b2e1-a98970674a96",
                "port": "out"
              },
              "target": {
                "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
                "port": "q"
              },
              "target": {
                "block": "ffdd9aa2-aea3-4aa9-8431-80e799226774",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "c94732518b42d2b0011567bd06f2f41782e50c85": {
      "package": {
        "name": "game",
        "version": "1.0",
        "description": "Pacman game for iPxs collection.",
        "author": "Juan Manuel Rico",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22298.678%22%20height=%22399.167%22%20viewBox=%220%200%20280.01023%20374.21926%22%3E%3Cg%20transform=%22translate(-82.433%20-25.222)%22%3E%3Crect%20width=%22280.01%22%20height=%22374.219%22%20x=%2223.552%22%20y=%2226.53%22%20ry=%2238.569%22%20transform=%22translate(58.88%20-1.308)%22%20fill=%22#416107%22%20fill-opacity=%22.427%22%20fill-rule=%22evenodd%22/%3E%3Cimage%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPAAAAFACAIAAAANimYEAAAKJUlEQVR42u3dTZLjuBFAYU5v7b1v%206IUPMuF1L3yHOYRPYO8c4RvMFbxryOUqt4oSixJF4icBfi8YHV2QCILJJzIJgdA0AQAAAAAAAAAA%20AAAAAAAAAAAAAAAAAOfg8r48/fOyWIB9sl1qbuCx0GtvA7bIVkMeQqN5IkBoEFoODUKvnaGBI6Zd%20ym1gedJ9UAiE7uUAeidZLAGWbCoDcU6sh9YHAmqdYU3Xu7zXR/HZHc+UxWZkPJGIZwMhk+iXcVo8%20j8eT0IQmtANAaEKD0IQmNAhNaELnXDn9469vi/K18leFFrdX4kloQhPaJVLKIYcGoQlNaBCa0IQm%20NKEJ7QAQ+gxCP+xeKblPjba7qz0Zuu1C7lfzeLYRusjo+MLbzduevELH2a9Wx7dlynHwwpqqr1ii%202lS4qlb71er4NhM6NYp10fQ0tRO6i/2quV1CE5rQD1b+SHTW0x1CE3pPJZu9yir0fKsr2yY0oV+u%205BWv8gm93OpX2yY0oV+r5EWvBhL69W6ysge+SrddF/tFaEITmtBSDimHm0JCuynUbUfoukJPrbrt%20Gu4woccWuqSThCY0ofPt8xiDk5YrjrpfdVY3fDTcMMtR96v/4aMG+OdtjwH+jYUG6ttOaBCa0CA0%20QGiA0CC06XSVm06X0MrNDw3IoQFCg9CEBqEJDUIDvQnd+/DRaMM1xWfDdg3wz1ZPtKX3+MQTevPq%20U93Vgz/ylP3i22l8zA+9f5U0nM1jxMdT34QmNKEJTWhCE5rQsW4aClXV+01hnPiYl2PTdkP9jNrU%20pPJO4nOw/Wf5YiXUD12mJqf/3n8I1HjoQpdU7Yl8fAmtPYQmtPYQmtDaQ2gCEZrQBCJ0zpVjP+b+%20/IBpT8/Hl9DaQ2gph/bIoQmtPYQmEKEJTSBCE1p7CE1o7RlL6Fj7/Hq3VMP2p/CNmaINHy0q5F0V%208eedeDwEudxo/TpCF9qFVg9A7G5/yv6Zbng6adXggR8JS+dw4+ZT2Eu7/Xj9AHGuYWMvVxZC19+v%20EInoqHeyhK68X2amJTShCd3tndPUw+SRhG4qdFfddstNN7yTeU3ocsM4CX1caHGfsn6xQuiWKUdq%20vj9h7tKz5/SEPpPQ8TqfCE3oMgkvoQndk9Bvm/zxzlziuxJCE7oboX/MmNs8LyE0oTtKOf4n7a2+%20yxJCEzrfY/qFd+C50Cm20LrtCH1zO/g0hyY0oftIOQIPHpNyEJrQhCY0oUFoQhM6sNDTQty0eInQ%20hO5D6KXcU8Znlwk9ktDxu+16iO3z+Oi2G0nomo8CVN4Woc+Ycux/UCr9/bWl7kNZUg5CE5rQAwkd%20M+Ug9E6xmizOQH1dwZp70vctOaG7TskkHkdXTNWliSz01MM8IaOlHEem0122fCL0vvjEm053hHnu%209gU6gjTdty3ehOcoJM1/Lp/LlrpuOuk2vP+3z0WXGYoK/X6xuxH60eVvve/50UX8Vui0nvUSGgeE%20/vHjx/W5wA+bb0o227zm9Ly2D5tX6ic0jgv9ru+Vq9A3JZttXjr9oe/nPAe/fVFCaDQW+v8uziSe%20lxAaLYW+GjzPoW9KboW+0XFm87VkeSM4t3lZQuhBXavfbTe/C3y8LE7PD4S+Oj03+PFSU2jddoS+%20F/rzJm+lhNBokXLsEvrn0NDlYNH7+8KYQoPQl+1dHIQGoQkNQgNfCz03e9aXd/PSTOjbZPout56W%20Qs/NvhN9/h5CI4fQV5ZCz1/6Ke5nRQuh5y9dxf0sXAg9f4nQI7pm+GiVto3XbWeA/2SAf4+GBL/o%20H1zRI1gl4iPhqRQyD8lWjo+UwzQGowkt5ejpgKWQiw/8ROjxLqmEJjShCR1N6PDT6UbOI02ne1Kh%20T9VxROjxUw5CSzkITWgQmtCErir05XK/vPTS2puXm1j+f60qQhP6qNAb5bsrX3vzS3USmtAthV57%20/8Z6np7pCT2a0JW77Za2Lf/ccvZ9IPRdVQ8+HjWF1m03stDbbVsm1luEflBbq5tCQg+ecqzd5+1I%20ObasqJeD0I1Tjsdn4gdn+gfnbEITOrPQg8aW0IQmNKEJTWgQmtBnEtrw0TpC67YbT+iRhvYT+uwp%20R+okSlIOQndvc5z4EJrQhI4Ru3NONEPop/V0NrlMw1lqCC0+mW1MXR2tL1ccdTLCM8cnZVnzVNPp%20ZtnlhpVPx+MTbzrdo0KnmKerfibiTl2nNPHifFRIXTOFnBbPJj1ghCY0oUFoQhMahCY0oQlNaEJP%20rw4vVL5PaHF7JZ6EJjShXSKlHHJoEJrQhAahCU1oQhOa0A4Aoc8gdKvhhdGGNZbutgu5X83j2Ubo%20CAP82z5wkFfoyA9SVI5ng5Tj+FMVU4vt5q02/jwhreJ8MAi1hU6NYl00PR31odQejy+hCU1oQhOa%200IQm9IBCZ9nnIW+eBr7Z7fymMF+3zmv73Hn3Vq56AnZHZjnoofuhD35Yz/UFRP9fGOW5jIwxHtpX%20xH3R6ngROsLBTzcLoQk9iMoDaT2c0B+JTuE0Oo1qc/9Olzpez7wqI/R8q5mcJjSht3hVQOjlVnM4%20PZrQT23u3On8x2ubVy2E9rj/PqFPPj0DoQlNaCmHlEPK4aaQ0CPfFOq208sxWrddRwEi9FjHi9BR%20ne59zwh9RqG/1HqMfepa6KnisMD93UBZ29OzazXi02S+kWw/63b9s8f5K44c+BR4ybVf0Y7Xxl3O%20IHT9tbJU5aeRS8QnhRSmUshqBsiP158kzoQmNKEFmtCEJjShhxL65DcrwW8Kh7n5jt5tt9zEvnpC%20TV87Nal83O7RnEKX/mIlVz2hJhhPuU9LXcYn4BcrHX1dG+0rdO0p1H5Caw+hCa09hCa09hCaQIQm%20NIEInXPlkzxerz0hjy+htYfQUg7tkUMTWnsITSBCE5pAhCa09hCa0NpzBqHjzWthuGbE+JSJZ+gf%203iw+VUWOxkQQOnJ8Ksezy59Gjp/M1LzEi+fU+4/XD3AMTvXQbs14EprQhHYACE1oB4DQAwrtJmZt%20xVEnj+z/prDz6Wj7mr5WPEMIfQpMwF4xnqf76huD205oEJrQIDRAaIDQIPQZpjFQPnY5oZUTWsoB%20OTRAaIDQIDShQWhCY2ShOY1QNu8X8q4KiyXCMwEpy2cCCHiq3rMyrRFH5ZSxIosl6JOIAG75/Z9/%20/Pe/vr0tf/vLH7aUA6/y7Zdvd8ubVEW8+vXPf0ppSpdvH8t1G2vlwEGhP1QuJfSHu2+n4au7T8uB%203UK/SXz9920puMm3bXwp7lo5sJ3vv3xL7x5/n2ldSmhnaJQmvQud3iX+kPt7IaHl0Kgj9OVy+f5T%2066vcejnQccrx8e+b2WWFBqrdFF5P0t8JDQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuNyuV++%20fPWu5Ms/n1by5atAfqEfCLpWuOM9QDOhD5Y/2ATQgdDL1GIt5QAa5NDL8qdCr31OeIxmZ+hyZ24g%20otA7Ugu9HADwKv8FZAGhc1Yj3hAAAAAASUVORK5CYII=%22%20preserveAspectRatio=%22none%22%20height=%22320%22%20width=%22240%22%20transform=%22translate(102.438%2052.332)%22/%3E%3C/g%3E%3C/svg%3E"
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
                "x": -256,
                "y": 8
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
                "x": 1288,
                "y": 56
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
                "x": -256,
                "y": 72
              }
            },
            {
              "id": "9d3f3ac1-84dc-46a2-a8d4-3581a32d933d",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": false
              },
              "position": {
                "x": -552,
                "y": 224
              }
            },
            {
              "id": "28df90fe-d42a-4e8e-90d7-6d7b98b60d4a",
              "type": "basic.input",
              "data": {
                "name": "reset",
                "clock": false
              },
              "position": {
                "x": -552,
                "y": 288
              }
            },
            {
              "id": "7fb08218-3b3a-434f-9f27-7778366a8142",
              "type": "basic.input",
              "data": {
                "name": "frame",
                "clock": false
              },
              "position": {
                "x": -552,
                "y": 352
              }
            },
            {
              "id": "3217ec85-fb74-460a-8755-44590703b97c",
              "type": "basic.input",
              "data": {
                "name": "control",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": -552,
                "y": 416
              }
            },
            {
              "id": "4b2c2729-c8ef-49aa-acd0-b49e11a61619",
              "type": "0974f89abc006cf1bf8780d4c64d0f2fd7a82a84",
              "position": {
                "x": 1016,
                "y": 56
              },
              "size": {
                "width": 96,
                "height": 192
              }
            },
            {
              "id": "74ec5550-e77d-410a-9da6-9b1160f16711",
              "type": "c4dd08263a85a91ba53e2ae2b38de344c5efcb52",
              "position": {
                "x": -184,
                "y": 168
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "0791f5ce-2246-41a4-93a5-8ac93dc7bd32",
              "type": "8c21cf4738adeefc296550fcbd733ff25bb6da47",
              "position": {
                "x": -144,
                "y": 304
              },
              "size": {
                "width": 96,
                "height": 224
              }
            },
            {
              "id": "15dc8dc0-feeb-4881-bd87-a963d2ae013a",
              "type": "7fa6905360f903ee8248f28ed121aa27b54a5199",
              "position": {
                "x": 496,
                "y": 328
              },
              "size": {
                "width": 96,
                "height": 160
              }
            },
            {
              "id": "0166762b-1da0-4e48-baaa-4dd9987d6eb8",
              "type": "5a297d26fb1eddc3b68a3a5fb499f602a8b6be39",
              "position": {
                "x": -144,
                "y": 656
              },
              "size": {
                "width": 96,
                "height": 192
              }
            },
            {
              "id": "ca7c0960-c5bc-4d64-950b-8ec09295f959",
              "type": "basic.code",
              "data": {
                "code": "reg [2:0] counter = 0;\nreg write;\n\nassign select = counter;\n\nalways @(posedge frame)\nbegin\n    case (counter)\n        0:\n            write <= write_0;\n        1:\n            write <= write_1;\n        default:\n            write <= 1'b0;\n    endcase\n    counter <= counter + 1;\n    if (counter > 1) counter <= 0;\nend",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "frame"
                    },
                    {
                      "name": "write_0"
                    },
                    {
                      "name": "write_1"
                    }
                  ],
                  "out": [
                    {
                      "name": "select",
                      "range": "[2:0]",
                      "size": 3
                    },
                    {
                      "name": "write"
                    }
                  ]
                }
              },
              "position": {
                "x": 416,
                "y": 592
              },
              "size": {
                "width": 432,
                "height": 264
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "3217ec85-fb74-460a-8755-44590703b97c",
                "port": "out"
              },
              "target": {
                "block": "0791f5ce-2246-41a4-93a5-8ac93dc7bd32",
                "port": "3217ec85-fb74-460a-8755-44590703b97c"
              },
              "vertices": [],
              "size": 8
            },
            {
              "source": {
                "block": "42825077-fafc-4e85-ab47-0c3052e53228",
                "port": "out"
              },
              "target": {
                "block": "4b2c2729-c8ef-49aa-acd0-b49e11a61619",
                "port": "42825077-fafc-4e85-ab47-0c3052e53228"
              },
              "vertices": [
                {
                  "x": 720,
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
                "block": "4b2c2729-c8ef-49aa-acd0-b49e11a61619",
                "port": "34ef8db8-afa3-45e5-8f03-2f1db5f06301"
              },
              "size": 26
            },
            {
              "source": {
                "block": "4b2c2729-c8ef-49aa-acd0-b49e11a61619",
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
                "block": "74ec5550-e77d-410a-9da6-9b1160f16711",
                "port": "19c8f68d-5022-487f-9ab0-f0a3cd58bead"
              },
              "target": {
                "block": "4b2c2729-c8ef-49aa-acd0-b49e11a61619",
                "port": "fe552966-fa74-4941-bf35-b52a8fb6f92a"
              }
            },
            {
              "source": {
                "block": "9d3f3ac1-84dc-46a2-a8d4-3581a32d933d",
                "port": "out"
              },
              "target": {
                "block": "0791f5ce-2246-41a4-93a5-8ac93dc7bd32",
                "port": "c23965e7-ac63-4cf5-97d1-1ca31e0aa918"
              },
              "vertices": [
                {
                  "x": -336,
                  "y": 288
                }
              ]
            },
            {
              "source": {
                "block": "28df90fe-d42a-4e8e-90d7-6d7b98b60d4a",
                "port": "out"
              },
              "target": {
                "block": "0791f5ce-2246-41a4-93a5-8ac93dc7bd32",
                "port": "18abcc78-0220-49c7-9c06-bd99bfb271d8"
              },
              "vertices": [
                {
                  "x": -368,
                  "y": 344
                }
              ]
            },
            {
              "source": {
                "block": "7fb08218-3b3a-434f-9f27-7778366a8142",
                "port": "out"
              },
              "target": {
                "block": "0791f5ce-2246-41a4-93a5-8ac93dc7bd32",
                "port": "8c06e3f0-bcaf-48ba-93db-6b9df85fc2c8"
              }
            },
            {
              "source": {
                "block": "9d3f3ac1-84dc-46a2-a8d4-3581a32d933d",
                "port": "out"
              },
              "target": {
                "block": "0166762b-1da0-4e48-baaa-4dd9987d6eb8",
                "port": "c23965e7-ac63-4cf5-97d1-1ca31e0aa918"
              },
              "vertices": [
                {
                  "x": -336,
                  "y": 528
                }
              ]
            },
            {
              "source": {
                "block": "28df90fe-d42a-4e8e-90d7-6d7b98b60d4a",
                "port": "out"
              },
              "target": {
                "block": "0166762b-1da0-4e48-baaa-4dd9987d6eb8",
                "port": "18abcc78-0220-49c7-9c06-bd99bfb271d8"
              },
              "vertices": [
                {
                  "x": -368,
                  "y": 528
                }
              ]
            },
            {
              "source": {
                "block": "7fb08218-3b3a-434f-9f27-7778366a8142",
                "port": "out"
              },
              "target": {
                "block": "0166762b-1da0-4e48-baaa-4dd9987d6eb8",
                "port": "8c06e3f0-bcaf-48ba-93db-6b9df85fc2c8"
              },
              "vertices": [
                {
                  "x": -392,
                  "y": 560
                }
              ]
            },
            {
              "source": {
                "block": "0791f5ce-2246-41a4-93a5-8ac93dc7bd32",
                "port": "1330e624-ec60-4540-8f3c-34cfed146125"
              },
              "target": {
                "block": "15dc8dc0-feeb-4881-bd87-a963d2ae013a",
                "port": "5e63039f-76ab-4401-ad05-89f03964f5ca"
              },
              "size": 12
            },
            {
              "source": {
                "block": "0791f5ce-2246-41a4-93a5-8ac93dc7bd32",
                "port": "40a9778e-b447-43cc-aaff-537e0fece33b"
              },
              "target": {
                "block": "15dc8dc0-feeb-4881-bd87-a963d2ae013a",
                "port": "474b9e13-3fa7-42e6-a62f-f4ddb1d0def1"
              },
              "vertices": [
                {
                  "x": 112,
                  "y": 392
                }
              ],
              "size": 8
            },
            {
              "source": {
                "block": "0166762b-1da0-4e48-baaa-4dd9987d6eb8",
                "port": "1330e624-ec60-4540-8f3c-34cfed146125"
              },
              "target": {
                "block": "15dc8dc0-feeb-4881-bd87-a963d2ae013a",
                "port": "539c2452-5538-4898-9fff-9adedcce4d93"
              },
              "vertices": [
                {
                  "x": 144,
                  "y": 488
                }
              ],
              "size": 12
            },
            {
              "source": {
                "block": "0166762b-1da0-4e48-baaa-4dd9987d6eb8",
                "port": "40a9778e-b447-43cc-aaff-537e0fece33b"
              },
              "target": {
                "block": "15dc8dc0-feeb-4881-bd87-a963d2ae013a",
                "port": "4dc27b24-b4cf-4617-936e-058d79348f4a"
              },
              "size": 8
            },
            {
              "source": {
                "block": "15dc8dc0-feeb-4881-bd87-a963d2ae013a",
                "port": "39e4284c-08d8-4bde-a0bd-5b37b472b2ea"
              },
              "target": {
                "block": "4b2c2729-c8ef-49aa-acd0-b49e11a61619",
                "port": "06c1a9dd-a642-489d-a556-e07b841cc7a8"
              },
              "vertices": [
                {
                  "x": 792,
                  "y": 272
                }
              ],
              "size": 12
            },
            {
              "source": {
                "block": "15dc8dc0-feeb-4881-bd87-a963d2ae013a",
                "port": "d3a23fe0-7f46-47e0-a53d-0d95074dfa68"
              },
              "target": {
                "block": "4b2c2729-c8ef-49aa-acd0-b49e11a61619",
                "port": "25b2a52f-f862-452d-af13-b16b13159d43"
              },
              "vertices": [
                {
                  "x": 856,
                  "y": 288
                }
              ],
              "size": 8
            },
            {
              "source": {
                "block": "0791f5ce-2246-41a4-93a5-8ac93dc7bd32",
                "port": "4c0573ce-4343-44c7-900e-83efcff27712"
              },
              "target": {
                "block": "ca7c0960-c5bc-4d64-950b-8ec09295f959",
                "port": "write_0"
              },
              "vertices": [
                {
                  "x": 192,
                  "y": 632
                }
              ]
            },
            {
              "source": {
                "block": "0166762b-1da0-4e48-baaa-4dd9987d6eb8",
                "port": "4c0573ce-4343-44c7-900e-83efcff27712"
              },
              "target": {
                "block": "ca7c0960-c5bc-4d64-950b-8ec09295f959",
                "port": "write_1"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "7fb08218-3b3a-434f-9f27-7778366a8142",
                "port": "out"
              },
              "target": {
                "block": "ca7c0960-c5bc-4d64-950b-8ec09295f959",
                "port": "frame"
              },
              "vertices": [
                {
                  "x": -264,
                  "y": 528
                }
              ]
            },
            {
              "source": {
                "block": "ca7c0960-c5bc-4d64-950b-8ec09295f959",
                "port": "select"
              },
              "target": {
                "block": "15dc8dc0-feeb-4881-bd87-a963d2ae013a",
                "port": "60e7e51d-fb6b-4653-866d-78b0f739634b"
              },
              "vertices": [
                {
                  "x": 480,
                  "y": 544
                }
              ],
              "size": 3
            },
            {
              "source": {
                "block": "ca7c0960-c5bc-4d64-950b-8ec09295f959",
                "port": "write"
              },
              "target": {
                "block": "4b2c2729-c8ef-49aa-acd0-b49e11a61619",
                "port": "c23965e7-ac63-4cf5-97d1-1ca31e0aa918"
              },
              "vertices": []
            }
          ]
        }
      }
    },
    "0974f89abc006cf1bf8780d4c64d0f2fd7a82a84": {
      "package": {
        "name": "map",
        "version": "1.0",
        "description": "Map in RAM of game.",
        "author": "Juan Manuel Rico",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22293.095%22%20height=%22376.836%22%20viewBox=%220%200%20274.77639%20353.28392%22%3E%3Cg%20transform=%22translate(-151.282%20-405.46)%22%20fill-rule=%22evenodd%22%3E%3Crect%20width=%22274.776%22%20height=%22353.284%22%20x=%22167.483%22%20y=%22386.357%22%20ry=%2238.569%22%20transform=%22translate(-16.2%2019.104)%22%20fill=%22#416107%22%20fill-opacity=%22.427%22/%3E%3Cpath%20d=%22M299.637%20593.093c4.883-4.498%208.472%204.363%207.476%208.116-2.7%2010.17-15.914%2011.28-23.708%206.835-13.94-7.95-14.823-27.144-6.194-39.299%2012.663-17.838%2038.529-18.48%2054.89-5.554%2021.807%2017.228%2022.185%2049.97%204.914%2070.482-21.734%2025.813-61.437%2025.914-86.074%204.273-29.839-26.21-29.658-72.918-3.632-101.665%2030.67-33.877%2084.409-33.412%20117.256-2.992%2037.924%2035.121%2037.171%2095.906%202.352%20132.848-39.565%2041.976-107.408%2040.935-148.44%201.711-46.031-44.003-44.702-118.913-1.07-164.03%2046.673-48.265%20125.093-48.834%20174.81-4.901%22%20stroke=%22#000%22/%3E%3C/g%3E%3C/svg%3E"
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
              "id": "06c1a9dd-a642-489d-a556-e07b841cc7a8",
              "type": "basic.input",
              "data": {
                "name": "position",
                "range": "[11:0]",
                "clock": false,
                "size": 12
              },
              "position": {
                "x": -320,
                "y": 560
              }
            },
            {
              "id": "25b2a52f-f862-452d-af13-b16b13159d43",
              "type": "basic.input",
              "data": {
                "name": "sprite_write",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": -320,
                "y": 640
              }
            },
            {
              "id": "fe552966-fa74-4941-bf35-b52a8fb6f92a",
              "type": "basic.input",
              "data": {
                "name": "read",
                "clock": false
              },
              "position": {
                "x": -320,
                "y": 712
              }
            },
            {
              "id": "c23965e7-ac63-4cf5-97d1-1ca31e0aa918",
              "type": "basic.input",
              "data": {
                "name": "write",
                "clock": false
              },
              "position": {
                "x": -320,
                "y": 792
              }
            },
            {
              "id": "4b2c7174-a558-4211-9978-1d8c0f081917",
              "type": "basic.output",
              "data": {
                "name": "sprite_read",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 2320,
                "y": 816
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
              "id": "27c16a12-5f2e-4ffc-950f-357dc413f763",
              "type": "ff2ebfe392317114ad55b3ed15989a36e3f7109b",
              "position": {
                "x": 1328,
                "y": 376
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
            },
            {
              "id": "dd692156-fe6f-4498-a165-df122b33c080",
              "type": "basic.code",
              "data": {
                "code": "// Calcula la dirección en el tablero.\n//\nassign waddr = position[5:0]*40 + position[11:6];",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "position",
                      "range": "[11:0]",
                      "size": 12
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
                "x": -136,
                "y": 528
              },
              "size": {
                "width": 432,
                "height": 128
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
                  "x": 1120,
                  "y": 608
                }
              ],
              "size": 11
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
            },
            {
              "source": {
                "block": "06c1a9dd-a642-489d-a556-e07b841cc7a8",
                "port": "out"
              },
              "target": {
                "block": "dd692156-fe6f-4498-a165-df122b33c080",
                "port": "position"
              },
              "size": 12
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
    },
    "8c21cf4738adeefc296550fcbd733ff25bb6da47": {
      "package": {
        "name": "pacman",
        "version": "1.0",
        "description": "Pacman player for game.",
        "author": "Juan Manuel Rico",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%2297%22%20height=%22120%22%20viewBox=%220%200%2090.9375%20112.5%22%3E%3Cimage%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGEAAAB4CAIAAABtvQunAAAAAXNSR0IArs4c6QAAAARnQU1BAACx%20jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAABSySURBVHhe7V2/r2zJUe6z+9a7GMlC7IKQILBk%20fsmShRBGcmAhZ0gEDoxECH/EJt6/wGbJSYhIyYkQthyByCw7cOBswUICyQEGZD/Lh+9HVXX1mbkz%209929zOWh+6lfn6++qq7urnNmpj333vW27/t4xkW8Eddn3I3nGl3Hc42u47lG1/Fco+t4rtF1PNfo%20Op5rdB03OEMi/4+DLnhrjJdBFzyW/k5cPzZuUKOP9v3PgmK+bWDCjdN+sG1fz8l92eAd46v7/nUZ%20iNwhKR78q453BsP6GBVvGXhz2/4u6MfGTV9r3kZtpm4PCuHyJKirQDS6R2OtszdHGTWErQc/Fm5R%20I+xBO1m2rcbKWKntqYhkVTWMqgdEGeylaZ5aoPNHwS1qhD1gk9rnQgyTFhOQ6RdabFreGFjxCghX%20y/+YuM1rLZ6RTnwp9JvvTR6evjUAEUdReOzyCLd5rUWPht3JnK8OvZuYzKbd4kIXQuvpyAC4INob%20evOG+Vi40Xt2bpJrF/cGQ7TRFGC+lCJUJTCFUlWoABFywc7HQazvVYD4/wq64O07zkEv9/2fcPEO%20a5/b9rl9/463WrrMz43xnRINceoeC/Q8jjdSxL3/0rn1ICPOUz8JawLxPxf0BA+o0Q/H+GNVKncQ%204DkF2dpnjGOgf41G7NleuD7wuUbc8GLi3KTXYKRSWsQjD58v5SlvzSsrxDfHeH+MPxcPh/DeGH8y%20xl96nW3Ur4/xV2aneMhrTTuZE8OkQILO+wyJFz7/CGa8OBWFobfpVFZm2kw1gUhGR0hMJN0bnvnX%20FjEaRYhHcq+tOc/gYe9HteEwc93eAKbkxGS243VhkVpbsU0zdMxgM4cYJqwFLzG1J4pZGpFPb+1S%20LLLPicCdisTiBTykRl5JfR4VUo+mFRzFNHWZ3jJJkBlXt9pweUXcfEsC8nLnQoi1fyulOwKdg0s/%20i4c9Ry4+s4OotxiuMs2sHMw1YBGRWQrN5OWt+GhnxWqQ08UoKeSn4gU87P0oCq/scQvMu6L749tV%20t8lkCmC5xIqJRSMmXXNAEjtqCIifKf2Lp0yejMFAK22FfOhotInO4sGvtZo7erdU5pyanhtQ431z%20mBBhHmK99VPpo5BCe7PXCZGHqaF4Cjk4RC5apQDZ8/Y4iZW7kCnPAPp/BF2AfP+Aiyeo0T7vJD+v%20d5Tu4OpxPqpzk+FUh3ij4m02vLFtn93374Y18c62fXrfv1dJcqJPjfG7585TOEP8/IUa/Wjfv2ym%20m1Or9vc4GMXbiWt65/c4gHQS6Pv+NT/VjMu75++DJCpKA8WX74kyCcDvlTJmeg/fKzl+39/ctvf3%20/cMWhh7z/xLOR9uG89EhyWe27Ytj/DXVXLxifm/b/uLSaw1xbqCrid67NsjLpfKZayFyQ9PEUSCJ%208gk1tqGSHFHBa7/EnwtQ1yY68R5RwZdqhN0Krij7JBbZI4t1K3TPyChN00ksGibMJEgrUYZg7rls%20xoBp6ppzpR4B5uonDz8hS3BUnwi4/ByhjLP2jVhkX3pT2IsQpdtlBegr0xDDRgypmOIOEDGoOx6a%20dQcI5Dlw6hyn2KDHieSb4dc+1yq0SKU7C6+4bk2OKjNuEXqHOSDDiOLpPaQK3VNUBsN6iZ6uBZvT%20ZTis4g2/bIHS7/PZz1njkpOlBRx0mpgodSpposVa0gUT63AQ+lAVCYJR0UvxKK6bcnoz3mLA3NOJ%20eyKK6pnHLifJeFoYJVITXXk/cuPjqGg9mJrJXH1wBICnaU5imKD3rHbJZBInbxPV2EjnYFOFlYme%203E1rgCQ1US4ge+chJ8twc5lknogGS3ceL8f4pmalUVH1fU25Esv3OA3H73dy1DE+XfMcZJT+KvPi%203n92jDPnozE+Pcb3wJwns+F89Mv7/v2eWa53+fF/d41+NMaX5eW4GuyfZx1yAdsWPxcTPMo3gucj%20+rmgyKaA+P5o1ZlH3weZS4op4vwlIDNETtG/b0oFfXx/pMeBA5xq3+P7IxoBxm/bZ8bg+UjBzmBc%20Ox8BGI3sWlApMZ/RV1DIUbU+usFFKFnJUVwTYjVkmQg8zfC6wakG7kwGeSkZVjygmN4Yv05Exc24%20z3s2xmeC3ABgUYlIYGGfqQTAPaSJwaz45ovPiJoFeg6cXqOvBGj5CZgO0KqCAIew+0wEXHnPNrSJ%20KlQxphOP50WPuknEqABlstNS7GJkwfGGY1LhQCcxoMN0g9h094aThIJewRkqwLTY9DMTAZdq5AFu%20vtcYqD7nZwy5neg9RJPNJ0QuwsNBvCx1lCu/CK7WXXr0Pd7Dya2VzmuwSGWvMug6ib2eqSaCeGYi%204Or7UbTkZGUaBxPIsCYFQul5LhMAHPHqu2IydTILUtToMMduTYDiJgWJMbwU4Or7UdU1bpL7wqnZ%20ZwWsVBiIucPyzofYe6CnKrEIaFyT4MabNBxdGO71mBiXJ8Lj9LMx/i2sBe/s+z/mTiQI/h7H0xQU%20NvW1n+eXGuL4C+emkySLDoAA1j2vkTru/fz+qLw6H33h3PdEiH9x7uduOEN8EjX67zH+qE1Za4rv%20a6T4/YV6fu+DAaXYG98HnWCeazKz+ZX4NRg8zk0lJs7k9/dHY3zotclp4Hz0N0HvDb/WkEiXeAL5%20CvB8JnZJj0gViA51ITlYyuzVZBCRuZABYQKl1Nbsdd/XaUWotF1i6wVCUBvyCmCN9H5u0xfkZS00%20h4T4pEA/p1ynD2JgLXJWQan0GPPKn3flGNNNRC7uWKEVrgVJ9DhzVKaNJBGlsAeANdIEM6/ASykp%20BskpCSlcbjWJHhDDYArWl+DcjzzRE/YiuHFSTy0T/1gU2gErFUzYlELXw+DnyJzwzax0dkGysnpD%207MHr2NjhCt9qunpwAYpFeV0U/ItUEOiLtMfBetI58JBZSY7B90e8H/EfM2nm5akGLa9XmapCdKnp%20Y5RdvsngERrBTrKsuHRx9kALAYsnKPsIKtHN6HlK9JAyXwmukVfA3Lp1MGJNVrQldVmOFEnVE9Yw%20UJ4YDw7V2TzEPMMIBeR8AqwcIjuJM7gXib6aUdzPnUwPpPiqwOJ+Osbf14rb0ufPrSq1vIvueOs+%20v3RdWM4vDXE+qiGJyG+l5f/SGFjqKT5x7lwDnNWR9M7fM7oLqBHPR2BtV+Y+d+AG8x7kTmDyex/d%20Hz4dGuKYOL8ojD10xcTPv1ZgAPP4ma38GlK/l8Q8nkITfAOC9RvDrzXCj6XROJY1dQArVglYLVzU%20zRgMlLd0B09dHC2NGTD15KBOyzsg8jSYNcKtajcz1uQnBCRXXDG1H9rgpQPgbYcA0yigKiiDYbBp%20NYV9htAv8pSYNcKyvIHTQgBaMnlbtONjk7S51YgRmMciFLXI7LQVZpcVB4A6LZpGhfok6DXysrga%20Px0HaAOlF8XFG2SACWAv8kiBQRtjlISuNrz6gGN61WKCJ4JrxCW6Lrma45pyxbFu0SUyrESaEdpI%20uHpA9kT3Vt/uzROANfILRP18lZmgT8LLwTSRyF5mBBhWS0mzxO6dGQSY9rLP+/E0QFF4PgLDYrwS%20r7Kfd2QuOkia7DU2zkHi0Qt/gCizFS/uOO/cpb8d15sDNYrzEdA2BsTPy9qGWRWfj6xL4aOnGJyP%20+HtGaxLgbx9wbPs/Bb/WvHn3VE2wVX+kqARoc//Wq0CJMOVC75jXHqyRbz6u4lQbwUW+/PA2r9L4%20nd61cEwBwd18fRGf/bm90/uus01WoQJq93qn5yc6Wj016fx/Ar/WomHntU9AYhTI2/bL7fAS6jH1%20+ur96454jgBX4fAIaNskuXlvGkESWBcodjmSLl6kU3394fejKI23WmhV4ytOYe4li4OIU8ymYce3%2089cY2MlP953no0JubDkfAdC17TgfGa0Q83slI+M/P8a/h7TgV8b416AL7tJ/M643B2oUP1/je1G+%20QUufP0ejxGrBi/6D+n1r68l5PmKU4zJef8dPPUX6lZa6TeuqKVzz524aZQrgRk7jlpifa+z0Qe6l%205OJ48Q7LTE6Ie1SEWYmr/CpjDClVOqlkKq6IA+UCj8xPi/pc473EZhqfjSFarV05xC70HCVwf+Im%20oRoZPHvVRdFZOFhugD3mTws/R3XbY8V5P6Gb2GsepDgAjs3klmNbkVFPBxwaAiVyevNQNAZdjWJz%20mMc+Ofy5FrcLpK+pDF/Vl8YB4LWN5o0II70hLhMIUtwiWOhmFfBp4Nda3LRCcd7feP6DWPQebJqU%2016avxSsg88SMSkWSZrQ+kLV60jem+Rz1MuUNBOLG41JiMVzTe+idiKzEbLLlQliaroQVCW2gvKk+%20BVCd4/dHieUc1HBG19ipV8WV8M74+rnbOvXyPVTD74/xL0EX/NoY/xx0wa+ei39rjN8Kem+gRvP3%20j2jPRcfv9aSL99y6f98aknYSN7nrCJbit7nIIzgXnx593xR6z+PzkSeVXoTxpaSIVcX3WdAzD8iL%20fefvH60Z0D/094+cXVWQRuRCCOracAVwk2hSglsVsUjWXCblWVzq7WbzelJfSG0Y8Oxk86WKHheL%20jvfigzwMfj8yrxyc26tp6wBYpqB0oaOraeQtPiChttGipbSJJDVROMY7TH0OCBKRLQB9xJyu6v5g%20jQq5Mr+muG5zwL1rJxd76zbVuE8Q662nxwGV0MghoVdreThN6pSKGKbqEUlPOSu+0Pn9Ea81w9tu%20cPXhdgR7x6BWvEyXdY+PMCxRfelAlLhGlaunXXlFUtdwKJWQcE5VhAt2WIr0O6ZN+mqI15ozAsoV%20PHtsjB0o1oEAxXiV6Ekqg/p4UkRYJo2VpLc2ZagYcGWPgoI6gE2I/GhKGT281UuM3qOSR3wqNl8Z%20x9casrAOc4nkEp3effgKDs6+RlZfo1waloMXzkKRBk2XyRawzNX0M3CeigHRFMvYyxkugDdwjJ+F%20teDlGN8KmtDcx/NOLoh68o4lvgWEXsqFPDLvnPf0nLXv/Pv+Mb57yKPfz/7tMT6y0byfHOMXxvjB%20SfynxvgN1+gs+PdrQQmEeXQ/73RQ17OwTHI53mm9slzf2XiEzd9LWndyNt5/v/ZhWIl9f2/bDn+/%20ZsTfr7VtEvt+7e/XXD309SSDqJ8u9VNEgSx2OEAkmnn1ejuSJbMx9G5eN8WMmcHAyiOsIn0BXNnm%20iuAEOCLQUyzPpRo1zNIWKsXJg7NMADgAyjEw4Tc7eHMPGOxQ9G4GSSaJiyfqmT1dy8beAPcyWnwb%20GRw9ScVcqlEFNRKD3TpKqRgsibb2bG8RaDJnsK+MJih7b32HhpMA7u8BP9r8dzrkPhNdfo4wzpsh%20sdSnMYeziPtqJZ4ivbygd7xFZ9O80QMVgPp1xQFdOZgJJoWp+JiuKZcmulwjBmX0vLdAI1FshdEE%20lWfOYaKAIF6xBkJR6rzPHsJdKKFF927Wy5uumnTqgHkqvt8wNaGQSnD3bqVfeT9yuoyOcgBJvD2i%20uajZPCU9SXL906i2XJoIoIELHIkMmL1ABtOBqdMQPw73RE6bwcTpRCRdXfFy379ZcRV1+J4IyJj5%208zVNf0YHKmE/B7VgIOKb4oDjvIBizui493U+AmqKfed//6j+vt8ugX/fP8b3VxEx727btb/vRxiG%20wPAcIsvfnZVe5xQk9DOQ4PdK8VQsLsa34TXRkr9Q+mn++5+Pxnhv3/nfPwJrUwN1Ppr5RT4/xrW/%207/e6eemrauh6VruktNv7kRUtIJjAAmVM5SHEGXy6gApzjLmRrsMshUjYB5pbP+BqjQiM9GzqjtxE%20sBEKetox1rpNNC6EsgBTHPctxIq0t+vpncEisTONCpe9KQZxrwCHxb2R7om8NkrW71WjDmTJJ0UJ%208qnRxOBys+OEUkon9yjJ7NE0ECKaK7V43Zo4UWIDt10uR7kW0izymqsFwpuu6g3ye9VI45U7s2ji%20UGROVyTOT4Om0yWE0ioSupttXrADB12Dw/0IHIBUhxw1i3hN5OsZXKoR1idwfBL2AksgXpdj0+Ls%20hEmiVgQBU8wMU5F2SMJ2F0GH/SpYhpKIQC+FzWKaJECOtZfNBLj8HGGFQLBUOFJWKBbDTyP6DAP4%200GVMEHO5JMXAGYZ/BofKSlfwjjYkokuRGYqbQFk8bIAjaXlJ1gjdylfDj/f9W5WiFSLOKU0x5vll%20xaL3PPV9EHDI78VaSddyPkpXnI8kE+nif//I/31Ii4A4zkdfoHEOD6jRD/f9Kyh4m8AriN/nhkU5%20EoP4HMRHSRIGmMe5BhnaEsD8PZEjw6se8fH739YZTY5zk3/vCc5ItW1v7vv728bzkRVAXn5/tO84%20H0Gd8Tgfbduj/vezmVsPpHFSZfkbgV+riTCoVuS17GxcNyMIEIoqbkjNy5xAunCZrkLOyAyVxFOv%208X2KM3hIjQTNo9TYM0htO+eLAolx80YqvlqN0OTVQlRgiC6ZW+mNzHKI8Ml1hqpp8xYRuxsPqZHn%20iwcgeiomagcX11q6RJvBUwEoqgVvAeTatrW4UKUetHo3x4tQzgAGZ4ZoF/Cw15p7XrJnq5kOrq44%20zOTEBVBJswdEao21xs3L5XlJ86EhQKRMAs16huHf8ak8iwe/1o6o1WDxIQlaHAEXbp3DGubmDScp%20MxGb72OLvxIBzNU39W48oEa4gfjUmA3/I1v9G6m8SOWgg0+XpgZ/ka6Iwcd2BkRLr+OXpoDQxR2J%20/hM1bxPRv1VmKg6Afifydfy/iP+s85QfonyUfmeMb1NNPUG9KxW/79+u4S1g5jHkwrb/MOyPjRvU%206KN9/9N848BcRXkOyvfaeCmJx+8flZK14PmrhdUHVn2vVJEAavSa/f+v8f1VG8M2UBRWSpydGsUM%20YC9F/1ZUGAK7EyoGaki0R8QtatTexbEx3H5uT1uyHk+EkdtT/YgKIxQ5P4ycx7rLZPNxcaPnKHeC%20DnuJew5hLRD1xKEuJu77E3Qsn0hEPhZuU6NA1oX3nIw76btZdgava9Gfo0aJXi8QFD+JtcfB7Wrk%2025tNd72hlOx56dzoMa3QBEh5S3wU3KBG+Ij5xX1n60R/i97No27RTeap/q76tw/B2R4N8dg/4wJu%20+n70muK5RtfxXKPreK7RdTzX6Dqea3QNY/wPNNObZ0MMtkoAAAAASUVORK5CYII=%22%20preserveAspectRatio=%22none%22%20height=%22112.5%22%20width=%2290.938%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c23965e7-ac63-4cf5-97d1-1ca31e0aa918",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": false
              },
              "position": {
                "x": -376,
                "y": 184
              }
            },
            {
              "id": "1330e624-ec60-4540-8f3c-34cfed146125",
              "type": "basic.output",
              "data": {
                "name": "position",
                "range": "[11:0]",
                "size": 12
              },
              "position": {
                "x": 616,
                "y": 232
              }
            },
            {
              "id": "18abcc78-0220-49c7-9c06-bd99bfb271d8",
              "type": "basic.input",
              "data": {
                "name": "reset",
                "clock": false
              },
              "position": {
                "x": -376,
                "y": 256
              }
            },
            {
              "id": "8c06e3f0-bcaf-48ba-93db-6b9df85fc2c8",
              "type": "basic.input",
              "data": {
                "name": "frame",
                "clock": false
              },
              "position": {
                "x": -376,
                "y": 320
              }
            },
            {
              "id": "40a9778e-b447-43cc-aaff-537e0fece33b",
              "type": "basic.output",
              "data": {
                "name": "sprite_write",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 616,
                "y": 392
              }
            },
            {
              "id": "f6fa7fdb-918c-4a58-94ef-46241bcc38fc",
              "type": "basic.input",
              "data": {
                "name": "activate",
                "clock": false
              },
              "position": {
                "x": -376,
                "y": 392
              }
            },
            {
              "id": "3217ec85-fb74-460a-8755-44590703b97c",
              "type": "basic.input",
              "data": {
                "name": "control",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": -376,
                "y": 456
              }
            },
            {
              "id": "9da277bc-3972-4667-8347-661ed43f0732",
              "type": "basic.input",
              "data": {
                "name": "sprite_read",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": -376,
                "y": 520
              }
            },
            {
              "id": "4c0573ce-4343-44c7-900e-83efcff27712",
              "type": "basic.output",
              "data": {
                "name": "write"
              },
              "position": {
                "x": 616,
                "y": 544
              }
            },
            {
              "id": "aa347a84-7d5b-4918-ba81-adbf3db3444f",
              "type": "basic.input",
              "data": {
                "name": "ready",
                "clock": false
              },
              "position": {
                "x": -376,
                "y": 592
              }
            },
            {
              "id": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
              "type": "basic.code",
              "data": {
                "code": "//@include pacman.v\n\npacman\npacman_01\n(\n    clk,            // System clock.\n    reset,          // Reset.\n    frame,          // New frame.\n    activate,       // Activate module signal.\n    control,        // External control.\n                    //    {not_used, not_used, left, right, up, down, btn1, btn2}\n    position,       // Position in map.\n                    //    {xposition[5:0], yposition[5:0]}.\n    sprite_read,    // External sprite code readed from map in position.\n    ready,          // Ready signal from map. Readed sprite code ready.\n    sprite_write,   // Sprite code to write in map.\n    write           // We want write code spriteto map.\n);",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "reset"
                    },
                    {
                      "name": "frame"
                    },
                    {
                      "name": "activate"
                    },
                    {
                      "name": "control",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "sprite_read",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "ready"
                    }
                  ],
                  "out": [
                    {
                      "name": "position",
                      "range": "[11:0]",
                      "size": 12
                    },
                    {
                      "name": "sprite_write",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "write"
                    }
                  ]
                }
              },
              "position": {
                "x": -176,
                "y": 184
              },
              "size": {
                "width": 680,
                "height": 472
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "3217ec85-fb74-460a-8755-44590703b97c",
                "port": "out"
              },
              "target": {
                "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
                "port": "control"
              },
              "size": 8
            },
            {
              "source": {
                "block": "18abcc78-0220-49c7-9c06-bd99bfb271d8",
                "port": "out"
              },
              "target": {
                "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
                "port": "reset"
              }
            },
            {
              "source": {
                "block": "9da277bc-3972-4667-8347-661ed43f0732",
                "port": "out"
              },
              "target": {
                "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
                "port": "sprite_read"
              },
              "size": 8
            },
            {
              "source": {
                "block": "aa347a84-7d5b-4918-ba81-adbf3db3444f",
                "port": "out"
              },
              "target": {
                "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
                "port": "ready"
              }
            },
            {
              "source": {
                "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
                "port": "position"
              },
              "target": {
                "block": "1330e624-ec60-4540-8f3c-34cfed146125",
                "port": "in"
              },
              "size": 12
            },
            {
              "source": {
                "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
                "port": "sprite_write"
              },
              "target": {
                "block": "40a9778e-b447-43cc-aaff-537e0fece33b",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "f6fa7fdb-918c-4a58-94ef-46241bcc38fc",
                "port": "out"
              },
              "target": {
                "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
                "port": "activate"
              }
            },
            {
              "source": {
                "block": "c23965e7-ac63-4cf5-97d1-1ca31e0aa918",
                "port": "out"
              },
              "target": {
                "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
                "port": "write"
              },
              "target": {
                "block": "4c0573ce-4343-44c7-900e-83efcff27712",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "8c06e3f0-bcaf-48ba-93db-6b9df85fc2c8",
                "port": "out"
              },
              "target": {
                "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
                "port": "frame"
              }
            }
          ]
        }
      }
    },
    "7fa6905360f903ee8248f28ed121aa27b54a5199": {
      "package": {
        "name": "demux_actors",
        "version": "1.0",
        "description": "Demultiplexor for actors in the game.",
        "author": "Juan Manuel Rico",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22210mm%22%20height=%22297mm%22%20viewBox=%220%200%20744.09448819%201052.3622047%22%3E%3Crect%20width=%22335.987%22%20height=%22333.222%22%20x=%22210.165%22%20y=%22351.352%22%20ry=%2238.569%22%20transform=%22translate(2.765%209.679)%22%20stroke=%22#707070%22%20stroke-width=%224%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20fill=%22none%22/%3E%3Cpath%20d=%22M286.211%20625.12l197.72-40.098v-129.97l-200.485-33.184z%22%20fill=%22#d4ec00%22%20fill-rule=%22evenodd%22%20stroke=%22#000%22%20stroke-width=%226.6%22/%3E%3Cpath%20d=%22M365.023%20609.91l-1.383%2045.628M387.146%20605.762v45.628M409.268%20602.997v52.541M485.315%20517.272h41.48M485.315%20540.777h41.48M233.67%20474.41h48.393M230.905%20496.532l51.158-1.383M232.287%20538.012h51.159M235.053%20561.517l48.393-1.383%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%224%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "5e63039f-76ab-4401-ad05-89f03964f5ca",
              "type": "basic.input",
              "data": {
                "name": "position_0",
                "range": "[11:0]",
                "clock": false,
                "size": 12
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
                "size": 12
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
                "clock": false,
                "size": 8
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
                "clock": false,
                "size": 12
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
                "clock": false,
                "size": 8
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
                "size": 8
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
                "clock": false,
                "size": 3
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
      }
    },
    "5a297d26fb1eddc3b68a3a5fb499f602a8b6be39": {
      "package": {
        "name": "blinky",
        "version": "1.0",
        "description": "Blinky ghost for game.",
        "author": "Juan Manuel Rico",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22229.298%22%20height=%22219.519%22%20viewBox=%220%200%20214.967%20205.79905%22%3E%3Cg%20transform=%22translate(-7.232%20-5.269)%22%3E%3Cimage%20xlink:href=%22data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAH4AAAB/CAIAAACmHeF6AAAAAXNSR0IArs4c6QAAAARnQU1BAACx%20jwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAABx/SURBVHhe7V3Li2/ZVc7/0ZkIzhw5kw6oOAok%20DkQQMhGUTBxkpOBAFLpBBfE18YEERSWoKD5C1EQSSYyah3kZbYx5293pazrJTfd91q3XdX2Ptfba%20+1e/6qpf1b11O9ZhsVnn2+usx3fWWedU3erkDQ+vjys6rqm/suOa+is7rqm/suOa+is7rqm/suOa%20+is7rqm/suOa+is7rqm/suOJo/74/t1NeXh4sCCSc+PHRw7zBBxPHPW33vTGkFeffuOrUrju//1f%203Hr6KZ5ipcFTsQWcp9h9WvYwCDw88HRcEgZHX/2CwzwBx5NJfdAKKmMtKgMkueSRW7GaeuOiGAqo%20nxDcy1CuqT/tAFOkCbyj06GIerEpEsV+x6Px04A4nwMieER4h66pP/XgYBHppIxK62JSnDaiHrR6%20F/wKr/shDzK4pv60A1NewikhIcXjNIQd7ZmOU48U4rQXbid57TX1px2cNiSLLRytGpSZenSxWIbi%20rqei7oZCG+K+Vgi3rqk/9RDF4B0U+x64i4mYfdp0XEpsiXqAGDJjK9b/X9Qf3719fOfWIg8P9o/v%20nITv7wdrm3L04lcXRHJe/PjmN5eIEuazgiEPj49dxiM4Hjn1t3/0+9SJbFV35YO/edetH/punzYJ%20dqDQOEStKlwTQ7t1IXAoGjXeFV56bHV7KX73ZiD6t95dHX/zZZfxCI7HRL1INE1vSupJShN9sSQF%20KaGT4mHMXRAkygAmv9RFcUd8Lf3gWm1JCrdxC/QdQX32lKSoxxarhZKv0y66kBTbxq42cIDNXqcQ%20XOJAwmGT9hL6sd4Dve6pj5pVqsvLgWOEoi1QUMYkAluiTDZlzHXF81pR3BHZDIr7VvkX0hy+/rue%20fYRiYqVi6oWoTipFWVlyzUGUZtmYK16BNnArA6+tWMetwmfowL8zZr2KiW4KvkJOoR6jFjZE8kJQ%20k4yHRHvCVVHGL/dyInsFwihrW0mxnIxA8u+tFug7gHo3o2Z6SFFfiOgDZeMd6B4MZKK4duuWdCex%20FsUNkQ3x4bYCyX7yQ5vXB/XHt28dv3Jzlb37+x/8uyhskaMXvrL/D3+9gCGX9f1+Wfjxq99eK6Jc%20yvf+pVF/5+1vQb/gGc8HNmb6u37HAwegGgo29ZrVqWd0DZAaLHkJ8Wx5O0egtA98PBBxVfdT0yNO%20jY8MvVX45Mq/qJgq0m7cEpd9geMyqdcjXI9t6KY+SSkZ1De+Yo1S6YFIGoeNqGmeHSjxYSmlqARl%20Ass/lVh7INvn5RUI9u20Aj1x1CMtZ++Ce9cDTINGPS0h2C3Khh+eAu99lwbEaVkUQ9StdUqhwfAz%20cKxT3Bao+albCOWJpB68jNqS+gK91QZOGUMRNdlcdQkoIFjGA/cpmUqZqZQycChYW6DEIT1Qw2Xp%20QE8m9eOpDEXUGxmlDuq7cayDMiFswFCEl7FkE7fSZ/q8FXghJYGc7Gc7/uTNej+Syg+sJfVunFKm%2012wai4I2WA2GslBWgUiNzbiGjtOGYy3pVPZA8i+kB5J9r0i7T2LXR/aVeijTrGcBer9tdr2kqPFr%20UJf4lkyWCjTs+y5viT3kllZTmYJdmi1xy4Bxp4qkXw31x7deiR80Vrl75+AjH4hEFzn68n9v+64/%20+OJ/HXzhuUXC+YJI4lN68SC5tO/6l28sESVb87l7Z2WAcq7v/XNTf+9nfjy+2Ngg4wHc+71fwcBp%203cH1KQ8c2Y/2wXf93oODvb0Dr3sH9x8c3N87ODw6Irgfp9ji7v29/cO7d7rz0oM1IvZcgYTXiPCu%207WUjD545B//5KQViRK4U5MPElE8YyObguU/TyahIfo7v3TFNZzh2oR6RwLvjxQMu6onHKQvm6oFD%20nfb4tUnYJPWjSOhBMUs1zhujUoN6BcqgDhRUKpAlAxlXMpxaurDZx5pbTz8V1Jv3jCjJVqAQL+rL%20iQPRz2Ognv3lsQjF1AcinDXHml3vOwGc9qKeZaCP7j+w4i5LkI8Cbwmox4VyW4HQxUJil/4VyN3d%208oGS1AuhE+dj6p0JgkoinwUJPczQ9XNFSuCRU6+nLOKV4oGDDOLUj2Gc1sCJUyBsvZB54KBmKSg1%20uwyPeTa+ul7+Swm3pDhPichAuAQ4FFMvhcZpQOoVaKSU+fhUW8ar60dFksfR9ZSM2ro+ehArGgFK%20fuHUI+l1dD0ajZM0u0xI1S+9DRw4h0L/6uLEc6uod18Dl5ntZTy22PUKWnG5uhWyA2yggaPLa6Xb%20x9H1ka5fMijvqep6Vlhdn69ZNZqJQIo16zlVLHHqLoPO1ULq6Rx+7AqBRDF1RsxA6u5AkEy7Cnhc%20S53JIJ8wYNeLWTY440ZKoB6ku0tq16/ZVpG8PZbXLMlFSDbaeM2qWu1W148ifZWpVyu1nmKpUCC5%20BRxfOOZXrrDWT61gU4h3jYMR8pJK4FJqi4oHzoibObRWmLKq12xVpJQeLfUHn/jnKGCRw88/t+27%20/jA+4b/8+UWObr0aVW3K8fHxgkiOj44WD5Jzf++//NLiQXK8d3+JKNmaz979xYPk4dE5/n5/x1nv%20B433PPQcOOwCr8Cj66NTPE+ytWM9POSXjE6922Z94rmrmeuhJGM15uG3byoQ+o4pSQ+WnWQmIzn4%201EcUCCFaIPhnIKwtEPJhoESQs3AgPPXKb39zdLbjAq9ZFinJ1ywfYdUJHLPeeTPRXA9EPYSpUyGe%20pXJFtVKA5/BJb8SDegZSGpWSqGcmuUUbUJ9+6EFrUUykBSpcFEM/IU/ZQzFHZzsuQH3VNmZ9NFqy%20TwNRj9SZn7sjfmqduh6iU5Wkjwp/WXIrcBsLz4ZN6p2G9aIeOKTeBOx6x+2B4J+BaleB1ri5W/Y4%20dUpYzdHZjl0HDgrz6zTW6nq90IznwGFHSKwX9dFZkFSmkhKHPW6JryWSfki9hkys9SoO6hME6dzC%20GtQrEP2MQIwLhTICMW7HJR23cShhb47Odlyk68ezXLMep6qW+KCefQFh9h44OlXLCDfFaSwZ1OdW%20GgT1ClSZSAH1DUld1KcfifyEfwYaA5BbxiUDZz4beNxFc3S2Y2fqoyTVGY1m6kV61R8yU8/uYK5t%201hPHAEHqUZKpIc6WRDeZeiIAXXDNesmIOwZOgXwIQD0DwVULJP8RSBErkOPWLVHoQf2oSAbm6GzH%20LtTj4ZXwQS7q43knyJVKUm9BtWhwDxwiItdKUo96RI22kprJD+zZ9Y7osW7qhSAlTRueauDQg6h3%20IMXVlv1TTHGeSmRfuirSqTk623Fu6s/7XX+08VEcsu17OTY+/Nzzm/L1V+4siORbN19dIkq2/l3N%20t76xRJRsy+fO/QdLRMm2fA6PHvXv6/UID8mBw6dbnxO0aV2PB1xPKwdL+8LhU+xOjB/R3/DWZ9/w%20lmexQp6hPPuHH/j31I1I3v3+jytQSwYSLGvC+NsmFX/hqEmZiZo6WFYOTCaQ0JHVZ758I2P16M+0%20fLjrhJ+5fe+BaTrDsdOsZ1VeqST1iRhvr1lVZb194QB0nbGa+laMVpY6TmmANahXoFhBbqYE6p1G%20bHkMximoV0S1guNuDhaAkRuoZ6Ap9JpPyWOgnlVV78cM7dRj5qbBMust8eVQr9lZNrrekqUu8oyo%20H5mk0qh3i2hLXQ8R0XwKQwH1HU89u36heCOfTPgxUd8e82ngqNGkdOr9dGMdr1kIETVadn2Uml3G%20pmtdVlsQd33LRDqpdw5tV9QjUESsn4PidBo4WJ3VxsCxfsJTSIPHQb2aiCse59b1qLN2+6yn4vKS%20epKOLcsYOCFt5rhUP/tDWtcjjQqtrm+If7eT1GdQZeXvd+oA64ulU0/JlJgPk5lSehzUjz6SbM56%20lT11fSoh02t2yEw9i5moN1K79ZpdRL80bknmDMyB47jzRyTAJN1Pw0z9CD13/ZDHNnCGzANnSOt6%20FePC3PUsj0+3lZn6zVIX8azflPk1O3BTj75mRFGcP7XqI104lLPP+pTLof7o5ZeOvvS5Vb759Uf7%20XX90HFVtypdu3FwQyQsvfWOJKLms7/qbt+8vESXb8rn77VdWxign/n3OVurvPfuO3i9qn/u/+nN9%201ueDXL9I0GlK/2m2uoly4hdONN3GwPF4jaomMMVd798djdDBshT9oFu4ut4tn49arMFyZjjNwHXW%20W+o1u8rn3/e+ikXx9+7xgz3T2o7XpH6qqqgP0ZeyJKkPZJTafpEQ9fRJuvGF498mnkQ95XTqK5P6%20tBf1c39AgnoFqky0kvqRRm1tob7l074FYt2g3rIL9Y1HrKaevxvRLRVe1OOURBBv1PunWX4/9I9L%204vrByl2vbwaVFGt1/UBkECtmvQIxLjKBtH/+NpKF6AsnAmVQv+qD+jrtCqhnoDluUq+UWlZB/fj5%20WTxQdup6NZTK611v9llY+/VZnLr1KI16tZJk6XoJCmbXs856s1Ef1CdCna/ZjDVCT69Zb2kF9Qzk%20iJlVDhwimUy8gU94zTKNbU/h0vX1OO5G/XAUIup7N4VEgPkLZ9ySaeCoZuh91nMr8WngRJFJd3YZ%20Kah7sMz6lEhvor6Jur7CWdEvganrm5IKEhsDpwWNNNauT1mpTyrOTb0eFgvvganXr2HbWq/Z0BnS%20eFGfDzLaKhRRz4+53Iq1Bk6RLq7HwOEPtwC18rteaXTx3+FkJgnGqq6f4yK9HDhKciScA4eZOG5R%203xELBk7lk10brblD1/v5ZSPjBubAKTxiAM+ur6fE9kl9igrrv8Nx8d464TXLyrc94Ox6BKr+YgLj%2073P4QHCL+Bg4ECeDfPyaVSbahZzwmkUHnJQP88yuZ9C4Bwwacj7qDz/7b1HAIofPffq83/UHn/nY%20wcc+tMjRyzei2k2J7+sXv3lrU+7e23vhvX+7Kfe+9sISUbL173BuvLBkIjm+ffLfBcVoXDKR3P3W%20zSUTyf7Xnl8iSh4eHZrWdrzGwIk7xneF/q3nqZz1/IIkwidrzHp2H0F2YnS9/vpMOBsBNu0vjaeP%20iqjW3x5oRj/1scW/PtO1biU5jKoUSBErEHAGUtouwe+AqSIp/kvjJSXlA4Tz0CB2+Yd/uLYqimaP%20lfk4mQJjPf/AiRTxzOqxRcH1hcPs9TTBoH/hyBgG/Q//CqRBo14l4fEPJUrVBIhdTQBW6780Hn4y%20kCgGHqcBpgEppi5q0gA4bGyW+eff15PZCh3CfIgjk8T1h3/KRH5ytX9kUjiUXb5w7FpVNeoN5mrq%20aZyXQEw9bdCVeUn9zWUKvu5jRalU5l39pbGvhasMZIqbZ+DjC8dpV+jAl4qkt7+5VGi+ip0PGfev%20fbyrv7nsFXH1UyW9Kbt+19eDE5Em6pG6WMjvej3dGS8MknojsSVZBw7pdtezVPVgdSIGDgPZTwYy%20xWxtbUlAsWLlTdK1sJ8r0grqzS+DRj7MKvJhDn74nC0HjgI5ivzUU+itirLDFw7JhYS70J9uXzjA%20HSNkzPpqJV6SA6e3GMRd76e7lKK+g1g9cCDZyFxFJRGkV4F8SzZk4FmRTkn9CEcB0c5HzV5bHjhx%204agIMv1xuREpO3U9BL40LmfqhyT10KMFuKK2ueuHnxw4ajGVhF7LUl1h4oN6tVLq6u6kfoi6D7pW%20hKaS1I9MlC0HjjLpa1I/7oekun74kYxbS0kqLkC9XISI+jytJ3d+zYZETwHPLxyCuIqDIvTsev90%20o2e5uh7zJ59x/Xgp6h03J0aISs00DIaZb0meiqOQot6udJVfs6Q1VijKp3W92XdiY9ZnRVQYl7Vj%20FwpTffqc1F/Wd/3W/272ox/c/5f3LxLf+wsiOfr6S4sHydbv9/PiN15YIkq25hP2G05Ctvk/93e9%20b117cvtrtm5vGNRrduCh58AZj2R+50XX478Wp422FCiy7M9vbQUOPe0rEPAECw8pP0bShvhUkUT+%20nflsP/AECyfoirTCv/AmsXWB1ywEGefAwQOrxy0kMvOsxyjAqXbDrKiHcT6YIaKeoBFFYUmkhkgF%20As5AOq1AKlUPNQ0cSPbpRCBO6Z86zcom/fC0BTLeKpKB8F4RlRa3gbHuNOt1PcPH6q4niPts79Nr%20ti6JqNNrtvDq+g5SQUkbrReBUFI3ToPEk4IFV5IJxmpqvDUCyb5XpK01bgZa8ZSKK6kQF6JeUU8e%20OONHKuEGQ7Lrq0grRf1J1NimrgploySv20otvDlJfERc/ZdxSeITGDLizpcMnIKnhMpu1I/8Ym3U%20xzOIxxCVjIGDU1hSCbPs+rWk0fW1Rf+R+kb9CISSGAiInDOQcYE01lWNgvJm/0tFEtpPFQHXrZ0r%200tr8d1laBFdxLl2k67V26p0c1miKMXDSUvg0cIhIOWXg+LSMGUL41H3NPi3H7kRB2wW+YRyXE58q%200tawT0so7WlbUpriQnjPLtj1kmngJBjh54HjS0LZ6Hq21UR9blE5saS4RHiBFSjx4V9K4JWepfwP%20Y4hc2c8MDjwvKUU4xRUNvPxny4ecj/pH/V3/uvjfubwsfJfv+riHceuyy9z1dapbGrd3+sLhlm54%20vmZDH90Rp+p64KNHYBBZyqAstQrXw1u7IYHb7dia/TATKggEfK4I127ELW+OS70HIj5VpC3hAruc%20e+DQ9Ug0xNQbcex4O3ngGPElcVoDpxD5GdRrK6+qUim+KhRTE0g4oR9dEni5LSeBND/DSSiiJpES%20+9FWIBUIeHNSgYQXIhk4BSBvcyg7zfr5Hk6zfkzAqesZ2Fumvlka3/zCoUJqbFPGbabztAzWW+XW%20Dim8jJv/imgJt+nfWxXIOGS6avjPJCWL/7rqAl84Ke0Lp+EbAydEOSX1DWc27vpAaotKlVTIhDc/%20ksCn4lMHrrLRmJDhZ8NJICve/BTYA01447rjIYhL2XXgZMiI0bueiGT6pxJuYY0myoEDM+G6xF1P%20eyEKpNTlpHowJHCaEaeldNvLkitdlb1AfV8jEO2nirC2H9l0VQWiHzpPS+i0h3PieQlE9tJ9Cc12%20GzglcDRT74/WkGXgFL4OnNxqA2cSUQOd3Zr4oEZbUsJgwrHlQMBplsRZZvsRKPFRkbaE94ok5ae2%20lO3sH/kEHnJ+6sspFCRq6oWHX3dBUh9lAPRunC7U68KQHDjDQ6wRiKknIqErl0T/pegpUSCAwB2o%20URBI1O9AwntFUNqs7/5lTxCugGSg4X+Etp/yQKF+Xuqvv+tDLgs//3d93dKUZdaXbL5mKfNvLolI%20WQdOBoosB5jGITM+JHFZnt1+kXmgNdnAHajhDoonqdvP1J3/NYs5WC8NPD6iXgif4ngMoeTAiTwI%20poGon53AT33hdCdx6tT5aOsS2QReNiEVCPiGkxD4YaBCZEP7dNICneZHYHOSfoBURVjlRx4ozBMG%20u79mFTWUE7s+dqvrlY1zqq5n6kK4to/LWURNKLHVd0mBQeFahZfbCpS4RWBI4fQzAm3aFx6rEG45%20UOGF6BR+eA8WuegXTnivrg8kY+P2JvXKA5YycNfP2QDfTn1dHlJ+RE3z40DGDQ6DFU9FeMoIdLqf%20XtGMW7bhJbtQD6duJVRbXV+p6IW+2fVSatYbxwQgrlnfbglwf2nAIU9TYUkKpNMJ12n2+4rrJjUq%20gbeKeMqBRoNYe6AJl8JrW9ypUYBnLOBhzNMLDRytpj7cwSkHHF0v1JdsvGZhELK+ZlMi9VhhowIy%20EPBCaKlAst8UUSMbrYVLqS0Fkv9ekVb5weksPS6cnIRTfOMvOHAgU9cnCyHzwPFWVJXUJ55yOvVd%20FGgqFc7tULjvE2TChXTuNv1LAl8qCgm3wz4r0ummH0VZcD9z19/1IVeFn//v6zHX/Nmk9hldr2cz%207+1m14dxyDJw1BohvethmYEiy+pTtZgCEYeN3PbuTmQS2S8SZrSfKgJO/0tFcjv8ZEU6LbwQiXBY%20KnnmGac7DpzupaiHRK4ZUtTLRrwoJ1PfLI2f9IVjCtrllv7rrZZMBKJ9moVkoIZP3kzNzEvhU560%20ybiTk4ZDeiDi5QQ/BNBgl/+WqrKJFUpST1CtiiynfyqJeFgZsn/hZKlI6IRZz0At9ejBUKhX19OG%20URwocHmOVcY6Je7K0yEEfuaKsPbfEclJBrL/VpECVVyZpUH6scg/ZLeul3eED0XUR2bMoHZP+Fcq%204Z36qFC7cdqor/ygoKTGVwVSSeGQKxS56rhEgYiXsbbsf+AtEOI2swqU+KiINom3igpvp74q5PzU%20Izk6UqfULxLUHZV6/5GKl8AgLqnf1weYHnRJGzjCrTD1YVyBXJLM2goKGIhCP7zWfuATUoEGNRlC%20K/zY53AeK+ypV0UU4c1D+mz+p63dBk5c7O4LMfXUiTut5TUrg5D+miWPUMKsup4eKFRIQZnZiXAF%20El6Bmr34goQZ7QFilxToWuBUqiKa2U+ajUDpx5nQJqmncXrg3SWucNwNBcaxdU7qf+mnb/3gdy1y%20/zd/4d7P/uQChuy989fu/tSPLGDIgz975523ff8Chuy/509vvfl7FjBk/31/uSCS1zt+PuoPP/3R%20B+/5k0UO/+OTBx//0AKGHH7us75s49j/wLsX45Cj578UDbKAIUcvfmVBJEcvv2R3ZzyOjhYPkq3+%20t+DHe/ftcD6O791dLCXb/Oz2381a9HDlwPEz5S1+XPqyjWO8ZvOpjNMcOPQzHls9sOO0AsXPa3Z3%20xmP/gQLl6HCgGiDa6nELD6ls8f/yddJx9L8vlo0CSeyHnksCOfesL79W2p9ABSlyqgJOpz4MIK3U%20Puu1q0BInYGw5V0E2oX6ll4p9l8RUw98qUj46dSXZQn9AKxdGOz4O5x8aVDP73onzXcI9dfqer4D%20dQn9nPBxyUDVNbHiNZVX7Ui9L5ek/7miWCNQ3pJRkXZPoR42uoSWuir9+PLa2qXr25cAYvQvHN3V%20AKNfXqPrK5tMtD4u1Wv0BoXUwyY9a2vXric1dkIl/C8VUSHOQDqtrE6jnpZVkU7tJ92W7Nj13dGg%20nlXRAMprz/qsSlkW9aMHB/U2Q5QMtPusTxlP1VyRAvGWIJCQUJTwaQNnrkgK/Y/TuIU63Yl6ZIlc%20oYxZn3xxN9bXoJ7h66rwZur7s09Xop4s8G6lwW5d77Thyn7sv1WkVbhEFUFOHzjNbXnjLZyKkpyP%20+vu//vO3f/h7F9n73V++98w7FjDkwR//li/bOO68/a2LcUh8/97+sTctYMj+P75nQSQHn/iw3Z3x%202N9fPEi2+d+GH9/8hh3Ox9HLNxZLyTY/0Qq+sh1bqcf3+5///iIHn/xXb1/4ePBXf7Q4Dzn6ny8u%20iOToxgu+7IzH0eHiQbLN//Gd277wYsfxrVcWz5KHh7v8fX0+NVRi4Hj7woe/cGb/NSvxCOvJ5djZ%20YeD0kSI/sZb/QhTo6KVz3totR9xaO59lly8cvXmUX6yXS/3knwqpmV6DUnaf9bx/k/+5Ivm/dOrl%20NmJJ2eU1q5cG3zxQLr3r652mQCs1aswLdD2Ll0P7XypSoEukPuNmCdR3/7iUEuvldz3dViB1fSGx%200mb3n2abEyj1VNWWlMukPgdaV3YZOHEZVgk/Lr194cOzvjmPFV1JXVslOw6c2Y/9zxVp63K7vvn3%20jd+165GrOgX/VOLtCx/o+qi8tV6cinqMAmwpe0Tfhfq40JVzcPWubxUp0GXO+lYRBf7PR/3eb//i%20nbf9wCJ7f/Ab3r7wcecn3rw4Dzn4p/cuiOTwMx/1ZWc8DvYXD5Jt/uM73Rde7Dh66fnFsyRawRbt%202Er99fGoj2vqr+y4pv7Kjmvqr+y4pv6KjocP/w9DsOOKWU2rbQAAAABJRU5ErkJggg==%22%20preserveAspectRatio=%22none%22%20height=%22119.063%22%20width=%22118.125%22%20transform=%22translate(54.977%2048.785)%22/%3E%3Crect%20width=%22214.967%22%20height=%22200.095%22%20x=%22140.607%22%20y=%2251.887%22%20ry=%2238.569%22%20transform=%22translate(-133.376%20-40.914)%22%20fill=%22none%22/%3E%3Crect%20width=%22198.743%22%20height=%22201.447%22%20x=%22151.423%22%20y=%2247.831%22%20ry=%2238.569%22%20transform=%22translate(-136.08%20-40.562)%22%20stroke=%22#707070%22%20stroke-width=%224%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20fill=%22none%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c23965e7-ac63-4cf5-97d1-1ca31e0aa918",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": false
              },
              "position": {
                "x": -376,
                "y": 192
              }
            },
            {
              "id": "1330e624-ec60-4540-8f3c-34cfed146125",
              "type": "basic.output",
              "data": {
                "name": "position",
                "range": "[11:0]",
                "size": 12
              },
              "position": {
                "x": 616,
                "y": 232
              }
            },
            {
              "id": "18abcc78-0220-49c7-9c06-bd99bfb271d8",
              "type": "basic.input",
              "data": {
                "name": "reset",
                "clock": false
              },
              "position": {
                "x": -376,
                "y": 272
              }
            },
            {
              "id": "8c06e3f0-bcaf-48ba-93db-6b9df85fc2c8",
              "type": "basic.input",
              "data": {
                "name": "frame",
                "clock": false
              },
              "position": {
                "x": -376,
                "y": 352
              }
            },
            {
              "id": "40a9778e-b447-43cc-aaff-537e0fece33b",
              "type": "basic.output",
              "data": {
                "name": "sprite_write",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 616,
                "y": 392
              }
            },
            {
              "id": "f6fa7fdb-918c-4a58-94ef-46241bcc38fc",
              "type": "basic.input",
              "data": {
                "name": "activate",
                "clock": false
              },
              "position": {
                "x": -376,
                "y": 424
              }
            },
            {
              "id": "9da277bc-3972-4667-8347-661ed43f0732",
              "type": "basic.input",
              "data": {
                "name": "sprite_read",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": -376,
                "y": 504
              }
            },
            {
              "id": "4c0573ce-4343-44c7-900e-83efcff27712",
              "type": "basic.output",
              "data": {
                "name": "write"
              },
              "position": {
                "x": 616,
                "y": 544
              }
            },
            {
              "id": "aa347a84-7d5b-4918-ba81-adbf3db3444f",
              "type": "basic.input",
              "data": {
                "name": "ready",
                "clock": false
              },
              "position": {
                "x": -376,
                "y": 584
              }
            },
            {
              "id": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
              "type": "basic.code",
              "data": {
                "code": "//@include blinky.v\n\nblinky\nblinky_01\n(\n    clk,            // System clock.\n    reset,          // Reset.\n    frame,          // New frame.\n    activate,       // Activate module signal.\n    position,       // Position in map.\n                    //    {xposition[5:0], yposition[5:0]}.\n    sprite_read,    // External sprite code readed from map in position.\n    ready,          // Ready signal from map. Readed sprite code ready.\n    sprite_write,   // Sprite code to write in map.\n    write           // We want write code spriteto map.\n);",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "reset"
                    },
                    {
                      "name": "frame"
                    },
                    {
                      "name": "activate"
                    },
                    {
                      "name": "sprite_read",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "ready"
                    }
                  ],
                  "out": [
                    {
                      "name": "position",
                      "range": "[11:0]",
                      "size": 12
                    },
                    {
                      "name": "sprite_write",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "write"
                    }
                  ]
                }
              },
              "position": {
                "x": -176,
                "y": 184
              },
              "size": {
                "width": 680,
                "height": 472
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "18abcc78-0220-49c7-9c06-bd99bfb271d8",
                "port": "out"
              },
              "target": {
                "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
                "port": "reset"
              }
            },
            {
              "source": {
                "block": "9da277bc-3972-4667-8347-661ed43f0732",
                "port": "out"
              },
              "target": {
                "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
                "port": "sprite_read"
              },
              "size": 8
            },
            {
              "source": {
                "block": "aa347a84-7d5b-4918-ba81-adbf3db3444f",
                "port": "out"
              },
              "target": {
                "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
                "port": "ready"
              }
            },
            {
              "source": {
                "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
                "port": "position"
              },
              "target": {
                "block": "1330e624-ec60-4540-8f3c-34cfed146125",
                "port": "in"
              },
              "size": 12
            },
            {
              "source": {
                "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
                "port": "sprite_write"
              },
              "target": {
                "block": "40a9778e-b447-43cc-aaff-537e0fece33b",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "f6fa7fdb-918c-4a58-94ef-46241bcc38fc",
                "port": "out"
              },
              "target": {
                "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
                "port": "activate"
              }
            },
            {
              "source": {
                "block": "c23965e7-ac63-4cf5-97d1-1ca31e0aa918",
                "port": "out"
              },
              "target": {
                "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
                "port": "write"
              },
              "target": {
                "block": "4c0573ce-4343-44c7-900e-83efcff27712",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "8c06e3f0-bcaf-48ba-93db-6b9df85fc2c8",
                "port": "out"
              },
              "target": {
                "block": "e4f2e6e1-8877-47fa-a3ea-25717c73d566",
                "port": "frame"
              }
            }
          ]
        }
      }
    }
  }
}