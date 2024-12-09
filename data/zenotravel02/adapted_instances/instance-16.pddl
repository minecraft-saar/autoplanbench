(define (problem ztravel-2-4)
(:domain zeno-travel)
(:objects
	object_14
	object_6
	object_2
	object_13
	object_10
	object_9
	object_4
	object_3
	object_7
	object_12
	object_11
	object_5
	object_16
	object_0
	object_8
	object_1
	object_15
	)
(:init
	(at object_14 object_3)
	(aircraft object_14)
	(fuel-level object_14 object_15)
	(at object_6 object_7)
	(aircraft object_6)
	(fuel-level object_6 object_11)
	(at object_2 object_12)
	(person object_2)
	(at object_13 object_4)
	(person object_13)
	(at object_10 object_4)
	(person object_10)
	(at object_9 object_3)
	(person object_9)
	(city object_4)
	(city object_3)
	(city object_7)
	(city object_12)
	(next object_11 object_5)
	(next object_5 object_16)
	(next object_16 object_0)
	(next object_0 object_8)
	(next object_8 object_1)
	(next object_1 object_15)
	(flevel object_11)
	(flevel object_5)
	(flevel object_16)
	(flevel object_0)
	(flevel object_8)
	(flevel object_1)
	(flevel object_15)
)
(:goal (and
	(at object_2 object_7)
	(at object_13 object_12)
	(at object_10 object_12)
	(at object_9 object_12)
	))

)
