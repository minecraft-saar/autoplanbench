

(define (problem bw-rand-4)
(:domain blocksworld-4ops)
(:objects object_1 object_2 object_0 object_3 )
(:init
(handempty)
(on object_1 object_3)
(on object_2 object_0)
(ontable object_0)
(on object_3 object_2)
(clear object_1)
)
(:goal
(and
(on object_1 object_0))
)
)


