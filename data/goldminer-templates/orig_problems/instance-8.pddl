(define (problem typed-bomberman-rows2-cols3)
(:domain gold-miner-typed)
(:objects 
        f0-0f f0-1f f0-2f 
        f1-0f f1-1f f1-2f  - LOC
)
(:init
(arm-empty)
(connected f0-0f f0-1f)
(connected f0-1f f0-2f)
(connected f1-0f f1-1f)
(connected f1-1f f1-2f)
(connected f0-0f f1-0f)
(connected f0-1f f1-1f)
(connected f0-2f f1-2f)
(connected f0-1f f0-0f)
(connected f0-2f f0-1f)
(connected f1-1f f1-0f)
(connected f1-2f f1-1f)
(connected f1-0f f0-0f)
(connected f1-1f f0-1f)
(connected f1-2f f0-2f)
(bomb-at f0-0f)
(laser-at f0-0f)
(clear f0-0f)
(soft-rock-at f0-1f)
(gold-at f0-2f)
(soft-rock-at f0-2f)
(robot-at f1-0f)
(clear f1-0f)
(soft-rock-at f1-1f)
(hard-rock-at f1-2f)
)
(:goal
(holds-gold)
)
)