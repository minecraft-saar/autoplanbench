

(define (problem bw-rand-12)
(:domain blocksworld-4ops)
(:objects object_10 object_5 object_6 object_2 object_0 object_8 object_9 object_11 object_3 object_1 object_7 object_4 )
(:init
(handempty)
(ontable object_10)
(on object_5 object_2)
(on object_6 object_1)
(on object_2 object_10)
(ontable object_0)
(on object_8 object_4)
(on object_9 object_8)
(on object_11 object_3)
(on object_3 object_0)
(on object_1 object_5)
(ontable object_7)
(on object_4 object_6)
(clear object_9)
(clear object_11)
(clear object_7)
)
(:goal
(and
(on object_10 object_2)
(on object_5 object_6)
(on object_2 object_3)
(on object_0 object_9)
(on object_8 object_0)
(on object_11 object_10)
(on object_1 object_7)
(on object_7 object_8)
(on object_4 object_1))
)
)


