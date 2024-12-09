

(define (problem BW-rand-9)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 )
(:init
(handempty)
(ontable b1)
(ontable b2)
(on b3 b9)
(on b4 b7)
(on b5 b1)
(on b6 b8)
(on b7 b2)
(on b8 b3)
(on b9 b5)
(clear b4)
(clear b6)
)
(:goal
(and
(on b1 b9)
(on b3 b7)
(on b4 b1)
(on b5 b8)
(on b6 b3)
(on b8 b6)
(on b9 b2))
)
)


