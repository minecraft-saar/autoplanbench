

(define (problem bw-rand-4)
(:domain blocksworld-4ops)
(:objects object_0 object_2 object_1 object_3 )
(:init
(handempty)
(on object_0 object_2)
(ontable object_2)
(ontable object_1)
(on object_3 object_1)
(clear object_0)
(clear object_3)
)
(:goal
(and
(on object_1 object_0))
)
)



