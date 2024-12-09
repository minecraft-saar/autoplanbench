

(define (problem BW-rand-4)
(:domain blocksworld-4ops)
(:objects red_block blue_block orange_block yellow_block )
(:init
(handempty)
(ontable red_block)
(ontable blue_block)
(on orange_block blue_block)
(on yellow_block red_block)
(clear orange_block)
(clear yellow_block)
)
(:goal
(and
(on red_block yellow_block)
(on blue_block orange_block))
)
)


