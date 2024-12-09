(define (problem elevators-sequencedstrips-p8_3_2)
(:domain elevators-sequencedstrips)

(:objects 
count_0 count_1 count_5 count_2 count_8 count_7 count_3 count_6 count_4  - count
passenger_0 passenger_1 passenger_2  - passenger
fast-elevator_0 fast-elevator_1  - fast-elevator
slow-elevator_1 slow-elevator_0 - slow-elevator
)

(:init
(next count_0 count_1) (next count_1 count_5) (next count_5 count_2) (next count_2 count_8) (next count_8 count_7) (next count_7 count_3) (next count_3 count_6) (next count_6 count_4) 

(above count_0 count_1) (above count_0 count_5) (above count_0 count_2) (above count_0 count_8) (above count_0 count_7) (above count_0 count_3) (above count_0 count_6) (above count_0 count_4) 
(above count_1 count_5) (above count_1 count_2) (above count_1 count_8) (above count_1 count_7) (above count_1 count_3) (above count_1 count_6) (above count_1 count_4) 
(above count_5 count_2) (above count_5 count_8) (above count_5 count_7) (above count_5 count_3) (above count_5 count_6) (above count_5 count_4) 
(above count_2 count_8) (above count_2 count_7) (above count_2 count_3) (above count_2 count_6) (above count_2 count_4) 
(above count_8 count_7) (above count_8 count_3) (above count_8 count_6) (above count_8 count_4) 
(above count_7 count_3) (above count_7 count_6) (above count_7 count_4) 
(above count_3 count_6) (above count_3 count_4) 
(above count_6 count_4) 

(lift-at fast-elevator_0 count_0)
(passengers fast-elevator_0 count_0)
(can-hold fast-elevator_0 count_1) (can-hold fast-elevator_0 count_5) (can-hold fast-elevator_0 count_2) 
(reachable-floor fast-elevator_0 count_0)(reachable-floor fast-elevator_0 count_5)(reachable-floor fast-elevator_0 count_8)(reachable-floor fast-elevator_0 count_3)(reachable-floor fast-elevator_0 count_4)

(lift-at fast-elevator_1 count_4)
(passengers fast-elevator_1 count_0)
(can-hold fast-elevator_1 count_1) (can-hold fast-elevator_1 count_5) (can-hold fast-elevator_1 count_2) 
(reachable-floor fast-elevator_1 count_0)(reachable-floor fast-elevator_1 count_5)(reachable-floor fast-elevator_1 count_8)(reachable-floor fast-elevator_1 count_3)(reachable-floor fast-elevator_1 count_4)

(lift-at slow-elevator_1 count_5)
(passengers slow-elevator_1 count_0)
(can-hold slow-elevator_1 count_1) (can-hold slow-elevator_1 count_5) 
(reachable-floor slow-elevator_1 count_0)(reachable-floor slow-elevator_1 count_1)(reachable-floor slow-elevator_1 count_5)(reachable-floor slow-elevator_1 count_2)(reachable-floor slow-elevator_1 count_8)

(lift-at slow-elevator_0 count_8)
(passengers slow-elevator_0 count_0)
(can-hold slow-elevator_0 count_1) (can-hold slow-elevator_0 count_5) 
(reachable-floor slow-elevator_0 count_8)(reachable-floor slow-elevator_0 count_7)(reachable-floor slow-elevator_0 count_3)(reachable-floor slow-elevator_0 count_6)(reachable-floor slow-elevator_0 count_4)

(passenger-at passenger_0 count_0)
(passenger-at passenger_1 count_8)
(passenger-at passenger_2 count_5)









)

(:goal
(and
(passenger-at passenger_0 count_8)
(passenger-at passenger_1 count_3)
(passenger-at passenger_2 count_1)
))



)
