

(define (problem BW-rand-10)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(handempty)
(on b1 b6)
(on b2 b9)
(ontable b3)
(on b4 b10)
(on b5 b3)
(ontable b6)
(on b7 b5)
(on b8 b7)
(on b9 b4)
(on b10 b8)
(clear b1)
(clear b2)
)
(:goal
(and
(on b1 b8)
(on b2 b1)
(on b4 b3)
(on b5 b9)
(on b8 b7)
(on b9 b2))
)
)


