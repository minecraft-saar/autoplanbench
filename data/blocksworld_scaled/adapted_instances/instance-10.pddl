

(define (problem bw-rand-10)
(:domain blocksworld-4ops)
(:objects object_8 object_9 object_4 object_3 object_5 object_6 object_0 object_1 object_2 object_7 )
(:init
(handempty)
(on object_8 object_7)
(on object_9 object_8)
(on object_4 object_2)
(on object_3 object_6)
(on object_5 object_9)
(on object_6 object_5)
(ontable object_0)
(ontable object_1)
(on object_2 object_3)
(on object_7 object_0)
(clear object_4)
(clear object_1)
)
(:goal
(and
(on object_8 object_1)
(on object_9 object_0)
(on object_4 object_5)
(on object_3 object_6)
(on object_1 object_3)
(on object_2 object_8)
(on object_7 object_9))
)
)


