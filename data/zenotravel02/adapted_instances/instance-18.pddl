(define (problem ztravel-2-6)
(:domain zeno-travel)
(:objects
	object_6
	object_7
	object_10
	object_1
	object_3
	object_12
	object_11
	object_14
	object_16
	object_17
	object_15
	object_8
	object_18
	object_2
	object_5
	object_9
	object_0
	object_13
	object_4
	)
(:init
	(at object_6 object_15)
	(aircraft object_6)
	(fuel-level object_6 object_2)
	(at object_7 object_17)
	(aircraft object_7)
	(fuel-level object_7 object_2)
	(at object_10 object_8)
	(person object_10)
	(at object_1 object_8)
	(person object_1)
	(at object_3 object_8)
	(person object_3)
	(at object_12 object_17)
	(person object_12)
	(at object_11 object_8)
	(person object_11)
	(at object_14 object_16)
	(person object_14)
	(city object_16)
	(city object_17)
	(city object_15)
	(city object_8)
	(next object_18 object_2)
	(next object_2 object_5)
	(next object_5 object_9)
	(next object_9 object_0)
	(next object_0 object_13)
	(next object_13 object_4)
	(flevel object_18)
	(flevel object_2)
	(flevel object_5)
	(flevel object_9)
	(flevel object_0)
	(flevel object_13)
	(flevel object_4)
)
(:goal (and
	(at object_7 object_17)
	(at object_10 object_15)
	(at object_3 object_8)
	(at object_12 object_8)
	(at object_11 object_15)
	(at object_14 object_15)
	))

)
