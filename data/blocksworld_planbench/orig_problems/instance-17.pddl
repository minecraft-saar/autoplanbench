

(define (problem BW-rand-4)
(:domain blocksworld-4ops)
(:objects a b c d )
(:init
(handempty)
(on a d)
(ontable b)
(ontable c)
(on d c)
(clear a)
(clear b)
)
(:goal
(and
(on b c)
(on c d))
)
)


