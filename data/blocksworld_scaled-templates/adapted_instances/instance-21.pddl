

(define (problem bw-rand-13)
(:domain blocksworld-4ops)
(:objects object_10 object_11 object_0 object_5 object_6 object_3 object_1 object_9 object_12 object_7 object_8 object_2 object_4 )
(:init
(handempty)
(ontable object_10)
(on object_11 object_9)
(on object_0 object_6)
(ontable object_5)
(on object_6 object_3)
(ontable object_3)
(on object_1 object_4)
(ontable object_9)
(on object_12 object_7)
(on object_7 object_5)
(on object_8 object_1)
(on object_2 object_0)
(on object_4 object_12)
(clear object_10)
(clear object_11)
(clear object_8)
(clear object_2)
)
(:goal
(and
(on object_10 object_12)
(on object_5 object_6)
(on object_6 object_7)
(on object_9 object_5)
(on object_12 object_0)
(on object_2 object_1)
(on object_4 object_8))
)
)


