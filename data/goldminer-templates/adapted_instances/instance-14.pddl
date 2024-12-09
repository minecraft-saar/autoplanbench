(define (problem typed-bomberman-rows6-cols1)
(:domain gold-miner-typed)
(:objects 
        loc_3 
        loc_0 
        loc_1 
        loc_2 
        loc_5 
        loc_4  - loc
)
(:init
(arm-empty)
(connected loc_3 loc_0)
(connected loc_0 loc_1)
(connected loc_1 loc_2)
(connected loc_2 loc_5)
(connected loc_5 loc_4)
(connected loc_0 loc_3)
(connected loc_1 loc_0)
(connected loc_2 loc_1)
(connected loc_5 loc_2)
(connected loc_4 loc_5)
(bomb-at loc_3)
(laser-at loc_3)
(clear loc_3)
(robot-at loc_0)
(clear loc_0)
(clear loc_1)
(clear loc_2)
(clear loc_5)
(gold-at loc_4)
(soft-rock-at loc_4)
)
(:goal
(holds-gold)
)
)
