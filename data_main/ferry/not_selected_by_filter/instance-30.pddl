(define (problem ferry-l3-c2)
(:domain ferry)
(:objects object_0 object_1 object_2 
          object_3 object_4 
)
(:init
(location object_0)
(location object_1)
(location object_2)
(car object_3)
(car object_4)
(not-eq object_0 object_1)
(not-eq object_1 object_0)
(not-eq object_0 object_2)
(not-eq object_2 object_0)
(not-eq object_1 object_2)
(not-eq object_2 object_1)
(empty-ferry)
(at object_3 object_2)
(at object_4 object_2)
(at-ferry object_0)
)
(:goal
(and
(at object_3 object_1)
(at object_4 object_2)
)
)
)
