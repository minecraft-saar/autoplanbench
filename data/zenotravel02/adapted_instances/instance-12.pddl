(define (problem ztravel-1-3)
(:domain zeno-travel)
(:objects
	object_0
	object_12
	object_5
	object_9
	object_4
	object_6
	object_10
	object_3
	object_2
	object_7
	object_13
	object_11
	object_1
	object_8
	)
(:init
	(at object_0 object_4)
	(aircraft object_0)
	(fuel-level object_0 object_7)
	(at object_12 object_10)
	(person object_12)
	(at object_5 object_6)
	(person object_5)
	(at object_9 object_10)
	(person object_9)
	(city object_4)
	(city object_6)
	(city object_10)
	(next object_3 object_2)
	(next object_2 object_7)
	(next object_7 object_13)
	(next object_13 object_11)
	(next object_11 object_1)
	(next object_1 object_8)
	(flevel object_3)
	(flevel object_2)
	(flevel object_7)
	(flevel object_13)
	(flevel object_11)
	(flevel object_1)
	(flevel object_8)
)
(:goal (and
	(at object_0 object_10)
	(at object_12 object_6)
	(at object_9 object_10)
	))

)
