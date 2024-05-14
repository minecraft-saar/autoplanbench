(define (problem ferry-l2-c3)
(:domain ferry)
(:objects object_0 object_1 
          object_2 object_3 object_4 
)
(:init
(location object_0)
(location object_1)
(car object_2)
(car object_3)
(car object_4)
(not-eq object_0 object_1)
(not-eq object_1 object_0)
(empty-ferry)
(at object_2 object_0)
(at object_3 object_0)
(at object_4 object_1)
(at-ferry object_1)
)
(:goal
(and
(at object_2 object_1)
(at object_3 object_0)
(at object_4 object_0)
)
)
)
