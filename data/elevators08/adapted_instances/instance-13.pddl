(define (problem elevators-sequencedstrips-p12_4_7)
(:domain elevators-sequencedstrips)

(:objects 
count_5 count_10 count_6 count_12 count_9 count_0 count_7 count_3 count_4 count_8 count_1 count_11 count_2  - count
passenger_1 passenger_2 passenger_0 passenger_3  - passenger
fast-elevator_0  - fast-elevator
slow-elevator_0 slow-elevator_1 - slow-elevator
)

(:init
(next count_5 count_10) (next count_10 count_6) (next count_6 count_12) (next count_12 count_9) (next count_9 count_0) (next count_0 count_7) (next count_7 count_3) (next count_3 count_4) (next count_4 count_8) (next count_8 count_1) (next count_1 count_11) (next count_11 count_2) 

(above count_5 count_10) (above count_5 count_6) (above count_5 count_12) (above count_5 count_9) (above count_5 count_0) (above count_5 count_7) (above count_5 count_3) (above count_5 count_4) (above count_5 count_8) (above count_5 count_1) (above count_5 count_11) (above count_5 count_2) 
(above count_10 count_6) (above count_10 count_12) (above count_10 count_9) (above count_10 count_0) (above count_10 count_7) (above count_10 count_3) (above count_10 count_4) (above count_10 count_8) (above count_10 count_1) (above count_10 count_11) (above count_10 count_2) 
(above count_6 count_12) (above count_6 count_9) (above count_6 count_0) (above count_6 count_7) (above count_6 count_3) (above count_6 count_4) (above count_6 count_8) (above count_6 count_1) (above count_6 count_11) (above count_6 count_2) 
(above count_12 count_9) (above count_12 count_0) (above count_12 count_7) (above count_12 count_3) (above count_12 count_4) (above count_12 count_8) (above count_12 count_1) (above count_12 count_11) (above count_12 count_2) 
(above count_9 count_0) (above count_9 count_7) (above count_9 count_3) (above count_9 count_4) (above count_9 count_8) (above count_9 count_1) (above count_9 count_11) (above count_9 count_2) 
(above count_0 count_7) (above count_0 count_3) (above count_0 count_4) (above count_0 count_8) (above count_0 count_1) (above count_0 count_11) (above count_0 count_2) 
(above count_7 count_3) (above count_7 count_4) (above count_7 count_8) (above count_7 count_1) (above count_7 count_11) (above count_7 count_2) 
(above count_3 count_4) (above count_3 count_8) (above count_3 count_1) (above count_3 count_11) (above count_3 count_2) 
(above count_4 count_8) (above count_4 count_1) (above count_4 count_11) (above count_4 count_2) 
(above count_8 count_1) (above count_8 count_11) (above count_8 count_2) 
(above count_1 count_11) (above count_1 count_2) 
(above count_11 count_2) 

(lift-at fast-elevator_0 count_8)
(passengers fast-elevator_0 count_5)
(can-hold fast-elevator_0 count_10) (can-hold fast-elevator_0 count_6) (can-hold fast-elevator_0 count_12) 
(reachable-floor fast-elevator_0 count_5)(reachable-floor fast-elevator_0 count_12)(reachable-floor fast-elevator_0 count_7)(reachable-floor fast-elevator_0 count_8)(reachable-floor fast-elevator_0 count_2)

(lift-at slow-elevator_0 count_10)
(passengers slow-elevator_0 count_5)
(can-hold slow-elevator_0 count_10) (can-hold slow-elevator_0 count_6) 
(reachable-floor slow-elevator_0 count_5)(reachable-floor slow-elevator_0 count_10)(reachable-floor slow-elevator_0 count_6)(reachable-floor slow-elevator_0 count_12)(reachable-floor slow-elevator_0 count_9)(reachable-floor slow-elevator_0 count_0)(reachable-floor slow-elevator_0 count_7)

(lift-at slow-elevator_1 count_8)
(passengers slow-elevator_1 count_5)
(can-hold slow-elevator_1 count_10) (can-hold slow-elevator_1 count_6) 
(reachable-floor slow-elevator_1 count_7)(reachable-floor slow-elevator_1 count_3)(reachable-floor slow-elevator_1 count_4)(reachable-floor slow-elevator_1 count_8)(reachable-floor slow-elevator_1 count_1)(reachable-floor slow-elevator_1 count_11)(reachable-floor slow-elevator_1 count_2)

(passenger-at passenger_1 count_0)
(passenger-at passenger_2 count_8)
(passenger-at passenger_0 count_5)
(passenger-at passenger_3 count_3)









)

(:goal
(and
(passenger-at passenger_1 count_5)
(passenger-at passenger_2 count_4)
(passenger-at passenger_0 count_2)
(passenger-at passenger_3 count_7)
))



)
