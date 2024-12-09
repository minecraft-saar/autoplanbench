(define (problem dlog-2-2-2)
	(:domain driverlog)
	(:objects
	object_3
	object_7
	object_2
	object_6
	object_5
	object_1
	object_4
	object_0
	object_10
	object_9
	object_8
	)
	(:init
	(at object_3 object_10)
	(driver object_3)
	(at object_7 object_10)
	(driver object_7)
	(at object_2 object_4)
	(empty object_2)
	(truck object_2)
	(at object_6 object_4)
	(empty object_6)
	(truck object_6)
	(at object_5 object_4)
	(obj object_5)
	(at object_1 object_4)
	(obj object_1)
	(location object_4)
	(location object_0)
	(location object_10)
	(location object_9)
	(location object_8)
	(path object_0 object_9)
	(path object_9 object_0)
	(path object_4 object_9)
	(path object_9 object_4)
	(path object_0 object_8)
	(path object_8 object_0)
	(path object_10 object_8)
	(path object_8 object_10)
	(link object_4 object_0)
	(link object_0 object_4)
	(link object_4 object_10)
	(link object_10 object_4)
	(link object_10 object_0)
	(link object_0 object_10)
)
	(:goal (and
	(at object_3 object_0)
	(at object_2 object_0)
	(at object_5 object_4)
	(at object_1 object_4)
	))


)
