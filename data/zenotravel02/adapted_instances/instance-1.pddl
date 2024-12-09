(define (problem ztravel-1-2)
(:domain zeno-travel)
(:objects
	object_2
	object_9
	object_10
	object_7
	object_1
	object_11
	object_8
	object_5
	object_6
	object_4
	object_12
	object_0
	object_3
	)
(:init
	(at object_2 object_7)
	(aircraft object_2)
	(fuel-level object_2 object_5)
	(at object_9 object_7)
	(person object_9)
	(at object_10 object_11)
	(person object_10)
	(city object_7)
	(city object_1)
	(city object_11)
	(next object_8 object_5)
	(next object_5 object_6)
	(next object_6 object_4)
	(next object_4 object_12)
	(next object_12 object_0)
	(next object_0 object_3)
	(flevel object_8)
	(flevel object_5)
	(flevel object_6)
	(flevel object_4)
	(flevel object_12)
	(flevel object_0)
	(flevel object_3)
)
(:goal (and
	(at object_2 object_1)
	(at object_9 object_7)
	(at object_10 object_11)
	))

)
