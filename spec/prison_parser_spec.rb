require "spec_helper"

describe PrisonParser::Prison do
  let(:savegame) { File.read("spec/fixtures/sample.prison") }
  let(:prison) do
    {
               "NumCellsX" => "100",
               "NumCellsY" => "80",
               "TimeIndex" => "21688.0",
           "ObjectId.next" => "310861",
      "EnabledElectricity" => "true",
            "EnabledWater" => "true",
             "EnabledFood" => "true",
       "EnabledMisconduct" => "true",
            "EnabledGangs" => "true",
            "EnabledDecay" => "true",
           "EnabledIntake" => "true",
    "ObjectsCentreAligned" => "true",
                   "Cells" => {
        "0 0" => { "Mat" => "PavingStone", "Con" => "0.00000" },
        "0 1" => { "Con" => "0.00000" },
        "0 2" => { "Con" => "0.00000" },
        "0 3" => { "Mat" => "PavingStone", "Con" => "0.00000" },
        "0 4" => { "Mat" => "PavingStone", "Con" => "0.00000" },
        "0 5" => { "Mat" => "PavingStone", "Con" => "0.00000" },
        "0 6" => { "Mat" => "PavingStone", "Con" => "0.00000" },
        "0 7" => { "Mat" => "PavingStone", "Con" => "0.00000" },
        "0 8" => { "Mat" => "PavingStone", "Con" => "0.00000" },
        "0 9" => { "Mat" => "PavingStone", "Con" => "0.00000" },
        "1 0" => { "Mat" => "PavingStone", "Con" => "0.00000" },
        "1 1" => { "Mat" => "PavingStone", "Con" => "0.00000" },
        "1 2" => { "Con" => "0.00000" },
        "1 3" => { "Con" => "0.00000" },
        "1 4" => { "Con" => "0.00000" },
        "1 5" => { "Mat" => "PavingStone", "Con" => "0.00000" },
        "1 6" => { "Con" => "0.00000" },
        "1 7" => { "Con" => "0.00000" },
        "1 8" => { "Con" => "0.00000" },
        "1 9" => { "Con" => "0.00000" },
        "2 0" => { "Mat" => "PavingStone", "Con" => "0.00000" },
        "2 1" => { "Mat" => "PavingStone", "Con" => "0.00000" },
        "2 2" => { "Con" => "0.00000" },
        "2 3" => { "Con" => "0.00000" },
        "2 4" => { "Con" => "0.00000" },
        "2 5" => { "Con" => "0.00000" },
        "2 6" => { "Con" => "0.00000" },
        "2 7" => { "Con" => "0.00000" },
        "2 8" => { "Con" => "0.00000" },
        "2 9" => { "Con" => "0.00000" },
        "3 0" => { "Mat" => "PavingStone", "Con" => "0.00000" },
        "3 1" => { "Con" => "0.00000" },
        "3 2" => { "Con" => "0.00000" },
        "3 3" => { "Con" => "0.00000" },
        "3 4" => { "Con" => "0.00000" },
        "3 5" => { "Con" => "0.00000" },
        "3 6" => { "Con" => "0.00000" },
        "3 7" => { "Con" => "0.00000" },
        "3 8" => { "Con" => "0.00000" },
        "3 9" => { "Con" => "0.00000" },
        "4 0" => { "Mat" => "PavingStone", "Con" => "0.00000" },
        "4 1" => { "Con" => "0.00000" },
        "4 2" => { "Con" => "0.00000" },
        "4 3" => { "Con" => "0.00000" },
        "4 4" => { "Con" => "0.00000" },
        "4 5" => { "Con" => "0.00000" },
        "4 6" => { "Con" => "0.00000" },
        "4 7" => { "Con" => "0.00000" },
        "4 8" => { "Con" => "0.00000" },
        "4 9" => { "Con" => "0.00000" },
        "5 0" => { "Mat" => "PavingStone", "Con" => "0.00000" },
        "5 1" => { "Con" => "0.00000" },
        "5 2" => { "Con" => "0.00000" },
        "5 3" => { "Con" => "0.00000" },
        "5 4" => { "Con" => "0.00000" },
        "5 5" => { "Con" => "0.00000" },
        "5 6" => { "Con" => "0.00000" },
        "5 7" => { "Con" => "0.00000" },
        "5 8" => { "Con" => "0.00000" },
        "5 9" => { "Con" => "0.00000" },
        "6 0" => { "Mat" => "PavingStone", "Con" => "0.00000" },
        "6 1" => { "Mat" => "PavingStone", "Con" => "0.00000" },
        "6 2" => { "Con" => "0.00000" },
        "6 3" => { "Con" => "0.00000" },
        "6 4" => { "Con" => "0.00000" },
        "6 5" => { "Con" => "0.00000" },
        "6 6" => { "Con" => "0.00000" },
        "6 7" => { "Con" => "0.00000" },
        "6 8" => { "Con" => "0.00000" },
        "6 9" => { "Con" => "0.00000" },
        "7 0" => { "Mat" => "PavingStone", "Con" => "0.00000" },
        "7 1" => { "Con" => "0.00000" },
        "7 2" => { "Con" => "0.00000" },
        "7 3" => { "Con" => "0.00000" },
        "7 4" => { "Con" => "0.00000" },
        "7 5" => { "Con" => "0.00000" },
        "7 6" => { "Con" => "0.00000" },
        "7 7" => { "Con" => "0.00000" },
        "7 8" => { "Con" => "0.00000" },
        "7 9" => { "Con" => "0.00000" },
        "8 0" => { "Mat" => "PavingStone", "Con" => "0.00000" },
        "8 1" => { "Mat" => "PavingStone", "Con" => "0.00000" },
        "8 2" => { "Con" => "0.00000" },
        "8 3" => { "Con" => "0.00000" },
        "8 4" => { "Con" => "0.00000" },
        "8 5" => { "Con" => "0.00000" },
        "8 6" => { "Con" => "0.00000" },
        "8 7" => { "Con" => "0.00000" },
        "8 8" => { "Con" => "0.00000" },
        "8 9" => { "Con" => "0.00000" },
        "9 0" => { "Mat" => "PavingStone", "Con" => "0.00000" },
        "9 1" => { "Con" => "0.00000" },
        "9 2" => { "Con" => "0.00000" },
        "9 3" => { "Con" => "0.00000" },
        "9 4" => { "Con" => "0.00000" },
        "9 5" => { "Con" => "0.00000" },
        "9 6" => { "Con" => "0.00000" },
        "9 7" => { "Con" => "0.00000" },
        "9 8" => { "Con" => "0.00000" },
        "9 9" => { "Con" => "0.00000" }
    },
                 "Objects" => {
         "Size" => "800",
        "[i 0]" => {
             "Id.i" => "0",
             "Id.u" => "0",
             "Type" => "Tree",
            "Pos.x" => "7.00000",
            "Pos.y" => "76.7043"
        },
        "[i 1]" => {
               "Id.i" => "7",
               "Id.u" => "267967",
               "Type" => "Light",
              "Pos.x" => "58.5000",
              "Pos.y" => "46.5000",
            "Walls.y" => "-1.00000",
            "Powered" => "true",
                 "On" => "true"
        },
        "[i 2]" => {
               "Id.i" => "9",
               "Id.u" => "9",
               "Type" => "Tree",
              "Pos.x" => "74.0000",
              "Pos.y" => "77.9988",
            "Walls.x" => "-1.00000",
            "Walls.y" => "1.00000"
        },
        "[i 3]" => {
                     "Id.i" => "23",
                     "Id.u" => "23",
                     "Type" => "Light",
                    "Pos.x" => "88.5000",
                    "Pos.y" => "0.500000",
                  "Powered" => "true",
                       "On" => "true",
            "ExternalPower" => "true"
        },
        "[i 4]" => {
               "Id.i" => "32",
               "Id.u" => "34",
               "Type" => "Workman",
              "Pos.x" => "83.2101",
              "Pos.y" => "64.1930",
               "Or.x" => "-0.945099",
               "Or.y" => "0.326786",
            "Walls.x" => "-1.00000",
               "Name" => "Grant_bootstraps_holdingcell_Workman",
              "Vel.x" => "-2.15067",
              "Vel.y" => "0.743634",
             "Dest.x" => "28.3963",
             "Dest.y" => "55.5676",
              "Timer" => "5.00000",
              "JobId" => "20393"
        },
        "[i 5]" => {
                   "Id.i" => "424",
                   "Id.u" => "36131",
                   "Type" => "Prisoner",
                "SubType" => "1",
                  "Pos.x" => "73.2679",
                  "Pos.y" => "63.5654",
                   "Or.x" => "-0.993410",
                   "Or.y" => "-0.114274",
                "Walls.y" => "-1.00000",
                  "Vel.x" => "-0.381774",
                  "Vel.y" => "-0.0439161",
                 "Dest.x" => "72.0253",
                 "Dest.y" => "61.6059",
            "AttackTimer" => "0.125195",
                  "Timer" => "8.67264",
                "Gang.id" => "1",
             "Gang.timer" => "1.85766",
                  "Needs" => {
                "Needs" => {
                     "Size" => "8",
                    "[i 0]" => {
                                 "id.i" => "0",
                                 "id.u" => "36123",
                                 "Type" => "Bladder",
                          "ActionPoint" => "49.0000",
                         "TimeToAction" => "600.000",
                        "TimeToFailure" => "720.000",
                               "Charge" => "23.1398"
                    },
                    "[i 1]" => {
                                 "id.i" => "1",
                                 "id.u" => "36124",
                                 "Type" => "Bowels",
                          "ActionPoint" => "60.0000",
                         "TimeToAction" => "600.000",
                        "TimeToFailure" => "1440.00",
                               "Charge" => "28.3344"
                    },
                    "[i 2]" => {
                                 "id.i" => "2",
                                 "id.u" => "36125",
                                 "Type" => "Sleep",
                          "ActionPoint" => "57.0000",
                         "TimeToAction" => "1440.00",
                        "TimeToFailure" => "1440.00",
                               "Charge" => "59.5716"
                    },
                    "[i 3]" => {
                                 "id.i" => "3",
                                 "id.u" => "36126",
                                 "Type" => "Food",
                          "ActionPoint" => "38.0000",
                         "TimeToAction" => "960.000",
                        "TimeToFailure" => "1440.00",
                               "Charge" => "62.3749"
                    },
                    "[i 4]" => {
                                 "id.i" => "4",
                                 "id.u" => "36127",
                                 "Type" => "Hygiene",
                          "ActionPoint" => "62.0000",
                         "TimeToAction" => "1440.00",
                        "TimeToFailure" => "1440.00",
                               "Charge" => "64.2191"
                    },
                    "[i 5]" => {
                                 "id.i" => "5",
                                 "id.u" => "36128",
                                 "Type" => "Defense",
                          "ActionPoint" => "51.0000",
                         "TimeToAction" => "-360.000",
                        "TimeToFailure" => "-360.000"
                    },
                    "[i 6]" => {
                                 "id.i" => "6",
                                 "id.u" => "36129",
                                 "Type" => "Family",
                          "ActionPoint" => "37.0000",
                         "TimeToAction" => "1440.00",
                        "TimeToFailure" => "1440.00",
                               "Charge" => "41.3649"
                    },
                    "[i 7]" => {
                               "id.i" => "7",
                               "id.u" => "36130",
                               "Type" => "[dev]Weapon",
                        "ActionPoint" => "51.0000"
                    }
                }
            }
        }
    },
                   "Rooms" => {
         "Size" => "53",
        "[i 0]" => {
                "Id.i" => "0",
                "Id.u" => "279200",
            "RoomType" => "Office"
        },
        "[i 1]" => {
                "Id.i" => "1",
                "Id.u" => "30",
            "RoomType" => "Garbage"
        },
        "[i 2]" => {
                "Id.i" => "2",
                "Id.u" => "3658",
            "RoomType" => "Deliveries"
        },
        "[i 4]" => {
                "Id.i" => "4",
                "Id.u" => "290129",
            "RoomType" => "Canteen"
        },
        "[i 6]" => {
                "Id.i" => "6",
                "Id.u" => "5187",
            "RoomType" => "Yard",
                "Name" => "Grant_bootstraps_yard"
        },
        "[i 7]" => {
                "Id.i" => "7",
                "Id.u" => "40849",
            "Entity.i" => "352",
            "Entity.u" => "41045",
            "RoomType" => "Office"
        },
        "[i 8]" => {
                "Id.i" => "8",
                "Id.u" => "6045",
            "Entity.i" => "306",
            "Entity.u" => "16435",
            "RoomType" => "Office"
        },
        "[i 9]" => {
                "Id.i" => "9",
                "Id.u" => "6047",
            "Entity.i" => "387",
            "Entity.u" => "25839",
            "RoomType" => "Office"
        }
    },
                   "WorkQ" => {
         "Next" => "20552",
        "Items" => {
             "Size" => "142",
            "[i 0]" => {
                       "Id" => "18407",
                     "Type" => "ImproveCellIndoor",
                    "CellX" => "58",
                    "CellY" => "10",
                "WorkTotal" => "1.00000"
            },
            "[i 1]" => {
                           "Id" => "20361",
                         "Type" => "Construct",
                        "CellX" => "16",
                        "CellY" => "52",
                      "MatType" => "BuildingFrame",
                    "WorkTotal" => "1.00000",
                     "NumFails" => "1",
                "ObjAssigned.i" => "271",
                "ObjAssigned.u" => "309802"
            },
            "[i 2]" => {
                           "Id" => "20425",
                         "Type" => "Construct",
                        "CellX" => "25",
                        "CellY" => "57",
                      "MatType" => "BuildingFrame",
                    "WorkTotal" => "1.00000",
                "ObjAssigned.i" => "271",
                "ObjAssigned.u" => "309802"
            },
            "[i 3]" => {
                           "Id" => "20540",
                         "Type" => "DumpObject",
                        "CellX" => "26",
                        "CellY" => "59",
                      "ObjType" => "Rubble",
                    "WorkTotal" => "-0.500000",
                "ObjAssigned.i" => "428",
                "ObjAssigned.u" => "310424"
            }
        }
    },
                  "Regime" => {
         "CurrentActivity" => "Sleep",
            "PreviousHour" => "1",
        "PreviousActivity" => "Sleep",
                   "[i 0]" => "Sleep",
                   "[i 1]" => "Sleep",
                   "[i 2]" => "Sleep",
                   "[i 3]" => "Sleep",
                   "[i 4]" => "Sleep",
                   "[i 5]" => "Sleep",
                   "[i 6]" => "Sleep",
                   "[i 7]" => "Eat",
                   "[i 8]" => "Eat",
                   "[i 9]" => "Shower",
                  "[i 10]" => "Yard",
                  "[i 11]" => "Yard",
                  "[i 12]" => "Eat",
                  "[i 13]" => "Eat",
                  "[i 14]" => "FreeTime",
                  "[i 15]" => "FreeTime",
                  "[i 16]" => "Shower",
                  "[i 17]" => "Shower",
                  "[i 18]" => "Eat",
                  "[i 19]" => "Eat",
                  "[i 20]" => "FreeTime",
                  "[i 21]" => "FreeTime",
                  "[i 22]" => "Sleep",
                  "[i 23]" => "Sleep"
    },
             "SupplyChain" => {
               "Timer" => "0.00000",
        "PreviousHour" => "8",
               "Order" => {}
    },
                 "Finance" => {
        "Balance" => "38488.0",
        "LastDay" => "15"
    },
                 "Patrols" => {},
             "Electricity" => {
         "75 9" => {},
        "75 10" => {},
        "75 11" => {},
        "37 77" => {}
    },
                   "Water" => {
        "40 35" => {
             "PipeType" => "2",
            "PressureY" => "-0.424673"
        },
        "44 35" => {
             "PipeType" => "2",
            "PressureY" => "-0.424673"
        },
        "48 35" => {
             "PipeType" => "2",
            "PressureY" => "-0.424673"
        },
        "81 61" => {
             "PipeType" => "2",
            "PressureX" => "0.230209"
        }
    },
                "Research" => {
                  "None" => {
             "Desired" => "false",
            "Progress" => "1.00000"
        },
                "Warden" => {
             "Desired" => "false",
            "Progress" => "1.00000"
        },
          "Maintainance" => {
             "Desired" => "false",
            "Progress" => "1.00000"
        },
              "Security" => {
             "Desired" => "false",
            "Progress" => "1.00000"
        },
                 "Legal" => {
             "Desired" => "false",
            "Progress" => "1.00000"
        },
          "MentalHealth" => {
             "Desired" => "false",
            "Progress" => "1.00000"
        },
               "Finance" => {
             "Desired" => "false",
            "Progress" => "1.00000"
        },
        "ReducePenalty1" => {
             "Desired" => "false",
            "Progress" => "1.00000"
        },
        "ReducePenalty2" => {
             "Desired" => "false",
            "Progress" => "1.00000"
        },
        "ReducePenalty3" => {
             "Desired" => "false",
            "Progress" => "1.00000"
        },
        "ReducePenalty4" => {
             "Desired" => "false",
            "Progress" => "1.00000"
        },
        "ReducePenalty5" => {
             "Desired" => "false",
            "Progress" => "1.00000"
        },
          "GuardPatrols" => {
             "Desired" => "true",
            "Progress" => "1.00000"
        },
          "SecurityRoom" => {
             "Desired" => "true",
            "Progress" => "1.00000"
        },
            "RiotGuards" => {
             "Desired" => "false",
            "Progress" => "1.00000"
        },
                "Health" => {
             "Desired" => "false",
            "Progress" => "1.00000"
        },
              "Cleaning" => {
             "Desired" => "false",
            "Progress" => "1.00000"
        },
        "GroundsKeeping" => {
             "Desired" => "false",
            "Progress" => "1.00000"
        },
                 "Clone" => {
             "Desired" => "false",
            "Progress" => "1.00000"
        }
    },
            "Construction" => {
        "Jobs" => {
             "Size" => "2",
            "[i 0]" => {
                    "Type" => "-1",
                "Material" => "12",
                    "PosX" => "0",
                    "PosY" => "0",
                   "SizeX" => "0",
                   "SizeY" => "0",
                  "Status" => "1",
                   "Speed" => "100.000",
                   "[i 0]" => {
                    "x" => "23",
                    "y" => "58"
                }
            },
            "[i 1]" => {
                    "Type" => "-1",
                "Material" => "12",
                    "PosX" => "0",
                    "PosY" => "0",
                   "SizeX" => "0",
                   "SizeY" => "0",
                  "Status" => "1",
                   "Speed" => "100.000",
                   "[i 0]" => {
                    "x" => "23",
                    "y" => "58"
                }
            }
        }
    },
               "Penalties" => {
           "Points" => "655.000",
        "Penalties" => {
             "Size" => "2",
            "[i 0]" => {
                     "Event" => "4",
                "ObjectId.i" => "335",
                "ObjectId.u" => "14395",
                      "Time" => "21476.1",
                 "Committed" => "true"
            },
            "[i 1]" => {
                     "Event" => "4",
                "ObjectId.i" => "445",
                "ObjectId.u" => "61428",
                      "Time" => "21467.4",
                 "Committed" => "true"
            }
        }
    },
                 "Sectors" => {
        "NextSectorId" => "3",
             "Sectors" => {
             "Size" => "62",
            "[i 0]" => {
                           "id" => "0",
                    "TopLeft.x" => "0",
                    "TopLeft.y" => "0",
                "BottomRight.x" => "99",
                "BottomRight.y" => "79",
                     "Centre.x" => "49.5000",
                     "Centre.y" => "33.5000",
                   "NumSquares" => "5310",
                     "Stations" => {
                    "Size" => "0"
                }
            },
            "[i 1]" => {
                           "id" => "67",
                    "TopLeft.x" => "37",
                    "TopLeft.y" => "53",
                "BottomRight.x" => "67",
                "BottomRight.y" => "61",
                     "Centre.x" => "52.5000",
                     "Centre.y" => "57.5000",
                       "Indoor" => "true",
                   "NumSquares" => "179",
                     "Stations" => {
                    "Size" => "0"
                }
            }
        }
    },
                  "Grants" => {
            "Grant_bootstraps" => {
            "Status" => "Completed"
        },
        "Grant_Administration" => {
            "Status" => "Completed"
        },
        "Grant_FirstCellBlock" => {
            "Status" => "Completed"
        },
                "Grant_Health" => {
            "Status" => "Completed"
        }
    },
                   "Gangs" => {
        "3538" => {
            "Gang" => "1",
             "Str" => "0.973333"
        },
        "3756" => {
            "Gang" => "1"
        },
        "3758" => {
            "Gang" => "1",
             "Str" => "0.559311"
        },
        "4976" => {
            "Gang" => "1",
             "Str" => "0.0591362"
        },
        "5179" => {
            "Gang" => "1",
             "Str" => "0.0271886"
        },
        "5270" => {
            "Gang" => "1",
             "Str" => "0.00722096"
        }
    }
}
  end

  subject { described_class.new savegame }

  it "parses the file correctly" do
    subject.tree.should eq(prison)
  end
end
