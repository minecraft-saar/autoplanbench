(define (problem typed-bomberman-rows4-cols2)
(:domain gold-miner-typed)
(:objects 
        loc_2 loc_5 
        loc_1 loc_4 
        loc_0 loc_6 
        loc_7 loc_3  - loc
)
(:init
(arm-empty)
(connected loc_2 loc_5)
(connected loc_1 loc_4)
(connected loc_0 loc_6)
(connected loc_7 loc_3)
(connected loc_2 loc_1)
(connected loc_5 loc_4)
(connected loc_1 loc_0)
(connected loc_4 loc_6)
(connected loc_0 loc_7)
(connected loc_6 loc_3)
(connected loc_5 loc_2)
(connected loc_4 loc_1)
(connected loc_6 loc_0)
(connected loc_3 loc_7)
(connected loc_1 loc_2)
(connected loc_4 loc_5)
(connected loc_0 loc_1)
(connected loc_6 loc_4)
(connected loc_7 loc_0)
(connected loc_3 loc_6)
(clear loc_2)
(gold-at loc_5)
(soft-rock-at loc_5)
(clear loc_1)
(hard-rock-at loc_4)
(robot-at loc_0)
(clear loc_0)
(hard-rock-at loc_6)
(bomb-at loc_7)
(laser-at loc_7)
(clear loc_7)
(soft-rock-at loc_3)
)
(:goal
(holds-gold)
)
)