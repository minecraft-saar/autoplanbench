

(define (problem BW-rand-11)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 )
(:init
(handempty)
(ontable b1)
(on b2 b11)
(ontable b3)
(on b4 b1)
(ontable b5)
(on b6 b5)
(on b7 b3)
(ontable b8)
(on b9 b4)
(ontable b10)
(on b11 b10)
(clear b2)
(clear b6)
(clear b7)
(clear b8)
(clear b9)
)
(:goal
(and
(on b1 b4)
(on b3 b8)
(on b4 b5)
(on b5 b2)
(on b6 b7)
(on b7 b11)
(on b8 b10)
(on b9 b6)
(on b10 b1))
)
)


