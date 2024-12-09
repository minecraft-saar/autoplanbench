

(define (problem BW-rand-8)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 )
(:init
(handempty)
(ontable b1)
(on b2 b6)
(ontable b3)
(on b4 b8)
(on b5 b2)
(on b6 b4)
(on b7 b5)
(ontable b8)
(clear b1)
(clear b3)
(clear b7)
)
(:goal
(and
(on b1 b8)
(on b2 b4)
(on b4 b1)
(on b5 b2)
(on b6 b3)
(on b7 b6)
(on b8 b7))
)
)


