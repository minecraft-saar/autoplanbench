(define (problem ferry-l3-c4)
(:domain ferry)
(:objects object_1 object_5 object_4 
          object_3 object_2 object_0 object_6 
)
(:init
(location object_1)
(location object_5)
(location object_4)
(car object_3)
(car object_2)
(car object_0)
(car object_6)
(not-eq object_1 object_5)
(not-eq object_5 object_1)
(not-eq object_1 object_4)
(not-eq object_4 object_1)
(not-eq object_5 object_4)
(not-eq object_4 object_5)
(empty-ferry)
(at object_3 object_1)
(at object_2 object_1)
(at object_0 object_4)
(at object_6 object_4)
(at-ferry object_5)
)
(:goal
(and
(at object_3 object_4)
(at object_2 object_5)
(at object_0 object_5)
(at object_6 object_1)
)
)
)
