

(define (problem BW-rand-9)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(handempty)
(on b1 b5)
(on b2 b8)
(on b3 b6)
(on b4 b7)
(ontable b5)
(on b6 b9)
(on b7 b3)
(ontable b8)
(ontable b9)
(clear b1)
(clear b2)
(clear b4)
)
(:goal
(and
(on b3 b9)
(on b4 b5)
(on b5 b8)
(on b7 b3)
(on b8 b1)
(on b9 b2))
)
)


