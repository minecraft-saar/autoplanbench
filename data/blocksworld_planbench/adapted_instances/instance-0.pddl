

(define (problem BW-rand-4)
(:domain blocksworld-4ops)
(:objects red_block blue_block orange_block yellow_block )
(:init
(handempty)
(ontable red_block)
(on blue_block orange_block)
(ontable orange_block)
(ontable yellow_block)
(clear red_block)
(clear blue_block)
(clear yellow_block)
)
(:goal
(and
(on orange_block blue_block))
)
)
