

(define (problem BW-rand-4)
(:domain blocksworld-4ops)
(:objects red_block blue_block orange_block yellow_block )
(:init
(handempty)
(ontable red_block)
(on blue_block orange_block)
(on orange_block yellow_block)
(on yellow_block red_block)
(clear blue_block)
)
(:goal
(and
(on red_block orange_block)
(on yellow_block red_block))
)
)

