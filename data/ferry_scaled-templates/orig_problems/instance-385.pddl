(define (problem ferry-l3-c14)
(:domain ferry)
(:objects l0 l1 l2 
          c0 c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13 
)
(:init
(location l0)
(location l1)
(location l2)
(car c0)
(car c1)
(car c2)
(car c3)
(car c4)
(car c5)
(car c6)
(car c7)
(car c8)
(car c9)
(car c10)
(car c11)
(car c12)
(car c13)
(not-eq l0 l1)
(not-eq l1 l0)
(not-eq l0 l2)
(not-eq l2 l0)
(not-eq l1 l2)
(not-eq l2 l1)
(empty-ferry)
(at c0 l1)
(at c1 l1)
(at c2 l2)
(at c3 l0)
(at c4 l1)
(at c5 l2)
(at c6 l0)
(at c7 l0)
(at c8 l2)
(at c9 l2)
(at c10 l1)
(at c11 l2)
(at c12 l1)
(at c13 l1)
(at-ferry l1)
)
(:goal
(and
(at c0 l1)
(at c1 l1)
(at c2 l0)
(at c3 l2)
(at c4 l0)
(at c5 l2)
(at c6 l2)
(at c7 l1)
(at c8 l1)
(at c9 l0)
(at c10 l0)
(at c11 l1)
(at c12 l2)
(at c13 l2)
)
)
)
