(define (problem ferry-l3-c6)
(:domain ferry)
(:objects object_3 object_1 object_8 
          object_0 object_6 object_5 object_2 object_7 object_4 
)
(:init
(location object_3)
(location object_1)
(location object_8)
(car object_0)
(car object_6)
(car object_5)
(car object_2)
(car object_7)
(car object_4)
(not-eq object_3 object_1)
(not-eq object_1 object_3)
(not-eq object_3 object_8)
(not-eq object_8 object_3)
(not-eq object_1 object_8)
(not-eq object_8 object_1)
(empty-ferry)
(at object_0 object_8)
(at object_6 object_1)
(at object_5 object_8)
(at object_2 object_8)
(at object_7 object_8)
(at object_4 object_3)
(at-ferry object_3)
)
(:goal
(and
(at object_0 object_3)
(at object_6 object_1)
(at object_5 object_1)
(at object_2 object_1)
(at object_7 object_3)
(at object_4 object_3)
)
)
)