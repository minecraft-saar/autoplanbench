

(define (problem bw-rand-8)
(:domain blocksworld-4ops)
(:objects object_6 object_1 object_3 object_2 object_7 object_0 object_4 object_5 )
(:init
(handempty)
(on object_6 object_3)
(on object_1 object_6)
(on object_3 object_2)
(on object_2 object_7)
(on object_7 object_4)
(ontable object_0)
(on object_4 object_0)
(on object_5 object_1)
(clear object_5)
)
(:goal
(and
(on object_3 object_0)
(on object_2 object_3)
(on object_0 object_1)
(on object_4 object_6))
)
)


