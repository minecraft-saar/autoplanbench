(define (problem ferry-l2-c3)
(:domain ferry)
(:objects object_0 object_4 
          object_1 object_3 object_2 
)
(:init
(location object_0)
(location object_4)
(car object_1)
(car object_3)
(car object_2)
(not-eq object_0 object_4)
(not-eq object_4 object_0)
(empty-ferry)
(at object_1 object_0)
(at object_3 object_0)
(at object_2 object_0)
(at-ferry object_4)
)
(:goal
(and
(at object_1 object_4)
(at object_3 object_0)
(at object_2 object_0)
)
)
)
