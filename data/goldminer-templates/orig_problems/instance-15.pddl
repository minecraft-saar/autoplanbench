(define (problem typed-bomberman-rows6-cols1)
(:domain gold-miner-typed)
(:objects 
        f0-0f 
        f1-0f 
        f2-0f 
        f3-0f 
        f4-0f 
        f5-0f  - LOC
)
(:init
(arm-empty)
(connected f0-0f f1-0f)
(connected f1-0f f2-0f)
(connected f2-0f f3-0f)
(connected f3-0f f4-0f)
(connected f4-0f f5-0f)
(connected f1-0f f0-0f)
(connected f2-0f f1-0f)
(connected f3-0f f2-0f)
(connected f4-0f f3-0f)
(connected f5-0f f4-0f)
(clear f0-0f)
(bomb-at f1-0f)
(laser-at f1-0f)
(clear f1-0f)
(clear f2-0f)
(robot-at f3-0f)
(clear f3-0f)
(gold-at f4-0f)
(soft-rock-at f4-0f)
(clear f5-0f)
)
(:goal
(holds-gold)
)
)
