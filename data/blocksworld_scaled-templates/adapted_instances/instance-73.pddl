

(define (problem bw-rand-9)
(:domain blocksworld-4ops)
(:objects object_1 object_2 object_4 object_6 object_8 object_5 object_3 object_0 object_7 )
(:init
(handempty)
(ontable object_1)
(ontable object_2)
(on object_4 object_7)
(on object_6 object_3)
(on object_8 object_1)
(on object_5 object_0)
(on object_3 object_2)
(on object_0 object_4)
(on object_7 object_8)
(clear object_6)
(clear object_5)
)
(:goal
(and
(on object_1 object_7)
(on object_4 object_3)
(on object_6 object_1)
(on object_8 object_0)
(on object_5 object_4)
(on object_0 object_5)
(on object_7 object_2))
)
)


