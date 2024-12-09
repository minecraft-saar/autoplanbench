(define (problem ztravel-3-6)
(:domain zeno-travel)
(:objects
	object_2
	object_5
	object_8
	object_15
	object_12
	object_6
	object_11
	object_13
	object_17
	object_16
	object_10
	object_1
	object_3
	object_18
	object_0
	object_7
	object_4
	object_20
	object_19
	object_14
	object_9
	)
(:init
	(at object_2 object_16)
	(aircraft object_2)
	(fuel-level object_2 object_9)
	(at object_5 object_3)
	(aircraft object_5)
	(fuel-level object_5 object_0)
	(at object_8 object_16)
	(aircraft object_8)
	(fuel-level object_8 object_20)
	(at object_15 object_10)
	(person object_15)
	(at object_12 object_16)
	(person object_12)
	(at object_6 object_1)
	(person object_6)
	(at object_11 object_16)
	(person object_11)
	(at object_13 object_3)
	(person object_13)
	(at object_17 object_18)
	(person object_17)
	(city object_16)
	(city object_10)
	(city object_1)
	(city object_3)
	(city object_18)
	(next object_0 object_7)
	(next object_7 object_4)
	(next object_4 object_20)
	(next object_20 object_19)
	(next object_19 object_14)
	(next object_14 object_9)
	(flevel object_0)
	(flevel object_7)
	(flevel object_4)
	(flevel object_20)
	(flevel object_19)
	(flevel object_14)
	(flevel object_9)
)
(:goal (and
	(at object_2 object_3)
	(at object_15 object_16)
	(at object_12 object_16)
	(at object_6 object_10)
	(at object_11 object_16)
	(at object_13 object_3)
	(at object_17 object_1)
	))

)
