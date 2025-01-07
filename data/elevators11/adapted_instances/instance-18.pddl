(define (problem elevators-sequencedstrips-p12_6_8)
(:domain elevators-sequencedstrips)

(:objects 
count_1 count_4 count_9 count_11 count_2 count_3 count_5 count_7 count_0 count_10 count_6 count_12 count_8  - count
passenger_2 passenger_0 passenger_3 passenger_4 passenger_5 passenger_1  - passenger
fast-elevator_1 fast-elevator_0  - fast-elevator
slow-elevator_0 slow-elevator_1 - slow-elevator
)

(:init
(next count_1 count_4) (next count_4 count_9) (next count_9 count_11) (next count_11 count_2) (next count_2 count_3) (next count_3 count_5) (next count_5 count_7) (next count_7 count_0) (next count_0 count_10) (next count_10 count_6) (next count_6 count_12) (next count_12 count_8) 

(above count_1 count_4) (above count_1 count_9) (above count_1 count_11) (above count_1 count_2) (above count_1 count_3) (above count_1 count_5) (above count_1 count_7) (above count_1 count_0) (above count_1 count_10) (above count_1 count_6) (above count_1 count_12) (above count_1 count_8) 
(above count_4 count_9) (above count_4 count_11) (above count_4 count_2) (above count_4 count_3) (above count_4 count_5) (above count_4 count_7) (above count_4 count_0) (above count_4 count_10) (above count_4 count_6) (above count_4 count_12) (above count_4 count_8) 
(above count_9 count_11) (above count_9 count_2) (above count_9 count_3) (above count_9 count_5) (above count_9 count_7) (above count_9 count_0) (above count_9 count_10) (above count_9 count_6) (above count_9 count_12) (above count_9 count_8) 
(above count_11 count_2) (above count_11 count_3) (above count_11 count_5) (above count_11 count_7) (above count_11 count_0) (above count_11 count_10) (above count_11 count_6) (above count_11 count_12) (above count_11 count_8) 
(above count_2 count_3) (above count_2 count_5) (above count_2 count_7) (above count_2 count_0) (above count_2 count_10) (above count_2 count_6) (above count_2 count_12) (above count_2 count_8) 
(above count_3 count_5) (above count_3 count_7) (above count_3 count_0) (above count_3 count_10) (above count_3 count_6) (above count_3 count_12) (above count_3 count_8) 
(above count_5 count_7) (above count_5 count_0) (above count_5 count_10) (above count_5 count_6) (above count_5 count_12) (above count_5 count_8) 
(above count_7 count_0) (above count_7 count_10) (above count_7 count_6) (above count_7 count_12) (above count_7 count_8) 
(above count_0 count_10) (above count_0 count_6) (above count_0 count_12) (above count_0 count_8) 
(above count_10 count_6) (above count_10 count_12) (above count_10 count_8) 
(above count_6 count_12) (above count_6 count_8) 
(above count_12 count_8) 

(lift-at fast-elevator_1 count_8)
(passengers fast-elevator_1 count_1)
(can-hold fast-elevator_1 count_4) (can-hold fast-elevator_1 count_9) (can-hold fast-elevator_1 count_11) 
(reachable-floor fast-elevator_1 count_1)(reachable-floor fast-elevator_1 count_11)(reachable-floor fast-elevator_1 count_5)(reachable-floor fast-elevator_1 count_10)(reachable-floor fast-elevator_1 count_8)

(lift-at fast-elevator_0 count_5)
(passengers fast-elevator_0 count_1)
(can-hold fast-elevator_0 count_4) (can-hold fast-elevator_0 count_9) (can-hold fast-elevator_0 count_11) 
(reachable-floor fast-elevator_0 count_1)(reachable-floor fast-elevator_0 count_11)(reachable-floor fast-elevator_0 count_5)(reachable-floor fast-elevator_0 count_10)(reachable-floor fast-elevator_0 count_8)

(lift-at slow-elevator_0 count_11)
(passengers slow-elevator_0 count_1)
(can-hold slow-elevator_0 count_4) (can-hold slow-elevator_0 count_9) 
(reachable-floor slow-elevator_0 count_1)(reachable-floor slow-elevator_0 count_4)(reachable-floor slow-elevator_0 count_9)(reachable-floor slow-elevator_0 count_11)(reachable-floor slow-elevator_0 count_2)(reachable-floor slow-elevator_0 count_3)(reachable-floor slow-elevator_0 count_5)

(lift-at slow-elevator_1 count_0)
(passengers slow-elevator_1 count_1)
(can-hold slow-elevator_1 count_4) (can-hold slow-elevator_1 count_9) 
(reachable-floor slow-elevator_1 count_5)(reachable-floor slow-elevator_1 count_7)(reachable-floor slow-elevator_1 count_0)(reachable-floor slow-elevator_1 count_10)(reachable-floor slow-elevator_1 count_6)(reachable-floor slow-elevator_1 count_12)(reachable-floor slow-elevator_1 count_8)

(passenger-at passenger_2 count_11)
(passenger-at passenger_0 count_6)
(passenger-at passenger_3 count_7)
(passenger-at passenger_4 count_3)
(passenger-at passenger_5 count_0)
(passenger-at passenger_1 count_7)









)

(:goal
(and
(passenger-at passenger_2 count_3)
(passenger-at passenger_0 count_11)
(passenger-at passenger_3 count_6)
(passenger-at passenger_4 count_9)
(passenger-at passenger_5 count_4)
(passenger-at passenger_1 count_5)
))



)