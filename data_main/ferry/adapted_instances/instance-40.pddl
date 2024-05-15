(define (problem ferry-l3-c5)
(:domain ferry)
(:objects object_0 object_1 object_2 
          object_3 object_4 object_5 object_6 object_7 
)
(:init
(location object_0)
(location object_1)
(location object_2)
(car object_3)
(car object_4)
(car object_5)
(car object_6)
(car object_7)
(not-eq object_0 object_1)
(not-eq object_1 object_0)
(not-eq object_0 object_2)
(not-eq object_2 object_0)
(not-eq object_1 object_2)
(not-eq object_2 object_1)
(empty-ferry)
(at object_3 object_2)
(at object_4 object_2)
(at object_5 object_2)
(at object_6 object_1)
(at object_7 object_1)
(at-ferry object_1)
)
(:goal
(and
(at object_3 object_0)
(at object_4 object_2)
(at object_5 object_0)
(at object_6 object_1)
(at object_7 object_0)
)
)
)
