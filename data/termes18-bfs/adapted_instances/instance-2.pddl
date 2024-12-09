(define (problem termes-00112-0036-4x3x3-random_towers_4x3_3_2_8)
(:domain termes)
; termes-00112-0036-4x3x3-random_towers_4x3_3_2_8
; initial state:
;  0   0  r0d  0
;  0   0   0   0
;  0   0   0   0
; goal state:
;  0   0   0   3
;  0   0   3   0
;  0   0   0   0
; maximal height: 3
(:objects
    numb_1 - numb
    numb_0 - numb
    numb_3 - numb
    numb_2 - numb
    position_11 - position
    position_3 - position
    position_7 - position
    position_4 - position
    position_1 - position
    position_9 - position
    position_10 - position
    position_2 - position
    position_0 - position
    position_8 - position
    position_5 - position
    position_6 - position
)
(:init
    (height position_11 numb_1)
    (height position_3 numb_1)
    (height position_7 numb_1)
    (height position_4 numb_1)
    (height position_1 numb_1)
    (height position_9 numb_1)
    (height position_10 numb_1)
    (height position_2 numb_1)
    (height position_0 numb_1)
    (height position_8 numb_1)
    (height position_5 numb_1)
    (height position_6 numb_1)
    (at position_10)
    (succ numb_0 numb_1)
    (succ numb_3 numb_0)
    (succ numb_2 numb_3)
    (neighbor position_11 position_4)
    (neighbor position_11 position_3)
    (neighbor position_3 position_1)
    (neighbor position_3 position_11)
    (neighbor position_3 position_7)
    (neighbor position_7 position_9)
    (neighbor position_7 position_3)
    (neighbor position_4 position_11)
    (neighbor position_4 position_10)
    (neighbor position_4 position_1)
    (neighbor position_1 position_3)
    (neighbor position_1 position_2)
    (neighbor position_1 position_4)
    (neighbor position_1 position_9)
    (neighbor position_9 position_7)
    (neighbor position_9 position_0)
    (neighbor position_9 position_1)
    (neighbor position_10 position_4)
    (neighbor position_10 position_8)
    (neighbor position_10 position_2)
    (neighbor position_2 position_1)
    (neighbor position_2 position_5)
    (neighbor position_2 position_10)
    (neighbor position_2 position_0)
    (neighbor position_0 position_9)
    (neighbor position_0 position_6)
    (neighbor position_0 position_2)
    (neighbor position_8 position_10)
    (neighbor position_8 position_5)
    (neighbor position_5 position_2)
    (neighbor position_5 position_8)
    (neighbor position_5 position_6)
    (neighbor position_6 position_0)
    (neighbor position_6 position_5)
    (is-depot position_10)
)
(:goal
(and
    (height position_11 numb_1)
    (height position_3 numb_1)
    (height position_7 numb_1)
    (height position_4 numb_1)
    (height position_1 numb_1)
    (height position_9 numb_1)
    (height position_10 numb_1)
    (height position_2 numb_2)
    (height position_0 numb_1)
    (height position_8 numb_2)
    (height position_5 numb_1)
    (height position_6 numb_1)
    (not (has-block))
)
)
)