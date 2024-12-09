(define (problem ztravel-2-4)
(:domain zeno-travel)
(:objects
	object_7
	object_6
	object_2
	object_1
	object_15
	object_11
	object_3
	object_0
	object_4
	object_12
	object_9
	object_13
	object_8
	object_14
	object_5
	object_10
	)
(:init
	(at object_7 object_3)
	(aircraft object_7)
	(fuel-level object_7 object_14)
	(at object_6 object_4)
	(aircraft object_6)
	(fuel-level object_6 object_5)
	(at object_2 object_3)
	(person object_2)
	(at object_1 object_3)
	(person object_1)
	(at object_15 object_0)
	(person object_15)
	(at object_11 object_0)
	(person object_11)
	(city object_3)
	(city object_0)
	(city object_4)
	(next object_12 object_9)
	(next object_9 object_13)
	(next object_13 object_8)
	(next object_8 object_14)
	(next object_14 object_5)
	(next object_5 object_10)
	(flevel object_12)
	(flevel object_9)
	(flevel object_13)
	(flevel object_8)
	(flevel object_14)
	(flevel object_5)
	(flevel object_10)
)
(:goal (and
	(at object_6 object_4)
	(at object_2 object_0)
	(at object_1 object_3)
	(at object_15 object_3)
	(at object_11 object_0)
	))

)
