(define (problem ferry-l3-c5)
(:domain ferry)
(:objects object_5 object_2 object_0 
          object_7 object_4 object_3 object_1 object_6 
)
(:init
(location object_5)
(location object_2)
(location object_0)
(car object_7)
(car object_4)
(car object_3)
(car object_1)
(car object_6)
(not-eq object_5 object_2)
(not-eq object_2 object_5)
(not-eq object_5 object_0)
(not-eq object_0 object_5)
(not-eq object_2 object_0)
(not-eq object_0 object_2)
(empty-ferry)
(at object_7 object_0)
(at object_4 object_0)
(at object_3 object_0)
(at object_1 object_2)
(at object_6 object_2)
(at-ferry object_2)
)
(:goal
(and
(at object_7 object_5)
(at object_4 object_0)
(at object_3 object_5)
(at object_1 object_2)
(at object_6 object_5)
)
)
)