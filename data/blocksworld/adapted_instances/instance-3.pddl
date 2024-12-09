

(define (problem bw-rand-4)
(:domain blocksworld-4ops)
(:objects object_3 object_2 object_0 object_1 )
(:init
(handempty)
(ontable object_3)
(on object_2 object_0)
(on object_0 object_1)
(on object_1 object_3)
(clear object_2)
)
(:goal
(and
(on object_3 object_0)
(on object_1 object_3))
)
)


