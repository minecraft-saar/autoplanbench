(define (problem ferry-l3-c6)
(:domain ferry)
(:objects object_5 object_1 object_2 
          object_4 object_6 object_7 object_3 object_0 object_8 
)
(:init
(location object_5)
(location object_1)
(location object_2)
(car object_4)
(car object_6)
(car object_7)
(car object_3)
(car object_0)
(car object_8)
(not-eq object_5 object_1)
(not-eq object_1 object_5)
(not-eq object_5 object_2)
(not-eq object_2 object_5)
(not-eq object_1 object_2)
(not-eq object_2 object_1)
(empty-ferry)
(at object_4 object_5)
(at object_6 object_5)
(at object_7 object_2)
(at object_3 object_2)
(at object_0 object_2)
(at object_8 object_5)
(at-ferry object_2)
)
(:goal
(and
(at object_4 object_2)
(at object_6 object_1)
(at object_7 object_2)
(at object_3 object_5)
(at object_0 object_2)
(at object_8 object_5)
)
)
)
