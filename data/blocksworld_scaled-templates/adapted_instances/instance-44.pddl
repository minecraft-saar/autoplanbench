

(define (problem bw-rand-8)
(:domain blocksworld-4ops)
(:objects object_1 object_4 object_7 object_3 object_2 object_6 object_5 object_0 )
(:init
(handempty)
(ontable object_1)
(on object_4 object_6)
(ontable object_7)
(on object_3 object_0)
(on object_2 object_4)
(on object_6 object_3)
(on object_5 object_2)
(ontable object_0)
(clear object_1)
(clear object_7)
(clear object_5)
)
(:goal
(and
(on object_1 object_0)
(on object_4 object_3)
(on object_3 object_1)
(on object_2 object_4)
(on object_6 object_7)
(on object_5 object_6)
(on object_0 object_5))
)
)


