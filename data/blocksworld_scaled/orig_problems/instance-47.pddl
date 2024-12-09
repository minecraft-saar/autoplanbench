

(define (problem BW-rand-8)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 )
(:init
(handempty)
(on b1 b3)
(on b2 b1)
(on b3 b4)
(on b4 b5)
(on b5 b7)
(ontable b6)
(on b7 b6)
(on b8 b2)
(clear b8)
)
(:goal
(and
(on b3 b6)
(on b4 b3)
(on b6 b2)
(on b7 b1))
)
)


