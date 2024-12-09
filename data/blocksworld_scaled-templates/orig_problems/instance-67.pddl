

(define (problem BW-rand-12)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(handempty)
(on b1 b7)
(ontable b2)
(on b3 b2)
(on b4 b1)
(on b5 b12)
(on b6 b11)
(on b7 b3)
(on b8 b4)
(ontable b9)
(on b10 b5)
(on b11 b9)
(ontable b12)
(clear b6)
(clear b8)
(clear b10)
)
(:goal
(and
(on b1 b5)
(on b2 b7)
(on b5 b6)
(on b6 b8)
(on b7 b3)
(on b8 b9)
(on b10 b12)
(on b11 b10))
)
)


