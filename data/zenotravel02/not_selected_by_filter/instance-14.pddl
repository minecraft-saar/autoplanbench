(define (problem ztravel-2-4)
(:domain zeno-travel)
(:objects
	object_15
	object_8
	object_3
	object_6
	object_12
	object_10
	object_9
	object_7
	object_0
	object_13
	object_11
	object_14
	object_5
	object_1
	object_4
	object_2
	)
(:init
	(at object_15 object_9)
	(aircraft object_15)
	(fuel-level object_15 object_1)
	(at object_8 object_0)
	(aircraft object_8)
	(fuel-level object_8 object_4)
	(at object_3 object_9)
	(person object_3)
	(at object_6 object_9)
	(person object_6)
	(at object_12 object_7)
	(person object_12)
	(at object_10 object_7)
	(person object_10)
	(city object_9)
	(city object_7)
	(city object_0)
	(next object_13 object_11)
	(next object_11 object_14)
	(next object_14 object_5)
	(next object_5 object_1)
	(next object_1 object_4)
	(next object_4 object_2)
	(flevel object_13)
	(flevel object_11)
	(flevel object_14)
	(flevel object_5)
	(flevel object_1)
	(flevel object_4)
	(flevel object_2)
)
(:goal (and
	(at object_8 object_0)
	(at object_3 object_7)
	(at object_6 object_9)
	(at object_12 object_9)
	(at object_10 object_7)
	))

)
