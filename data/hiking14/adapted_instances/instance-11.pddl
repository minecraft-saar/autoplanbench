(define (problem hiking-2-2)
(:domain hiking)
(:objects 
 car_1 car_0 - car
 tent_0 tent_1 - tent
 couple_0 couple_1 - couple
 place_1 place_2 place_6 place_0 place_3 place_7 place_4 place_5 - place
 person_3 person_1 person_0 person_2 - person
)
(:init
(partners couple_0 person_3 person_1)
(at_person person_3 place_1)
(at_person person_1 place_1)
(walked couple_0 place_1)
(at_tent tent_0 place_1)
(up tent_0)
(partners couple_1 person_0 person_2)
(at_person person_0 place_1)
(at_person person_2 place_1)
(walked couple_1 place_1)
(at_tent tent_1 place_1)
(up tent_1)
(at_car car_1 place_1)
(at_car car_0 place_1)
(next place_1 place_2)
(next place_2 place_6)
(next place_6 place_0)
(next place_0 place_3)
(next place_3 place_7)
(next place_7 place_4)
(next place_4 place_5)
)
(:goal
(and
(walked couple_0 place_5)
(walked couple_1 place_5)
)
)
)
