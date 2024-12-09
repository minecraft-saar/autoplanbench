

(define (problem BW-rand-4)
(:domain blocksworld-4ops)
(:objects red_block blue_block orange_block yellow_block )
(:init
(handempty)
(ontable red_block)
(on blue_block yellow_block)
(on orange_block red_block)
(ontable yellow_block)
(clear blue_block)
(clear orange_block)
)
(:goal
(and
(on blue_block red_block)
(on orange_block yellow_block)
(on yellow_block blue_block))
)
)


