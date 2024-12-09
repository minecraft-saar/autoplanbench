

(define (problem BW-rand-4)
(:domain blocksworld-4ops)
(:objects red_block blue_block orange_block yellow_block )
(:init
(handempty)
(on red_block yellow_block)
(ontable blue_block)
(ontable orange_block)
(on yellow_block orange_block)
(clear red_block)
(clear blue_block)
)
(:goal
(and
(on blue_block orange_block)
(on orange_block yellow_block))
)
)


