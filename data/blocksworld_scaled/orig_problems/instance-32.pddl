

(define (problem BW-rand-15)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 )
(:init
(handempty)
(on b1 b6)
(ontable b2)
(ontable b3)
(on b4 b9)
(on b5 b8)
(on b6 b7)
(on b7 b13)
(on b8 b10)
(on b9 b15)
(on b10 b12)
(on b11 b5)
(on b12 b2)
(on b13 b14)
(on b14 b4)
(ontable b15)
(clear b1)
(clear b3)
(clear b11)
)
(:goal
(and
(on b2 b13)
(on b3 b10)
(on b4 b9)
(on b5 b8)
(on b6 b15)
(on b7 b14)
(on b9 b1)
(on b10 b5)
(on b11 b12)
(on b12 b6)
(on b13 b3)
(on b14 b4))
)
)


