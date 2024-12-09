

(define (problem BW-rand-8)
(:domain blocksworld-4ops)
(:objects b1 b2 b3 b4 b5 b6 b7 b8 )
(:init
(handempty)
(on b1 b5)
(ontable b2)
(ontable b3)
(on b4 b1)
(ontable b5)
(on b6 b7)
(on b7 b2)
(on b8 b4)
(clear b3)
(clear b6)
(clear b8)
)
(:goal
(and
(on b1 b6)
(on b3 b2)
(on b5 b3)
(on b6 b4)
(on b7 b1))
)
)


