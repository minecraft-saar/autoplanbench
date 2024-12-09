

(define (problem bw-rand-11)
(:domain blocksworld-4ops)
(:objects object_5 object_4 object_6 object_2 object_10 object_3 object_0 object_8 object_1 object_7 object_9 )
(:init
(handempty)
(ontable object_5)
(on object_4 object_0)
(on object_6 object_2)
(ontable object_2)
(ontable object_10)
(on object_3 object_4)
(on object_0 object_9)
(ontable object_8)
(on object_1 object_10)
(on object_7 object_8)
(on object_9 object_5)
(clear object_6)
(clear object_3)
(clear object_1)
(clear object_7)
)
(:goal
(and
(on object_5 object_6)
(on object_6 object_10)
(on object_10 object_3)
(on object_3 object_1)
(on object_8 object_7)
(on object_1 object_8)
(on object_7 object_0)
(on object_9 object_4))
)
)


