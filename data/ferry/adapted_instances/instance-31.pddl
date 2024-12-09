(define (problem ferry-l3-c2)
(:domain ferry)
(:objects object_3 object_4 object_2 
          object_0 object_1 
)
(:init
(location object_3)
(location object_4)
(location object_2)
(car object_0)
(car object_1)
(not-eq object_3 object_4)
(not-eq object_4 object_3)
(not-eq object_3 object_2)
(not-eq object_2 object_3)
(not-eq object_4 object_2)
(not-eq object_2 object_4)
(empty-ferry)
(at object_0 object_2)
(at object_1 object_2)
(at-ferry object_4)
)
(:goal
(and
(at object_0 object_4)
(at object_1 object_4)
)
)
)
