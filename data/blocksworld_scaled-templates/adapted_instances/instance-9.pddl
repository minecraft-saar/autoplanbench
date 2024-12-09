

(define (problem bw-rand-6)
(:domain blocksworld-4ops)
(:objects object_1 object_3 object_5 object_2 object_4 object_0 )
(:init
(handempty)
(ontable object_1)
(ontable object_3)
(ontable object_5)
(on object_2 object_3)
(ontable object_4)
(on object_0 object_4)
(clear object_1)
(clear object_5)
(clear object_2)
(clear object_0)
)
(:goal
(and
(on object_3 object_4)
(on object_2 object_5)
(on object_0 object_3))
)
)


