

(define (problem BW-rand-10)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(handempty)
(on b1 b10)
(on b2 b1)
(on b3 b9)
(on b4 b6)
(on b5 b2)
(on b6 b5)
(ontable b7)
(ontable b8)
(on b9 b4)
(on b10 b7)
(clear b3)
(clear b8)
)
(:goal
(and
(on b1 b8)
(on b2 b7)
(on b3 b5)
(on b4 b6)
(on b8 b4)
(on b9 b1)
(on b10 b2))
)
)


