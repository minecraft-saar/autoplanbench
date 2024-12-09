

(define (problem bw-rand-4)
(:domain blocksworld-4ops)
(:objects object_2 object_3 object_0 object_1 )
(:init
(handempty)
(ontable object_2)
(on object_3 object_0)
(ontable object_0)
(ontable object_1)
(clear object_2)
(clear object_3)
(clear object_1)
)
(:goal
(and
(on object_0 object_3))
)
)
