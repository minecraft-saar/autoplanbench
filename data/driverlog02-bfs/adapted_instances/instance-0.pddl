(define (problem dlog-2-2-2)
	(:domain driverlog)
	(:objects
	object_7
	object_9
	object_0
	object_1
	object_3
	object_4
	object_10
	object_6
	object_2
	object_5
	object_8
	)
	(:init
	(at object_7 object_2)
	(driver object_7)
	(at object_9 object_2)
	(driver object_9)
	(at object_0 object_10)
	(empty object_0)
	(truck object_0)
	(at object_1 object_10)
	(empty object_1)
	(truck object_1)
	(at object_3 object_10)
	(obj object_3)
	(at object_4 object_10)
	(obj object_4)
	(location object_10)
	(location object_6)
	(location object_2)
	(location object_5)
	(location object_8)
	(path object_6 object_5)
	(path object_5 object_6)
	(path object_10 object_5)
	(path object_5 object_10)
	(path object_6 object_8)
	(path object_8 object_6)
	(path object_2 object_8)
	(path object_8 object_2)
	(link object_10 object_6)
	(link object_6 object_10)
	(link object_10 object_2)
	(link object_2 object_10)
	(link object_2 object_6)
	(link object_6 object_2)
)
	(:goal (and
	(at object_7 object_6)
	(at object_0 object_6)
	(at object_3 object_10)
	(at object_4 object_10)
	))


)
