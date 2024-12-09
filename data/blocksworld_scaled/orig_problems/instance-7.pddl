

(define (problem BW-rand-12)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(handempty)
(ontable b1)
(on b2 b4)
(on b3 b10)
(on b4 b1)
(ontable b5)
(on b6 b12)
(on b7 b6)
(on b8 b9)
(on b9 b5)
(on b10 b2)
(ontable b11)
(on b12 b3)
(clear b7)
(clear b8)
(clear b11)
)
(:goal
(and
(on b1 b4)
(on b2 b3)
(on b4 b9)
(on b5 b7)
(on b6 b5)
(on b8 b1)
(on b10 b11)
(on b11 b6)
(on b12 b10))
)
)


