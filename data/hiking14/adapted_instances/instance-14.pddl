(define (problem hiking-2-3)
(:domain hiking)
(:objects 
 car_1 car_0 car_2 - car
 tent_1 tent_0 - tent
 couple_1 couple_0 - couple
 place_5 place_1 place_3 place_4 place_2 place_0 - place
 person_2 person_1 person_3 person_0 - person
)
(:init
(partners couple_1 person_2 person_1)
(at_person person_2 place_5)
(at_person person_1 place_5)
(walked couple_1 place_5)
(at_tent tent_1 place_5)
(down tent_1)
(partners couple_0 person_3 person_0)
(at_person person_3 place_5)
(at_person person_0 place_5)
(walked couple_0 place_5)
(at_tent tent_0 place_5)
(down tent_0)
(at_car car_1 place_5)
(at_car car_0 place_5)
(at_car car_2 place_5)
(next place_5 place_1)
(next place_1 place_3)
(next place_3 place_4)
(next place_4 place_2)
(next place_2 place_0)
)
(:goal
(and
(walked couple_1 place_0)
(walked couple_0 place_0)
)
)
)