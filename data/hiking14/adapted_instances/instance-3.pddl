(define (problem hiking-1-2)
(:domain hiking)
(:objects 
 car_1 car_0 - car
 tent_0 - tent
 couple_0 - couple
 place_3 place_0 place_1 place_2 place_4 - place
 person_1 person_0 - person
)
(:init
(partners couple_0 person_1 person_0)
(at_person person_1 place_3)
(at_person person_0 place_3)
(walked couple_0 place_3)
(at_tent tent_0 place_3)
(up tent_0)
(at_car car_1 place_3)
(at_car car_0 place_3)
(next place_3 place_0)
(next place_0 place_1)
(next place_1 place_2)
(next place_2 place_4)
)
(:goal
(and
(walked couple_0 place_4)
)
)
)
