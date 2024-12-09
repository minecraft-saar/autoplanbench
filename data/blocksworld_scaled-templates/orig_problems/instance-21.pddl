

(define (problem BW-rand-13)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 )
(:init
(handempty)
(ontable b1)
(on b2 b8)
(on b3 b5)
(ontable b4)
(on b5 b6)
(ontable b6)
(on b7 b13)
(ontable b8)
(on b9 b10)
(on b10 b4)
(on b11 b7)
(on b12 b3)
(on b13 b9)
(clear b1)
(clear b2)
(clear b11)
(clear b12)
)
(:goal
(and
(on b1 b9)
(on b4 b5)
(on b5 b10)
(on b8 b4)
(on b9 b3)
(on b12 b7)
(on b13 b11))
)
)


