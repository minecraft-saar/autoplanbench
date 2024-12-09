(define (problem hiking-1-2)
(:domain hiking)
(:objects 
 car_1 car_0 - car
 tent_0 - tent
 couple_0 - couple
 place_6 place_4 place_3 place_1 place_0 place_2 place_5 - place
 person_1 person_0 - person
)
(:init
(partners couple_0 person_1 person_0)
(at_person person_1 place_6)
(at_person person_0 place_6)
(walked couple_0 place_6)
(at_tent tent_0 place_6)
(down tent_0)
(at_car car_1 place_6)
(at_car car_0 place_6)
(next place_6 place_4)
(next place_4 place_3)
(next place_3 place_1)
(next place_1 place_0)
(next place_0 place_2)
(next place_2 place_5)
)
(:goal
(and
(walked couple_0 place_5)
)
)
)
