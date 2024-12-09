

(define (problem BW-rand-12)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 )
(:init
(handempty)
(ontable b1)
(on b2 b11)
(on b3 b1)
(on b4 b12)
(on b5 b8)
(ontable b6)
(on b7 b6)
(ontable b8)
(ontable b9)
(on b10 b5)
(on b11 b3)
(on b12 b7)
(clear b2)
(clear b4)
(clear b9)
(clear b10)
)
(:goal
(and
(on b1 b5)
(on b2 b8)
(on b3 b2)
(on b7 b11)
(on b8 b7)
(on b9 b3)
(on b12 b9))
)
)


