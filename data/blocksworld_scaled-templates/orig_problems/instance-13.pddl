

(define (problem BW-rand-11)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(handempty)
(on b1 b11)
(on b2 b3)
(on b3 b10)
(on b4 b6)
(on b5 b8)
(on b6 b7)
(ontable b7)
(on b8 b1)
(on b9 b2)
(ontable b10)
(on b11 b4)
(clear b5)
(clear b9)
)
(:goal
(and
(on b1 b5)
(on b3 b1)
(on b5 b9)
(on b7 b11)
(on b9 b6)
(on b10 b3)
(on b11 b2))
)
)


