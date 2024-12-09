

(define (problem BW-rand-4)
(:domain blocksworld-4ops)
(:objects red_block blue_block orange_block yellow_block )
(:init
(handempty)
(on red_block blue_block)
(on blue_block orange_block)
(on orange_block yellow_block)
(ontable yellow_block)
(clear red_block)
)
(:goal
(and
(on blue_block orange_block)
(on orange_block yellow_block)
(on yellow_block red_block))
)
)


