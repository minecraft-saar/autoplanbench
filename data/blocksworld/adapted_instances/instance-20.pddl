

(define (problem bw-rand-4)
(:domain blocksworld-4ops)
(:objects object_1 object_2 object_3 object_0 )
(:init
(handempty)
(ontable object_1)
(on object_2 object_0)
(on object_3 object_1)
(ontable object_0)
(clear object_2)
(clear object_3)
)
(:goal
(and
(on object_2 object_1)
(on object_3 object_0)
(on object_0 object_2))
)
)


