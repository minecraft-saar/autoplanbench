(define (problem typed-bomberman-rows3-cols4)
(:domain gold-miner-typed)
(:objects 
        loc_2 loc_11 loc_3 loc_4 
        loc_5 loc_1 loc_6 loc_9 
        loc_0 loc_8 loc_7 loc_10  - loc
)
(:init
(arm-empty)
(connected loc_2 loc_11)
(connected loc_11 loc_3)
(connected loc_3 loc_4)
(connected loc_5 loc_1)
(connected loc_1 loc_6)
(connected loc_6 loc_9)
(connected loc_0 loc_8)
(connected loc_8 loc_7)
(connected loc_7 loc_10)
(connected loc_2 loc_5)
(connected loc_11 loc_1)
(connected loc_3 loc_6)
(connected loc_4 loc_9)
(connected loc_5 loc_0)
(connected loc_1 loc_8)
(connected loc_6 loc_7)
(connected loc_9 loc_10)
(connected loc_11 loc_2)
(connected loc_3 loc_11)
(connected loc_4 loc_3)
(connected loc_1 loc_5)
(connected loc_6 loc_1)
(connected loc_9 loc_6)
(connected loc_8 loc_0)
(connected loc_7 loc_8)
(connected loc_10 loc_7)
(connected loc_5 loc_2)
(connected loc_1 loc_11)
(connected loc_6 loc_3)
(connected loc_9 loc_4)
(connected loc_0 loc_5)
(connected loc_8 loc_1)
(connected loc_7 loc_6)
(connected loc_10 loc_9)
(clear loc_2)
(soft-rock-at loc_11)
(hard-rock-at loc_3)
(hard-rock-at loc_4)
(bomb-at loc_5)
(laser-at loc_5)
(clear loc_5)
(soft-rock-at loc_1)
(hard-rock-at loc_6)
(hard-rock-at loc_9)
(robot-at loc_0)
(clear loc_0)
(soft-rock-at loc_8)
(soft-rock-at loc_7)
(gold-at loc_10)
(soft-rock-at loc_10)
)
(:goal
(holds-gold)
)
)
