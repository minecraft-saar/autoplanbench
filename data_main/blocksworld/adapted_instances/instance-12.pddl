

(define (problem BW-rand-4)
(:domain blocksworld-4ops)
(:objects object_0 object_1 object_2 object_3 )
(:init
(handempty)
(ontable object_0)
(on object_1 object_3)
(ontable object_2)
(ontable object_3)
(clear object_0)
(clear object_1)
(clear object_2)
)
(:goal
(and
(on object_1 object_2)
(on object_3 object_0))
)
)


