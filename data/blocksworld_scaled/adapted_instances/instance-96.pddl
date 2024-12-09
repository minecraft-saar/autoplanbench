

(define (problem bw-rand-10)
(:domain blocksworld-4ops)
(:objects object_5 object_7 object_9 object_0 object_4 object_8 object_2 object_6 object_3 object_1 )
(:init
(handempty)
(ontable object_5)
(on object_7 object_8)
(ontable object_9)
(on object_0 object_9)
(on object_4 object_6)
(on object_8 object_2)
(on object_2 object_0)
(ontable object_6)
(ontable object_3)
(on object_1 object_7)
(clear object_5)
(clear object_4)
(clear object_3)
(clear object_1)
)
(:goal
(and
(on object_7 object_8)
(on object_9 object_0)
(on object_0 object_4)
(on object_8 object_5)
(on object_2 object_3)
(on object_6 object_1)
(on object_3 object_7))
)
)


