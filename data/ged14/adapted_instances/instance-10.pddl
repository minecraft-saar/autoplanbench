;; original sequence 1: (1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 -76 -75 -74 -73 -72 -71 -70 -69 -68 -67 -66 -65 -64 -63 -62 -61 -60 -59 -58 -57 -56 -53 -52 -51 -50 -49 -39 -38 -37 28 29 30 31 32 33 34 35 40 26 27 -44 -43 -42 -41 45 46 47 48 -36 -25 -24 -23 -22 -21 -20 -19 -18 -17 -16 -90 -89 -88 -87 -86 -85 -84 77 78 79 80 81 82 83 91 92 93 94 95 96 -55 -54 -105 -104 -103 -102 -101 -100 -99 -98 -97)
;; original sequence 2: (1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 -76 -75 -74 -73 -72 -71 -70 -69 -68 -67 -66 -65 -64 -63 -62 -61 -60 -59 -58 -57 -56 -53 -52 -51 -50 -49 -39 -38 -37 40 -35 -34 -33 -32 -31 -30 -29 -28 -27 -26 -44 -43 -42 -41 45 46 47 48 -36 -25 -24 -23 -22 -21 -20 -19 -18 -17 -16 -90 -89 -88 -87 -86 -85 -84 77 78 79 80 81 82 83 91 92 93 94 95 96 -55 -54 -105 -104 -103 -102 -101 -100 -99 -98 -97)
;; simplified sequence 1: (107 108 40 109 106)
;; simplified sequence 2: (107 40 -108 -109 106)
;; common subsequences: (((-44 -43 -42 -41 45 46 47 48 -36 -25 -24 -23 -22 -21 -20 -19 -18 -17 -16 -90 -89 -88 -87 -86 -85 -84 77 78 79 80 81 82 83 91 92 93 94 95 96 -55 -54 -105 -104 -103 -102 -101 -100 -99 -98 -97) . 106) ((1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 -76 -75 -74 -73 -72 -71 -70 -69 -68 -67 -66 -65 -64 -63 -62 -61 -60 -59 -58 -57 -56 -53 -52 -51 -50 -49 -39 -38 -37) . 107) ((28 29 30 31 32 33 34 35) . 108) ((26 27) . 109))
;; #safe insertions/deletions: 0
;; sequence 1 (names): ((normal object_4) (normal object_1) (normal object_2) (normal object_0) (normal object_3))
;; sequence 2 (names): ((normal object_4) (normal object_2) (inverted object_1) (inverted object_0) (normal object_3))

(define (problem adenophora-to-campanula)
        (:domain genome-edit-distance)
        (:objects object_0 object_1 object_4 object_3 object_2)
        (:init (normal object_4) (normal object_1) (normal object_2) (normal object_0)
               (normal object_3) (present object_4) (present object_1)
               (present object_2) (present object_0) (present object_3)
               (cw object_3 object_4) (cw object_0 object_3) (cw object_2 object_0)
               (cw object_1 object_2) (cw object_4 object_1) (idle))
        (:goal (and (normal object_4) (normal object_2) (inverted object_1)
                    (inverted object_0) (normal object_3) (cw object_3 object_4)
                    (cw object_0 object_3) (cw object_1 object_0) (cw object_2 object_1)
                    (cw object_4 object_2)))
        )