

(define (problem bw-rand-4)
(:domain blocksworld-4ops)
(:objects object_2 object_3 object_1 object_0 )
(:init
(handempty)
(ontable object_2)
(on object_3 object_1)
(ontable object_1)
(ontable object_0)
(clear object_2)
(clear object_3)
(clear object_0)
)
(:goal
(and
(on object_1 object_3))
)
)
