

(define (problem bw-rand-5)
(:domain blocksworld-4ops)
(:objects object_0 object_3 object_4 object_1 object_2 )
(:init
(handempty)
(on object_0 object_4)
(ontable object_3)
(on object_4 object_3)
(on object_1 object_0)
(on object_2 object_1)
(clear object_2)
)
(:goal
(and
(on object_3 object_2)
(on object_1 object_0))
)
)


