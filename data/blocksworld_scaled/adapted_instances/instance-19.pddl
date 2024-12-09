

(define (problem bw-rand-11)
(:domain blocksworld-4ops)
(:objects object_10 object_8 object_1 object_0 object_9 object_7 object_2 object_6 object_3 object_4 object_5 )
(:init
(handempty)
(ontable object_10)
(on object_8 object_5)
(ontable object_1)
(on object_0 object_10)
(ontable object_9)
(on object_7 object_9)
(on object_2 object_1)
(ontable object_6)
(on object_3 object_0)
(ontable object_4)
(on object_5 object_4)
(clear object_8)
(clear object_7)
(clear object_2)
(clear object_6)
(clear object_3)
)
(:goal
(and
(on object_10 object_0)
(on object_1 object_6)
(on object_0 object_9)
(on object_9 object_8)
(on object_7 object_2)
(on object_2 object_5)
(on object_6 object_4)
(on object_3 object_7)
(on object_4 object_10))
)
)


