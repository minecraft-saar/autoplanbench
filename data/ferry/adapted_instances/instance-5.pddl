(define (problem ferry-l3-c2)
(:domain ferry)
(:objects object_2 object_0 object_3 
          object_1 object_4 
)
(:init
(location object_2)
(location object_0)
(location object_3)
(car object_1)
(car object_4)
(not-eq object_2 object_0)
(not-eq object_0 object_2)
(not-eq object_2 object_3)
(not-eq object_3 object_2)
(not-eq object_0 object_3)
(not-eq object_3 object_0)
(empty-ferry)
(at object_1 object_2)
(at object_4 object_2)
(at-ferry object_3)
)
(:goal
(and
(at object_1 object_3)
(at object_4 object_3)
)
)
)
