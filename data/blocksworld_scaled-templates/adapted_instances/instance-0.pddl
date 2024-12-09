

(define (problem bw-rand-4)
(:domain blocksworld-4ops)
(:objects object_1 object_3 object_2 object_0 )
(:init
(handempty)
(ontable object_1)
(on object_3 object_2)
(ontable object_2)
(ontable object_0)
(clear object_1)
(clear object_3)
(clear object_0)
)
(:goal
(and
(on object_2 object_3))
)
)
