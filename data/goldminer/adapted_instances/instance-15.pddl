(define (problem typed-bomberman-rows6-cols1)
(:domain gold-miner-typed)
(:objects 
        loc_4 
        loc_5 
        loc_2 
        loc_3 
        loc_1 
        loc_0  - loc
)
(:init
(arm-empty)
(connected loc_4 loc_5)
(connected loc_5 loc_2)
(connected loc_2 loc_3)
(connected loc_3 loc_1)
(connected loc_1 loc_0)
(connected loc_5 loc_4)
(connected loc_2 loc_5)
(connected loc_3 loc_2)
(connected loc_1 loc_3)
(connected loc_0 loc_1)
(clear loc_4)
(bomb-at loc_5)
(laser-at loc_5)
(clear loc_5)
(clear loc_2)
(robot-at loc_3)
(clear loc_3)
(gold-at loc_1)
(soft-rock-at loc_1)
(clear loc_0)
)
(:goal
(holds-gold)
)
)
