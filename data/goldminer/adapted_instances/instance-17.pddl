(define (problem typed-bomberman-rows5-cols2)
(:domain gold-miner-typed)
(:objects 
        loc_3 loc_1 
        loc_8 loc_7 
        loc_9 loc_4 
        loc_2 loc_0 
        loc_6 loc_5  - loc
)
(:init
(arm-empty)
(connected loc_3 loc_1)
(connected loc_8 loc_7)
(connected loc_9 loc_4)
(connected loc_2 loc_0)
(connected loc_6 loc_5)
(connected loc_3 loc_8)
(connected loc_1 loc_7)
(connected loc_8 loc_9)
(connected loc_7 loc_4)
(connected loc_9 loc_2)
(connected loc_4 loc_0)
(connected loc_2 loc_6)
(connected loc_0 loc_5)
(connected loc_1 loc_3)
(connected loc_7 loc_8)
(connected loc_4 loc_9)
(connected loc_0 loc_2)
(connected loc_5 loc_6)
(connected loc_8 loc_3)
(connected loc_7 loc_1)
(connected loc_9 loc_8)
(connected loc_4 loc_7)
(connected loc_2 loc_9)
(connected loc_0 loc_4)
(connected loc_6 loc_2)
(connected loc_5 loc_0)
(clear loc_3)
(soft-rock-at loc_1)
(robot-at loc_8)
(clear loc_8)
(gold-at loc_7)
(soft-rock-at loc_7)
(clear loc_9)
(hard-rock-at loc_4)
(clear loc_2)
(hard-rock-at loc_0)
(bomb-at loc_6)
(laser-at loc_6)
(clear loc_6)
(soft-rock-at loc_5)
)
(:goal
(holds-gold)
)
)
