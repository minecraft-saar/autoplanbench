(define (problem hiking-1-2)
(:domain hiking)
(:objects 
 car_0 car_1 - car
 tent_0 - tent
 couple_0 - couple
 place_0 place_1 place_2 - place
 person_0 person_1 - person
)
(:init
(partners couple_0 person_0 person_1)
(at_person person_0 place_0)
(at_person person_1 place_0)
(walked couple_0 place_0)
(at_tent tent_0 place_0)
(up tent_0)
(at_car car_0 place_0)
(at_car car_1 place_0)
(next place_0 place_1)
(next place_1 place_2)
)
(:goal
(and
(walked couple_0 place_2)
)
)
)
