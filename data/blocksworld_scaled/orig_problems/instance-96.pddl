

(define (problem BW-rand-10)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 )
(:init
(handempty)
(ontable b1)
(on b2 b6)
(ontable b3)
(on b4 b3)
(on b5 b8)
(on b6 b7)
(on b7 b4)
(ontable b8)
(ontable b9)
(on b10 b2)
(clear b1)
(clear b5)
(clear b9)
(clear b10)
)
(:goal
(and
(on b2 b6)
(on b3 b4)
(on b4 b5)
(on b6 b1)
(on b7 b9)
(on b8 b10)
(on b9 b2))
)
)


