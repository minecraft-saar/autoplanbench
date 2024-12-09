

(define (problem bw-rand-12)
(:domain blocksworld-4ops)
(:objects object_6 object_4 object_5 object_8 object_7 object_11 object_2 object_0 object_1 object_9 object_3 object_10 )
(:init
(handempty)
(ontable object_6)
(on object_4 object_3)
(on object_5 object_6)
(on object_8 object_10)
(on object_7 object_0)
(ontable object_11)
(on object_2 object_11)
(ontable object_0)
(ontable object_1)
(on object_9 object_7)
(on object_3 object_5)
(on object_10 object_2)
(clear object_4)
(clear object_8)
(clear object_1)
(clear object_9)
)
(:goal
(and
(on object_6 object_7)
(on object_4 object_0)
(on object_5 object_4)
(on object_2 object_3)
(on object_0 object_2)
(on object_1 object_5)
(on object_10 object_1))
)
)


