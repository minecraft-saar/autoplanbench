(define (problem depotprob1818) (:domain depot)
(:objects
	object_2 object_9 object_1 object_5 object_4 object_0 object_3 object_11 object_12 object_8 object_6 object_7 object_10 )
(:init
	(pallet object_0)
	(surface object_0)
	(at object_0 object_2)
	(clear object_8)
	(pallet object_3)
	(surface object_3)
	(at object_3 object_9)
	(clear object_12)
	(pallet object_11)
	(surface object_11)
	(at object_11 object_1)
	(clear object_11)
	(truck object_5)
	(at object_5 object_1)
	(truck object_4)
	(at object_4 object_2)
	(hoist object_6)
	(at object_6 object_2)
	(available object_6)
	(hoist object_7)
	(at object_7 object_9)
	(available object_7)
	(hoist object_10)
	(at object_10 object_1)
	(available object_10)
	(crate object_12)
	(surface object_12)
	(at object_12 object_9)
	(on object_12 object_3)
	(crate object_8)
	(surface object_8)
	(at object_8 object_2)
	(on object_8 object_0)
	(place object_2)
	(place object_9)
	(place object_1)
)

(:goal (and
		(on object_12 object_11)
		(on object_8 object_3)
	)
))
