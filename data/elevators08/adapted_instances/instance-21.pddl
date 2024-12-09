(define (problem elevators-sequencedstrips-p12_3_1)
(:domain elevators-sequencedstrips)

(:objects 
count_10 count_1 count_6 count_3 count_5 count_2 count_8 count_9 count_11 count_12 count_4 count_7 count_0  - count
passenger_2 passenger_1 passenger_0  - passenger
fast-elevator_0  - fast-elevator
slow-elevator_2 slow-elevator_1 slow-elevator_0 - slow-elevator
)

(:init
(next count_10 count_1) (next count_1 count_6) (next count_6 count_3) (next count_3 count_5) (next count_5 count_2) (next count_2 count_8) (next count_8 count_9) (next count_9 count_11) (next count_11 count_12) (next count_12 count_4) (next count_4 count_7) (next count_7 count_0) 

(above count_10 count_1) (above count_10 count_6) (above count_10 count_3) (above count_10 count_5) (above count_10 count_2) (above count_10 count_8) (above count_10 count_9) (above count_10 count_11) (above count_10 count_12) (above count_10 count_4) (above count_10 count_7) (above count_10 count_0) 
(above count_1 count_6) (above count_1 count_3) (above count_1 count_5) (above count_1 count_2) (above count_1 count_8) (above count_1 count_9) (above count_1 count_11) (above count_1 count_12) (above count_1 count_4) (above count_1 count_7) (above count_1 count_0) 
(above count_6 count_3) (above count_6 count_5) (above count_6 count_2) (above count_6 count_8) (above count_6 count_9) (above count_6 count_11) (above count_6 count_12) (above count_6 count_4) (above count_6 count_7) (above count_6 count_0) 
(above count_3 count_5) (above count_3 count_2) (above count_3 count_8) (above count_3 count_9) (above count_3 count_11) (above count_3 count_12) (above count_3 count_4) (above count_3 count_7) (above count_3 count_0) 
(above count_5 count_2) (above count_5 count_8) (above count_5 count_9) (above count_5 count_11) (above count_5 count_12) (above count_5 count_4) (above count_5 count_7) (above count_5 count_0) 
(above count_2 count_8) (above count_2 count_9) (above count_2 count_11) (above count_2 count_12) (above count_2 count_4) (above count_2 count_7) (above count_2 count_0) 
(above count_8 count_9) (above count_8 count_11) (above count_8 count_12) (above count_8 count_4) (above count_8 count_7) (above count_8 count_0) 
(above count_9 count_11) (above count_9 count_12) (above count_9 count_4) (above count_9 count_7) (above count_9 count_0) 
(above count_11 count_12) (above count_11 count_4) (above count_11 count_7) (above count_11 count_0) 
(above count_12 count_4) (above count_12 count_7) (above count_12 count_0) 
(above count_4 count_7) (above count_4 count_0) 
(above count_7 count_0) 

(lift-at fast-elevator_0 count_5)
(passengers fast-elevator_0 count_10)
(can-hold fast-elevator_0 count_1) (can-hold fast-elevator_0 count_6) (can-hold fast-elevator_0 count_3) 
(reachable-floor fast-elevator_0 count_10)(reachable-floor fast-elevator_0 count_6)(reachable-floor fast-elevator_0 count_5)(reachable-floor fast-elevator_0 count_8)(reachable-floor fast-elevator_0 count_11)(reachable-floor fast-elevator_0 count_4)(reachable-floor fast-elevator_0 count_0)

(lift-at slow-elevator_2 count_3)
(passengers slow-elevator_2 count_10)
(can-hold slow-elevator_2 count_1) (can-hold slow-elevator_2 count_6) 
(reachable-floor slow-elevator_2 count_10)(reachable-floor slow-elevator_2 count_1)(reachable-floor slow-elevator_2 count_6)(reachable-floor slow-elevator_2 count_3)(reachable-floor slow-elevator_2 count_5)

(lift-at slow-elevator_1 count_5)
(passengers slow-elevator_1 count_10)
(can-hold slow-elevator_1 count_1) (can-hold slow-elevator_1 count_6) 
(reachable-floor slow-elevator_1 count_5)(reachable-floor slow-elevator_1 count_2)(reachable-floor slow-elevator_1 count_8)(reachable-floor slow-elevator_1 count_9)(reachable-floor slow-elevator_1 count_11)

(lift-at slow-elevator_0 count_4)
(passengers slow-elevator_0 count_10)
(can-hold slow-elevator_0 count_1) (can-hold slow-elevator_0 count_6) 
(reachable-floor slow-elevator_0 count_11)(reachable-floor slow-elevator_0 count_12)(reachable-floor slow-elevator_0 count_4)(reachable-floor slow-elevator_0 count_7)(reachable-floor slow-elevator_0 count_0)

(passenger-at passenger_2 count_7)
(passenger-at passenger_1 count_3)
(passenger-at passenger_0 count_2)












)

(:goal
(and
(passenger-at passenger_2 count_4)
(passenger-at passenger_1 count_11)
(passenger-at passenger_0 count_10)
))



)
