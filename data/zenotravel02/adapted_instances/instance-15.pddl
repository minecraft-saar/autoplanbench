(define (problem ztravel-2-5)
(:domain zeno-travel)
(:objects
	object_10
	object_16
	object_14
	object_3
	object_1
	object_15
	object_7
	object_9
	object_0
	object_12
	object_8
	object_11
	object_13
	object_4
	object_2
	object_5
	object_6
	)
(:init
	(at object_10 object_12)
	(aircraft object_10)
	(fuel-level object_10 object_5)
	(at object_16 object_12)
	(aircraft object_16)
	(fuel-level object_16 object_8)
	(at object_14 object_9)
	(person object_14)
	(at object_3 object_0)
	(person object_3)
	(at object_1 object_9)
	(person object_1)
	(at object_15 object_9)
	(person object_15)
	(at object_7 object_12)
	(person object_7)
	(city object_9)
	(city object_0)
	(city object_12)
	(next object_8 object_11)
	(next object_11 object_13)
	(next object_13 object_4)
	(next object_4 object_2)
	(next object_2 object_5)
	(next object_5 object_6)
	(flevel object_8)
	(flevel object_11)
	(flevel object_13)
	(flevel object_4)
	(flevel object_2)
	(flevel object_5)
	(flevel object_6)
)
(:goal (and
	(at object_10 object_9)
	(at object_3 object_12)
	(at object_1 object_9)
	(at object_15 object_0)
	(at object_7 object_12)
	))

)
