(define (problem hiking-2-4)
(:domain hiking)
(:objects 
 car_2 car_0 car_3 car_1 - car
 tent_0 tent_1 - tent
 couple_1 couple_0 - couple
 place_1 place_2 place_0 - place
 person_3 person_1 person_0 person_2 - person
)
(:init
(partners couple_1 person_3 person_1)
(at_person person_3 place_1)
(at_person person_1 place_1)
(walked couple_1 place_1)
(at_tent tent_0 place_1)
(down tent_0)
(partners couple_0 person_0 person_2)
(at_person person_0 place_1)
(at_person person_2 place_1)
(walked couple_0 place_1)
(at_tent tent_1 place_1)
(down tent_1)
(at_car car_2 place_1)
(at_car car_0 place_1)
(at_car car_3 place_1)
(at_car car_1 place_1)
(next place_1 place_2)
(next place_2 place_0)
)
(:goal
(and
(walked couple_1 place_0)
(walked couple_0 place_0)
)
)
)
