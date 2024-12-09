

(define (problem bw-rand-9)
(:domain blocksworld-4ops)
(:objects object_4 object_8 object_2 object_1 object_3 object_6 object_5 object_0 object_7 )
(:init
(handempty)
(on object_4 object_3)
(on object_8 object_0)
(on object_2 object_6)
(on object_1 object_5)
(ontable object_3)
(on object_6 object_7)
(on object_5 object_2)
(ontable object_0)
(ontable object_7)
(clear object_4)
(clear object_8)
(clear object_1)
)
(:goal
(and
(on object_2 object_7)
(on object_1 object_3)
(on object_3 object_0)
(on object_5 object_2)
(on object_0 object_4)
(on object_7 object_8))
)
)


