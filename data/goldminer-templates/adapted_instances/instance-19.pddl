(define (problem typed-bomberman-rows5-cols2)
(:domain gold-miner-typed)
(:objects 
        loc_5 loc_1 
        loc_7 loc_9 
        loc_3 loc_6 
        loc_2 loc_4 
        loc_8 loc_0  - loc
)
(:init
(arm-empty)
(connected loc_5 loc_1)
(connected loc_7 loc_9)
(connected loc_3 loc_6)
(connected loc_2 loc_4)
(connected loc_8 loc_0)
(connected loc_5 loc_7)
(connected loc_1 loc_9)
(connected loc_7 loc_3)
(connected loc_9 loc_6)
(connected loc_3 loc_2)
(connected loc_6 loc_4)
(connected loc_2 loc_8)
(connected loc_4 loc_0)
(connected loc_1 loc_5)
(connected loc_9 loc_7)
(connected loc_6 loc_3)
(connected loc_4 loc_2)
(connected loc_0 loc_8)
(connected loc_7 loc_5)
(connected loc_9 loc_1)
(connected loc_3 loc_7)
(connected loc_6 loc_9)
(connected loc_2 loc_3)
(connected loc_4 loc_6)
(connected loc_8 loc_2)
(connected loc_0 loc_4)
(bomb-at loc_5)
(laser-at loc_5)
(clear loc_5)
(soft-rock-at loc_1)
(robot-at loc_7)
(clear loc_7)
(gold-at loc_9)
(soft-rock-at loc_9)
(clear loc_3)
(hard-rock-at loc_6)
(clear loc_2)
(soft-rock-at loc_4)
(clear loc_8)
(soft-rock-at loc_0)
)
(:goal
(holds-gold)
)
)