(define (problem ferry-l2-c3)
(:domain ferry)
(:objects object_1 object_0 
          object_4 object_2 object_3 
)
(:init
(location object_1)
(location object_0)
(car object_4)
(car object_2)
(car object_3)
(not-eq object_1 object_0)
(not-eq object_0 object_1)
(empty-ferry)
(at object_4 object_0)
(at object_2 object_1)
(at object_3 object_0)
(at-ferry object_0)
)
(:goal
(and
(at object_4 object_1)
(at object_2 object_0)
(at object_3 object_1)
)
)
)
