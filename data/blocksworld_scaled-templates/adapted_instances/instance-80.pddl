

(define (problem bw-rand-10)
(:domain blocksworld-4ops)
(:objects object_1 object_9 object_0 object_3 object_4 object_5 object_2 object_8 object_7 object_6 )
(:init
(handempty)
(on object_1 object_5)
(on object_9 object_7)
(ontable object_0)
(on object_3 object_6)
(on object_4 object_0)
(ontable object_5)
(on object_2 object_4)
(on object_8 object_2)
(on object_7 object_3)
(on object_6 object_8)
(clear object_1)
(clear object_9)
)
(:goal
(and
(on object_1 object_8)
(on object_9 object_1)
(on object_3 object_0)
(on object_4 object_7)
(on object_8 object_2)
(on object_7 object_9))
)
)


