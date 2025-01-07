;; original sequence 1: (1 2 3 4 5 6 7 8 9 10 11 -60 -59 -58 -57 -56 -53 -52 -51 -50 -49 37 38 39 40 -35 -34 -33 -32 -31 -30 -29 -28 12 13 14 15 -76 -75 -74 -73 -72 -71 -70 -69 -68 -67 -66 -65 -64 -63 -62 -61 -27 -26 -44 -43 -42 -41 45 46 47 48 -36 54 -25 -24 -23 -22 -21 -20 -19 -18 -17 -16 -90 -89 -88 -87 -86 -85 -84 77 78 79 80 81 82 83 91 92 93 94 95 96 -55 -105 -104 -103 -102 -101 -100 -99 -98 -97)
;; original sequence 2: (1 2 3 4 5 6 7 8 9 10 49 50 51 52 53 28 29 30 31 32 33 34 35 -40 -39 -38 -37 -60 -59 -58 -57 -56 11 12 13 14 15 -76 -75 -74 -73 -72 -71 -70 -69 -68 -67 -66 -65 -64 -63 -62 -61 -27 -26 -44 -43 -42 -41 45 46 47 48 -36 54 -25 -24 -23 -22 -21 -20 -19 -18 -17 -16 -90 -89 -88 -87 -86 -85 77 78 79 80 81 82 83 84 91 92 93 94 95 96 -55 -105 -104 -103 -102 -101 -100 -99 -98 -97)
;; simplified sequence 1: (109 11 111 112 108 106 -84 110 107)
;; simplified sequence 2: (109 -112 -108 111 11 106 110 84 107)
;; common subsequences: (((12 13 14 15 -76 -75 -74 -73 -72 -71 -70 -69 -68 -67 -66 -65 -64 -63 -62 -61 -27 -26 -44 -43 -42 -41 45 46 47 48 -36 54 -25 -24 -23 -22 -21 -20 -19 -18 -17 -16 -90 -89 -88 -87 -86 -85) . 106) ((91 92 93 94 95 96 -55 -105 -104 -103 -102 -101 -100 -99 -98 -97) . 107) ((37 38 39 40 -35 -34 -33 -32 -31 -30 -29 -28) . 108) ((1 2 3 4 5 6 7 8 9 10) . 109) ((77 78 79 80 81 82 83) . 110) ((-60 -59 -58 -57 -56) . 111) ((-53 -52 -51 -50 -49) . 112))
;; #safe insertions/deletions: 0
;; sequence 1 (names): ((NORMAL SUB4) (NORMAL G11) (NORMAL SUB6) (NORMAL SUB7) (NORMAL SUB3) (NORMAL SUB1) (INVERTED G84) (NORMAL SUB5) (NORMAL SUB2))
;; sequence 2 (names): ((NORMAL SUB4) (INVERTED SUB7) (INVERTED SUB3) (NORMAL SUB6) (NORMAL G11) (NORMAL SUB1) (NORMAL SUB5) (NORMAL G84) (NORMAL SUB2))

(DEFINE (PROBLEM WAHLENBERGIA-TO-MERCIERA)
        (:DOMAIN GENOME-EDIT-DISTANCE)
        (:OBJECTS SUB7 SUB6 SUB5 SUB4 SUB3 SUB2 SUB1 G84 G11)
        (:INIT (NORMAL SUB4) (NORMAL G11) (NORMAL SUB6) (NORMAL SUB7)
               (NORMAL SUB3) (NORMAL SUB1) (INVERTED G84) (NORMAL SUB5)
               (NORMAL SUB2) (PRESENT SUB4) (PRESENT G11)
               (PRESENT SUB6) (PRESENT SUB7) (PRESENT SUB3)
               (PRESENT SUB1) (PRESENT G84) (PRESENT SUB5)
               (PRESENT SUB2) (CW SUB2 SUB4) (CW SUB5 SUB2)
               (CW G84 SUB5) (CW SUB1 G84) (CW SUB3 SUB1)
               (CW SUB7 SUB3) (CW SUB6 SUB7) (CW G11 SUB6)
               (CW SUB4 G11) (IDLE))
        (:GOAL (AND (NORMAL SUB4) (INVERTED SUB7) (INVERTED SUB3)
                    (NORMAL SUB6) (NORMAL G11) (NORMAL SUB1)
                    (NORMAL SUB5) (NORMAL G84) (NORMAL SUB2)
                    (CW SUB2 SUB4) (CW G84 SUB2) (CW SUB5 G84)
                    (CW SUB1 SUB5) (CW G11 SUB1) (CW SUB6 G11)
                    (CW SUB3 SUB6) (CW SUB7 SUB3) (CW SUB4 SUB7)))
        )