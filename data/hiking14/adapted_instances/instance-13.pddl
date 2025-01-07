(define (problem hiking-2-3)
(:domain hiking)
(:objects 
 car_0 car_1 car_2 - car
 tent_0 tent_1 - tent
 couple_1 couple_0 - couple
 place_4 place_3 place_0 place_1 place_2 - place
 person_1 person_2 person_0 person_3 - person
)
(:init
(partners couple_1 person_1 person_2)
(at_person person_1 place_4)
(at_person person_2 place_4)
(walked couple_1 place_4)
(at_tent tent_0 place_4)
(up tent_0)
(partners couple_0 person_0 person_3)
(at_person person_0 place_4)
(at_person person_3 place_4)
(walked couple_0 place_4)
(at_tent tent_1 place_4)
(up tent_1)
(at_car car_0 place_4)
(at_car car_1 place_4)
(at_car car_2 place_4)
(next place_4 place_3)
(next place_3 place_0)
(next place_0 place_1)
(next place_1 place_2)
)
(:goal
(and
(walked couple_1 place_2)
(walked couple_0 place_2)
)
)
)