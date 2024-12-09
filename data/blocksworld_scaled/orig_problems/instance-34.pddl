

(define (problem BW-rand-8)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 )
(:init
(handempty)
(on b1 b5)
(ontable b2)
(on b3 b1)
(on b4 b8)
(on b5 b4)
(on b6 b7)
(ontable b7)
(on b8 b2)
(clear b3)
(clear b6)
)
(:goal
(and
(on b5 b2)
(on b6 b3)
(on b7 b6)
(on b8 b1))
)
)


