(define (problem elevators-sequencedstrips-p8_6_1)
(:domain elevators-sequencedstrips)

(:objects 
count_7 count_3 count_8 count_6 count_0 count_1 count_4 count_2 count_5  - count
passenger_4 passenger_1 passenger_5 passenger_2 passenger_3 passenger_0  - passenger
fast-elevator_0  - fast-elevator
slow-elevator_1 slow-elevator_0 - slow-elevator
)

(:init
(next count_7 count_3) (next count_3 count_8) (next count_8 count_6) (next count_6 count_0) (next count_0 count_1) (next count_1 count_4) (next count_4 count_2) (next count_2 count_5) 

(above count_7 count_3) (above count_7 count_8) (above count_7 count_6) (above count_7 count_0) (above count_7 count_1) (above count_7 count_4) (above count_7 count_2) (above count_7 count_5) 
(above count_3 count_8) (above count_3 count_6) (above count_3 count_0) (above count_3 count_1) (above count_3 count_4) (above count_3 count_2) (above count_3 count_5) 
(above count_8 count_6) (above count_8 count_0) (above count_8 count_1) (above count_8 count_4) (above count_8 count_2) (above count_8 count_5) 
(above count_6 count_0) (above count_6 count_1) (above count_6 count_4) (above count_6 count_2) (above count_6 count_5) 
(above count_0 count_1) (above count_0 count_4) (above count_0 count_2) (above count_0 count_5) 
(above count_1 count_4) (above count_1 count_2) (above count_1 count_5) 
(above count_4 count_2) (above count_4 count_5) 
(above count_2 count_5) 

(lift-at fast-elevator_0 count_8)
(passengers fast-elevator_0 count_7)
(can-hold fast-elevator_0 count_3) (can-hold fast-elevator_0 count_8) (can-hold fast-elevator_0 count_6) 
(reachable-floor fast-elevator_0 count_7)(reachable-floor fast-elevator_0 count_8)(reachable-floor fast-elevator_0 count_0)(reachable-floor fast-elevator_0 count_4)(reachable-floor fast-elevator_0 count_5)

(lift-at slow-elevator_1 count_7)
(passengers slow-elevator_1 count_7)
(can-hold slow-elevator_1 count_3) (can-hold slow-elevator_1 count_8) 
(reachable-floor slow-elevator_1 count_7)(reachable-floor slow-elevator_1 count_3)(reachable-floor slow-elevator_1 count_8)(reachable-floor slow-elevator_1 count_6)(reachable-floor slow-elevator_1 count_0)

(lift-at slow-elevator_0 count_5)
(passengers slow-elevator_0 count_7)
(can-hold slow-elevator_0 count_3) (can-hold slow-elevator_0 count_8) 
(reachable-floor slow-elevator_0 count_0)(reachable-floor slow-elevator_0 count_1)(reachable-floor slow-elevator_0 count_4)(reachable-floor slow-elevator_0 count_2)(reachable-floor slow-elevator_0 count_5)

(passenger-at passenger_4 count_7)
(passenger-at passenger_1 count_6)
(passenger-at passenger_5 count_7)
(passenger-at passenger_2 count_7)
(passenger-at passenger_3 count_4)
(passenger-at passenger_0 count_4)









)

(:goal
(and
(passenger-at passenger_4 count_0)
(passenger-at passenger_1 count_1)
(passenger-at passenger_5 count_8)
(passenger-at passenger_2 count_1)
(passenger-at passenger_3 count_1)
(passenger-at passenger_0 count_8)
))



)
