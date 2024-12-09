

(define (problem BW-rand-11)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(handempty)
(ontable b1)
(on b2 b7)
(on b3 b4)
(ontable b4)
(ontable b5)
(on b6 b2)
(on b7 b11)
(ontable b8)
(on b9 b5)
(on b10 b8)
(on b11 b1)
(clear b3)
(clear b6)
(clear b9)
(clear b10)
)
(:goal
(and
(on b1 b3)
(on b3 b5)
(on b5 b6)
(on b6 b9)
(on b8 b10)
(on b9 b8)
(on b10 b7)
(on b11 b2))
)
)


