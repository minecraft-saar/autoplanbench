

(define (problem bw-rand-4)
(:domain blocksworld-4ops)
(:objects object_0 object_1 object_3 object_2 )
(:init
(handempty)
(ontable object_0)
(ontable object_1)
(on object_3 object_2)
(on object_2 object_0)
(clear object_1)
(clear object_3)
)
(:goal
(and
(on object_0 object_3)
(on object_1 object_0)
(on object_2 object_1))
)
)


