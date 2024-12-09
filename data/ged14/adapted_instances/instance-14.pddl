;; original sequence 1: (1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 -76 -75 -74 -73 -72 -71 -70 -69 -68 -67 -66 -65 -64 -63 -62 -61 -60 -59 -58 -57 -56 -39 -38 -37 49 50 51 52 53 40 -35 -34 -33 -32 -31 -30 -29 -28 -27 -26 -44 -43 -42 -41 45 46 47 48 -36 -25 -24 -23 -22 -21 -20 -19 -18 -17 -16 -90 -89 -88 -87 -86 -85 -84 77 78 79 80 81 82 83 91 92 93 94 95 96 -55 -54 -105 -104 -103 -102 -101 -100 -99 -98 -97)
;; original sequence 2: (1 2 3 4 5 6 7 8 9 10 11 -60 -59 -58 -57 -56 -53 -52 -51 -50 -49 37 38 39 40 -35 -34 -33 -32 -31 -30 -29 -28 12 13 14 15 -76 -75 -74 -73 -72 -71 -70 -69 -68 -67 -66 -65 -64 -63 -62 -61 -27 -26 -44 -43 -42 -41 45 46 47 48 -36 54 -25 -24 -23 -22 -21 -20 -19 -18 -17 -16 -90 -89 -88 -87 -86 -85 -84 77 78 79 80 81 82 83 91 92 93 94 95 96 -55 -105 -104 -103 -102 -101 -100 -99 -98 -97)
;; simplified sequence 1: (109 107 113 112 111 108 106 -54 110)
;; simplified sequence 2: (109 113 -112 111 107 108 54 106 110)
;; common subsequences: (((-25 -24 -23 -22 -21 -20 -19 -18 -17 -16 -90 -89 -88 -87 -86 -85 -84 77 78 79 80 81 82 83 91 92 93 94 95 96 -55) . 106) ((12 13 14 15 -76 -75 -74 -73 -72 -71 -70 -69 -68 -67 -66 -65 -64 -63 -62 -61) . 107) ((-27 -26 -44 -43 -42 -41 45 46 47 48 -36) . 108) ((1 2 3 4 5 6 7 8 9 10 11) . 109) ((-105 -104 -103 -102 -101 -100 -99 -98 -97) . 110) ((40 -35 -34 -33 -32 -31 -30 -29 -28) . 111) ((-39 -38 -37 49 50 51 52 53) . 112) ((-60 -59 -58 -57 -56) . 113))
;; #safe insertions/deletions: 0
;; sequence 1 (names): ((normal object_4) (normal object_1) (normal object_5) (normal object_2) (normal object_6) (normal object_0) (normal object_8) (inverted object_3) (normal object_7))
;; sequence 2 (names): ((normal object_4) (normal object_5) (inverted object_2) (normal object_6) (normal object_1) (normal object_0) (normal object_3) (normal object_8) (normal object_7))

(define (problem symphyandra-to-wahlenbergia)
        (:domain genome-edit-distance)
        (:objects object_5 object_2 object_6 object_7 object_4 object_0 object_1 object_8 object_3)
        (:init (normal object_4) (normal object_1) (normal object_5) (normal object_2)
               (normal object_6) (normal object_0) (normal object_8) (inverted object_3)
               (normal object_7) (present object_4) (present object_1)
               (present object_5) (present object_2) (present object_6)
               (present object_0) (present object_8) (present object_3)
               (present object_7) (cw object_7 object_4) (cw object_3 object_7)
               (cw object_8 object_3) (cw object_0 object_8) (cw object_6 object_0)
               (cw object_2 object_6) (cw object_5 object_2) (cw object_1 object_5)
               (cw object_4 object_1) (idle))
        (:goal (and (normal object_4) (normal object_5) (inverted object_2)
                    (normal object_6) (normal object_1) (normal object_0)
                    (normal object_3) (normal object_8) (normal object_7)
                    (cw object_7 object_4) (cw object_8 object_7) (cw object_3 object_8)
                    (cw object_0 object_3) (cw object_1 object_0) (cw object_6 object_1)
                    (cw object_2 object_6) (cw object_5 object_2) (cw object_4 object_5)))
        )