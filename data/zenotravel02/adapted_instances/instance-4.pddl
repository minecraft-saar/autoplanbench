(define (problem ztravel-3-8)
(:domain zeno-travel)
(:objects
	object_9
	object_12
	object_7
	object_11
	object_15
	object_19
	object_14
	object_3
	object_0
	object_17
	object_8
	object_16
	object_20
	object_4
	object_13
	object_1
	object_5
	object_10
	object_22
	object_23
	object_18
	object_6
	object_21
	object_2
	)
(:init
	(at object_9 object_4)
	(aircraft object_9)
	(fuel-level object_9 object_18)
	(at object_12 object_13)
	(aircraft object_12)
	(fuel-level object_12 object_2)
	(at object_7 object_5)
	(aircraft object_7)
	(fuel-level object_7 object_23)
	(at object_11 object_1)
	(person object_11)
	(at object_15 object_1)
	(person object_15)
	(at object_19 object_16)
	(person object_19)
	(at object_14 object_1)
	(person object_14)
	(at object_3 object_20)
	(person object_3)
	(at object_0 object_4)
	(person object_0)
	(at object_17 object_5)
	(person object_17)
	(at object_8 object_5)
	(person object_8)
	(city object_16)
	(city object_20)
	(city object_4)
	(city object_13)
	(city object_1)
	(city object_5)
	(next object_10 object_22)
	(next object_22 object_23)
	(next object_23 object_18)
	(next object_18 object_6)
	(next object_6 object_21)
	(next object_21 object_2)
	(flevel object_10)
	(flevel object_22)
	(flevel object_23)
	(flevel object_18)
	(flevel object_6)
	(flevel object_21)
	(flevel object_2)
)
(:goal (and
	(at object_11 object_4)
	(at object_15 object_20)
	(at object_19 object_20)
	(at object_14 object_1)
	(at object_3 object_1)
	(at object_0 object_20)
	(at object_17 object_13)
	(at object_8 object_1)
	))

)
