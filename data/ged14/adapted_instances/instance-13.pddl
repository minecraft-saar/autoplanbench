;; original sequence 1: (1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 -76 -75 -74 -73 -72 -71 -70 -69 -68 -67 -66 -65 -64 -63 -62 -61 -60 -59 -58 -57 -56 -39 -38 -37 49 50 51 52 53 40 -35 -34 -33 -32 -31 -30 -29 -28 -27 -26 -44 -43 -42 -41 45 46 47 48 -36 -25 -24 -23 -22 -21 -20 -19 -18 -17 -16 -90 -89 -88 -87 -86 -85 -84 77 78 79 80 81 82 83 91 92 93 94 95 96 -55 -54 -105 -104 -103 -102 -101 -100 -99 -98 -97)
;; original sequence 2: (1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 -76 -75 -74 -73 -72 -71 -70 -69 -68 -67 -66 -65 -64 -63 -62 -61 -60 -59 -58 -57 -56 -53 -52 -51 -50 -49 -39 -38 -37 28 29 30 31 32 33 34 35 40 26 27 -44 -43 -42 -41 45 46 47 48 -36 -25 -24 -23 -22 -21 -20 -19 -18 -17 -16 -90 -89 -88 -87 -86 -85 -84 77 78 79 80 81 82 83 91 92 93 94 95 96 -55 -54 -105 -104 -103 -102 -101 -100 -99 -98 -97)
;; simplified sequence 1: (107 110 109 40 108 111 106)
;; simplified sequence 2: (107 -109 110 -108 40 -111 106)
;; common subsequences: (((-44 -43 -42 -41 45 46 47 48 -36 -25 -24 -23 -22 -21 -20 -19 -18 -17 -16 -90 -89 -88 -87 -86 -85 -84 77 78 79 80 81 82 83 91 92 93 94 95 96 -55 -54 -105 -104 -103 -102 -101 -100 -99 -98 -97) . 106) ((1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 -76 -75 -74 -73 -72 -71 -70 -69 -68 -67 -66 -65 -64 -63 -62 -61 -60 -59 -58 -57 -56) . 107) ((-35 -34 -33 -32 -31 -30 -29 -28) . 108) ((49 50 51 52 53) . 109) ((-39 -38 -37) . 110) ((-27 -26) . 111))
;; #safe insertions/deletions: 0
;; sequence 1 (names): ((normal object_2) (normal object_4) (normal object_5) (normal object_3) (normal object_6) (normal object_0) (normal object_1))
;; sequence 2 (names): ((normal object_2) (inverted object_5) (normal object_4) (inverted object_6) (normal object_3) (inverted object_0) (normal object_1))

(define (problem symphyandra-to-adenophora)
        (:domain genome-edit-distance)
        (:objects object_0 object_4 object_5 object_6 object_2 object_1 object_3)
        (:init (normal object_2) (normal object_4) (normal object_5) (normal object_3)
               (normal object_6) (normal object_0) (normal object_1) (present object_2)
               (present object_4) (present object_5) (present object_3)
               (present object_6) (present object_0) (present object_1)
               (cw object_1 object_2) (cw object_0 object_1) (cw object_6 object_0)
               (cw object_3 object_6) (cw object_5 object_3) (cw object_4 object_5)
               (cw object_2 object_4) (idle))
        (:goal (and (normal object_2) (inverted object_5) (normal object_4)
                    (inverted object_6) (normal object_3) (inverted object_0)
                    (normal object_1) (cw object_1 object_2) (cw object_0 object_1)
                    (cw object_3 object_0) (cw object_6 object_3) (cw object_4 object_6)
                    (cw object_5 object_4) (cw object_2 object_5)))
        )