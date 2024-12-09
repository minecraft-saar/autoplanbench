

(define (problem bw-rand-4)
(:domain blocksworld-4ops)
(:objects object_2 object_3 object_1 object_0 )
(:init
(handempty)
(on object_2 object_1)
(ontable object_3)
(on object_1 object_3)
(on object_0 object_2)
(clear object_0)
)
(:goal
(and
(on object_2 object_0)
(on object_0 object_3))
)
)


