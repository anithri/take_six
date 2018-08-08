class Card < ActiveHash::Base
  field :id
  field :name
  field :worker_ids

  create id: 1,
         name: "Test Card #1",
         worker_ids: [14, 11]

  create id: 2,
         name: "Test Card #2",
         worker_ids: [11, 14]

  create id: 3,
         name: "Test Card #3",
         worker_ids: [13, 11]

  create id: 4,
         name: "Test Card #4",
         worker_ids: [11, 13]

  create id: 5,
         name: "Test Card #5",
         worker_ids: [12, 11]

  create id: 6,
         name: "Test Card #6",
         worker_ids: [11, 12]

  create id: 7,
         name: "Test Card #7",
         worker_ids: [11, 14]

  create id: 8,
         name: "Test Card #8",
         worker_ids: [14, 11]

  create id: 9,
         name: "Test Card #9",
         worker_ids: [13, 14]

  create id: 10,
         name: "Test Card #10",
         worker_ids: [14, 13]

  create id: 11,
         name: "Test Card #11",
         worker_ids: [12, 14]

  create id: 12,
         name: "Test Card #12",
         worker_ids: [14, 12]

  create id: 13,
         name: "Test Card #13",
         worker_ids: [11, 13]

  create id: 14,
         name: "Test Card #14",
         worker_ids: [13, 11]

  create id: 15,
         name: "Test Card #15",
         worker_ids: [14, 13]

  create id: 16,
         name: "Test Card #16",
         worker_ids: [13, 14]

  create id: 17,
         name: "Test Card #17",
         worker_ids: [12, 13]

  create id: 18,
         name: "Test Card #18",
         worker_ids: [13, 12]

  create id: 19,
         name: "Test Card #19",
         worker_ids: [11, 12]

  create id: 20,
         name: "Test Card #20",
         worker_ids: [12, 11]

  create id: 21,
         name: "Test Card #21",
         worker_ids: [14, 12]

  create id: 22,
         name: "Test Card #22",
         worker_ids: [12, 14]

  create id: 23,
         name: "Test Card #23",
         worker_ids: [13, 12]

  create id: 24,
         name: "Test Card #24",
         worker_ids: [12, 13]

  create id: 25,
         name: "Test Card #25",
         worker_ids: [11, 14, 14]

  create id: 26,
         name: "Test Card #26",
         worker_ids: [11, 14, 13]

  create id: 27,
         name: "Test Card #27",
         worker_ids: [11, 14, 12]

  create id: 28,
         name: "Test Card #28",
         worker_ids: [11, 13, 14]

  create id: 29,
         name: "Test Card #29",
         worker_ids: [11, 13, 13]

  create id: 30,
         name: "Test Card #30",
         worker_ids: [11, 13, 12]

  create id: 31,
         name: "Test Card #31",
         worker_ids: [11, 12, 14]

  create id: 32,
         name: "Test Card #32",
         worker_ids: [11, 12, 13]

  create id: 33,
         name: "Test Card #33",
         worker_ids: [11, 12, 12]

  create id: 34,
         name: "Test Card #34",
         worker_ids: [14, 11, 11]

  create id: 35,
         name: "Test Card #35",
         worker_ids: [14, 11, 13]

  create id: 36,
         name: "Test Card #36",
         worker_ids: [14, 11, 12]

  create id: 37,
         name: "Test Card #37",
         worker_ids: [14, 13, 11]

  create id: 38,
         name: "Test Card #38",
         worker_ids: [14, 13, 13]

  create id: 39,
         name: "Test Card #39",
         worker_ids: [14, 13, 12]

  create id: 40,
         name: "Test Card #40",
         worker_ids: [14, 12, 11]

  create id: 41,
         name: "Test Card #41",
         worker_ids: [14, 12, 13]

  create id: 42,
         name: "Test Card #42",
         worker_ids: [14, 12, 12]

  create id: 43,
         name: "Test Card #43",
         worker_ids: [13, 11, 11]

  create id: 44,
         name: "Test Card #44",
         worker_ids: [13, 11, 14]

  create id: 45,
         name: "Test Card #45",
         worker_ids: [13, 11, 12]

  create id: 46,
         name: "Test Card #46",
         worker_ids: [13, 14, 11]

  create id: 47,
         name: "Test Card #47",
         worker_ids: [13, 14, 14]

  create id: 48,
         name: "Test Card #48",
         worker_ids: [13, 14, 12]

  create id: 49,
         name: "Test Card #49",
         worker_ids: [13, 12, 11]

  create id: 50,
         name: "Test Card #50",
         worker_ids: [13, 12, 14]

  create id: 51,
         name: "Test Card #51",
         worker_ids: [13, 12, 12]

  create id: 52,
         name: "Test Card #52",
         worker_ids: [12, 11, 11]

  create id: 53,
         name: "Test Card #53",
         worker_ids: [12, 11, 14]

  create id: 54,
         name: "Test Card #54",
         worker_ids: [12, 11, 13]

  create id: 55,
         name: "Test Card #55",
         worker_ids: [12, 14, 11]

  create id: 56,
         name: "Test Card #56",
         worker_ids: [12, 14, 14]

  create id: 57,
         name: "Test Card #57",
         worker_ids: [12, 14, 13]

  create id: 58,
         name: "Test Card #58",
         worker_ids: [12, 13, 11]

  create id: 59,
         name: "Test Card #59",
         worker_ids: [12, 13, 14]

  create id: 60,
         name: "Test Card #60",
         worker_ids: [12, 13, 13]

  def workers
    worker_ids.map{|w_id| Worker.find(w_id)}
  end
end
