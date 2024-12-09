

(define (problem bw-rand-8)
(:domain blocksworld-4ops)
(:objects object_3 object_0 object_2 object_5 object_7 object_6 object_1 object_4 )
(:init
(handempty)
(on object_3 object_0)
(ontable object_0)
(on object_2 object_6)
(on object_5 object_1)
(on object_7 object_4)
(on object_6 object_7)
(on object_1 object_2)
(on object_4 object_3)
(clear object_5)
)
(:goal
(and
(on object_3 object_1)
(on object_7 object_0)
(on object_6 object_5)
(on object_1 object_4)
(on object_4 object_7))
)
)


