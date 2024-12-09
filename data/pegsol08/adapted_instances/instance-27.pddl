;; the following problem is taken from the problem library of solipeg 2.2:
;; 
;; solipeg, a classic marble puzzle game for the
;; psion series 3a, 3c and siena
;; version 2.2 (and 2.2 lite)
;; copyright (c) 1993, 1994, 1995, 1996 j cade roux
;; 
;; this program is free software; you can redistribute it and/or modify
;; it under the terms of the gnu general public license as published by
;; the free software foundation; either version 2 of the license, or
;; (at your option) any later version.
;; 
;; this program is distributed in the hope that it will be useful,
;; but without any warranty; without even the implied warranty of
;; merchantability or fitness for a particular purpose.  see the
;; gnu general public license for more details.
;; 
;; you should have received a copy of the gnu general public license
;; along with this program; if not, write to the free software
;; foundation, inc., 675 mass ave, cambridge, ma 02139, usa.
;; 
;; (see http://ourworld.compuserve.com/homepages/cade/psionsof.htm,
;; http://ourworld.compuserve.com/homepages/cade/solsrc22.zip)
;; 
;; the solipeg problem library in turn is derived from the booklet
;; "problems in puzzle-peg" included in the game puzzle-peg (third
;; edition, 1924, lubbers & bell mfg. co.,clinton, iowa, usa).
;; 
;; original problem number and name: "84 scatter"
;; 
;; number of pegs:                  23
;; number of diagonal moves needed: 0
;; 
;; problem description:
;; "*" denotes "occupied"
;; "o" denotes "free"
;; 
;;     o * o     
;;     * * *     
;; * * o * o * * 
;; o * * * o * * 
;; * * * * o * * 
;;     o * *     
;;     o * o     
;; 
;; target position = (3,3)
;; 
(define (problem pegsolitaire-sequential-084)
    (:domain pegsolitaire-sequential)
    (:objects
        location_24 - location
        location_6 - location
        location_32 - location
        location_13 - location
        location_14 - location
        location_0 - location
        location_20 - location
        location_5 - location
        location_30 - location
        location_25 - location
        location_1 - location
        location_3 - location
        location_31 - location
        location_16 - location
        location_10 - location
        location_8 - location
        location_26 - location
        location_18 - location
        location_12 - location
        location_28 - location
        location_11 - location
        location_15 - location
        location_7 - location
        location_23 - location
        location_22 - location
        location_2 - location
        location_29 - location
        location_4 - location
        location_27 - location
        location_19 - location
        location_21 - location
        location_17 - location
        location_9 - location
    )
    (:init
        (move-ended)
        (in-line location_24 location_6 location_32)
        (in-line location_32 location_6 location_24)
        (in-line location_24 location_13 location_30)
        (in-line location_30 location_13 location_24)
        (in-line location_6 location_14 location_25)
        (in-line location_25 location_14 location_6)
        (in-line location_32 location_0 location_1)
        (in-line location_1 location_0 location_32)
        (in-line location_13 location_14 location_0)
        (in-line location_0 location_14 location_13)
        (in-line location_13 location_30 location_8)
        (in-line location_8 location_30 location_13)
        (in-line location_14 location_25 location_26)
        (in-line location_26 location_25 location_14)
        (in-line location_0 location_1 location_18)
        (in-line location_18 location_1 location_0)
        (in-line location_20 location_5 location_30)
        (in-line location_30 location_5 location_20)
        (in-line location_20 location_16 location_11)
        (in-line location_11 location_16 location_20)
        (in-line location_5 location_30 location_25)
        (in-line location_25 location_30 location_5)
        (in-line location_5 location_10 location_15)
        (in-line location_15 location_10 location_5)
        (in-line location_30 location_25 location_1)
        (in-line location_1 location_25 location_30)
        (in-line location_30 location_8 location_7)
        (in-line location_7 location_8 location_30)
        (in-line location_25 location_1 location_3)
        (in-line location_3 location_1 location_25)
        (in-line location_25 location_26 location_23)
        (in-line location_23 location_26 location_25)
        (in-line location_1 location_3 location_31)
        (in-line location_31 location_3 location_1)
        (in-line location_1 location_18 location_22)
        (in-line location_22 location_18 location_1)
        (in-line location_3 location_12 location_2)
        (in-line location_2 location_12 location_3)
        (in-line location_31 location_28 location_29)
        (in-line location_29 location_28 location_31)
        (in-line location_16 location_10 location_8)
        (in-line location_8 location_10 location_16)
        (in-line location_10 location_8 location_26)
        (in-line location_26 location_8 location_10)
        (in-line location_8 location_26 location_18)
        (in-line location_18 location_26 location_8)
        (in-line location_8 location_7 location_4)
        (in-line location_4 location_7 location_8)
        (in-line location_26 location_18 location_12)
        (in-line location_12 location_18 location_26)
        (in-line location_26 location_23 location_27)
        (in-line location_27 location_23 location_26)
        (in-line location_18 location_12 location_28)
        (in-line location_28 location_12 location_18)
        (in-line location_18 location_22 location_19)
        (in-line location_19 location_22 location_18)
        (in-line location_11 location_15 location_7)
        (in-line location_7 location_15 location_11)
        (in-line location_15 location_7 location_23)
        (in-line location_23 location_7 location_15)
        (in-line location_7 location_23 location_22)
        (in-line location_22 location_23 location_7)
        (in-line location_7 location_4 location_21)
        (in-line location_21 location_4 location_7)
        (in-line location_23 location_22 location_2)
        (in-line location_2 location_22 location_23)
        (in-line location_23 location_27 location_17)
        (in-line location_17 location_27 location_23)
        (in-line location_22 location_2 location_29)
        (in-line location_29 location_2 location_22)
        (in-line location_22 location_19 location_9)
        (in-line location_9 location_19 location_22)
        (in-line location_4 location_27 location_19)
        (in-line location_19 location_27 location_4)
        (in-line location_21 location_17 location_9)
        (in-line location_9 location_17 location_21)
        (free location_24)
        (free location_32)
        (free location_30)
        (free location_1)
        (free location_16)
        (free location_18)
        (free location_22)
        (free location_4)
        (free location_21)
        (free location_9)
        (occupied location_6)
        (occupied location_13)
        (occupied location_14)
        (occupied location_0)
        (occupied location_20)
        (occupied location_5)
        (occupied location_25)
        (occupied location_3)
        (occupied location_31)
        (occupied location_10)
        (occupied location_8)
        (occupied location_26)
        (occupied location_12)
        (occupied location_28)
        (occupied location_11)
        (occupied location_15)
        (occupied location_7)
        (occupied location_23)
        (occupied location_2)
        (occupied location_29)
        (occupied location_27)
        (occupied location_19)
        (occupied location_17)
    )
    (:goal (and
        (free location_24)
        (free location_6)
        (free location_32)
        (free location_13)
        (free location_14)
        (free location_0)
        (free location_20)
        (free location_5)
        (free location_30)
        (free location_25)
        (free location_1)
        (free location_3)
        (free location_31)
        (free location_16)
        (free location_10)
        (free location_8)
        (free location_18)
        (free location_12)
        (free location_28)
        (free location_11)
        (free location_15)
        (free location_7)
        (free location_23)
        (free location_22)
        (free location_2)
        (free location_29)
        (free location_4)
        (free location_27)
        (free location_19)
        (free location_21)
        (free location_17)
        (free location_9)
        (occupied location_26)
           )
    )
    
)
