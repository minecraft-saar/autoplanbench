(define (problem typed-bomberman-rows3-cols3)
(:domain gold-miner-typed)
(:objects 
        loc_3 loc_8 loc_2 
        loc_6 loc_4 loc_0 
        loc_1 loc_5 loc_7  - loc
)
(:init
(arm-empty)
(connected loc_3 loc_8)
(connected loc_8 loc_2)
(connected loc_6 loc_4)
(connected loc_4 loc_0)
(connected loc_1 loc_5)
(connected loc_5 loc_7)
(connected loc_3 loc_6)
(connected loc_8 loc_4)
(connected loc_2 loc_0)
(connected loc_6 loc_1)
(connected loc_4 loc_5)
(connected loc_0 loc_7)
(connected loc_8 loc_3)
(connected loc_2 loc_8)
(connected loc_4 loc_6)
(connected loc_0 loc_4)
(connected loc_5 loc_1)
(connected loc_7 loc_5)
(connected loc_6 loc_3)
(connected loc_4 loc_8)
(connected loc_0 loc_2)
(connected loc_1 loc_6)
(connected loc_5 loc_4)
(connected loc_7 loc_0)
(clear loc_3)
(soft-rock-at loc_8)
(gold-at loc_2)
(soft-rock-at loc_2)
(robot-at loc_6)
(clear loc_6)
(hard-rock-at loc_4)
(soft-rock-at loc_0)
(bomb-at loc_1)
(laser-at loc_1)
(clear loc_1)
(hard-rock-at loc_5)
(hard-rock-at loc_7)
)
(:goal
(holds-gold)
)
)
