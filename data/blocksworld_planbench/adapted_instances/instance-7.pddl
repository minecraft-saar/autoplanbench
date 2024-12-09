

(define (problem BW-rand-4)
(:domain blocksworld-4ops)
(:objects red_block blue_block orange_block yellow_block )
(:init
(handempty)
(on red_block yellow_block)
(on blue_block orange_block)
(ontable orange_block)
(on yellow_block blue_block)
(clear red_block)
)
(:goal
(and
(on red_block orange_block))
)
)


