(define (problem typed-bomberman-rows2-cols2)
(:domain gold-miner-typed)
(:objects 
        loc_0 loc_3 
        loc_1 loc_2  - loc
)
(:init
(arm-empty)
(connected loc_0 loc_3)
(connected loc_1 loc_2)
(connected loc_0 loc_1)
(connected loc_3 loc_2)
(connected loc_3 loc_0)
(connected loc_2 loc_1)
(connected loc_1 loc_0)
(connected loc_2 loc_3)
(robot-at loc_0)
(clear loc_0)
(soft-rock-at loc_3)
(bomb-at loc_1)
(laser-at loc_1)
(clear loc_1)
(gold-at loc_2)
(soft-rock-at loc_2)
)
(:goal
(holds-gold)
)
)
