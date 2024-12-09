(define (problem ztravel-2-5)
(:domain zeno-travel)
(:objects
	object_4
	object_7
	object_5
	object_15
	object_8
	object_2
	object_10
	object_9
	object_17
	object_1
	object_3
	object_16
	object_12
	object_0
	object_11
	object_6
	object_14
	object_13
	)
(:init
	(at object_4 object_1)
	(aircraft object_4)
	(fuel-level object_4 object_14)
	(at object_7 object_17)
	(aircraft object_7)
	(fuel-level object_7 object_11)
	(at object_5 object_9)
	(person object_5)
	(at object_15 object_9)
	(person object_15)
	(at object_8 object_3)
	(person object_8)
	(at object_2 object_17)
	(person object_2)
	(at object_10 object_1)
	(person object_10)
	(city object_9)
	(city object_17)
	(city object_1)
	(city object_3)
	(next object_16 object_12)
	(next object_12 object_0)
	(next object_0 object_11)
	(next object_11 object_6)
	(next object_6 object_14)
	(next object_14 object_13)
	(flevel object_16)
	(flevel object_12)
	(flevel object_0)
	(flevel object_11)
	(flevel object_6)
	(flevel object_14)
	(flevel object_13)
)
(:goal (and
	(at object_5 object_3)
	(at object_15 object_17)
	(at object_8 object_3)
	(at object_2 object_3)
	(at object_10 object_17)
	))

)
