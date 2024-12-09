(define (problem dlog-2-2-4)
	(:domain driverlog)
	(:objects
	object_10
	object_11
	object_4
	object_6
	object_13
	object_2
	object_0
	object_1
	object_12
	object_8
	object_9
	object_3
	object_5
	object_7
	)
	(:init
	(at object_10 object_8)
	(driver object_10)
	(at object_11 object_12)
	(driver object_11)
	(at object_4 object_8)
	(empty object_4)
	(truck object_4)
	(at object_6 object_9)
	(empty object_6)
	(truck object_6)
	(at object_13 object_12)
	(obj object_13)
	(at object_2 object_12)
	(obj object_2)
	(at object_0 object_8)
	(obj object_0)
	(at object_1 object_8)
	(obj object_1)
	(location object_12)
	(location object_8)
	(location object_9)
	(location object_3)
	(location object_5)
	(location object_7)
	(path object_12 object_3)
	(path object_3 object_12)
	(path object_8 object_3)
	(path object_3 object_8)
	(path object_9 object_5)
	(path object_5 object_9)
	(path object_12 object_5)
	(path object_5 object_12)
	(path object_9 object_7)
	(path object_7 object_9)
	(path object_8 object_7)
	(path object_7 object_8)
	(link object_8 object_12)
	(link object_12 object_8)
	(link object_8 object_9)
	(link object_9 object_8)
	(link object_9 object_12)
	(link object_12 object_9)
)
	(:goal (and
	(at object_11 object_9)
	(at object_4 object_8)
	(at object_6 object_9)
	(at object_13 object_8)
	(at object_2 object_8)
	(at object_0 object_9)
	))


)
