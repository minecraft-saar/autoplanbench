(define (problem typed-bomberman-rows2-cols3)
(:domain gold-miner-typed)
(:objects 
        loc_2 loc_3 loc_1 
        loc_4 loc_0 loc_5  - loc
)
(:init
(arm-empty)
(connected loc_2 loc_3)
(connected loc_3 loc_1)
(connected loc_4 loc_0)
(connected loc_0 loc_5)
(connected loc_2 loc_4)
(connected loc_3 loc_0)
(connected loc_1 loc_5)
(connected loc_3 loc_2)
(connected loc_1 loc_3)
(connected loc_0 loc_4)
(connected loc_5 loc_0)
(connected loc_4 loc_2)
(connected loc_0 loc_3)
(connected loc_5 loc_1)
(bomb-at loc_2)
(laser-at loc_2)
(clear loc_2)
(soft-rock-at loc_3)
(soft-rock-at loc_1)
(robot-at loc_4)
(clear loc_4)
(soft-rock-at loc_0)
(gold-at loc_5)
(soft-rock-at loc_5)
)
(:goal
(holds-gold)
)
)
