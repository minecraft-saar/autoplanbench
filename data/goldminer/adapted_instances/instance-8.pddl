(define (problem typed-bomberman-rows2-cols3)
(:domain gold-miner-typed)
(:objects 
        loc_0 loc_1 loc_2 
        loc_3 loc_4 loc_5  - LOC
)
(:init
(arm-empty)
(connected loc_0 loc_1)
(connected loc_1 loc_2)
(connected loc_3 loc_4)
(connected loc_4 loc_5)
(connected loc_0 loc_3)
(connected loc_1 loc_4)
(connected loc_2 loc_5)
(connected loc_1 loc_0)
(connected loc_2 loc_1)
(connected loc_4 loc_3)
(connected loc_5 loc_4)
(connected loc_3 loc_0)
(connected loc_4 loc_1)
(connected loc_5 loc_2)
(bomb-at loc_0)
(laser-at loc_0)
(clear loc_0)
(soft-rock-at loc_1)
(gold-at loc_2)
(soft-rock-at loc_2)
(robot-at loc_3)
(clear loc_3)
(soft-rock-at loc_4)
(hard-rock-at loc_5)
)
(:goal
(holds-gold)
)
)
