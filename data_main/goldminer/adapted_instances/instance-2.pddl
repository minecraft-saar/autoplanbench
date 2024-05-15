(define (problem typed-bomberman-rows2-cols2)
(:domain gold-miner-typed)
(:objects 
        loc_0 loc_1 
        loc_2 loc_3  - LOC
)
(:init
(arm-empty)
(connected loc_0 loc_1)
(connected loc_2 loc_3)
(connected loc_0 loc_2)
(connected loc_1 loc_3)
(connected loc_1 loc_0)
(connected loc_3 loc_2)
(connected loc_2 loc_0)
(connected loc_3 loc_1)
(bomb-at loc_0)
(laser-at loc_0)
(clear loc_0)
(hard-rock-at loc_1)
(robot-at loc_2)
(clear loc_2)
(gold-at loc_3)
(soft-rock-at loc_3)
)
(:goal
(holds-gold)
)
)
