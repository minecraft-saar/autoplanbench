(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	object_2
	object_4
	object_8
	object_13
	object_9
	object_6
	object_1
	object_11
	object_12
	object_3
	object_5
	object_0
	object_7
	object_10
)
(:init
	(satellite object_2)
	(instrument object_4)
	(supports object_4 object_9)
	(supports object_4 object_13)
	(calibration_target object_4 object_11)
	(instrument object_8)
	(supports object_8 object_6)
	(supports object_8 object_9)
	(supports object_8 object_13)
	(calibration_target object_8 object_12)
	(on_board object_4 object_2)
	(on_board object_8 object_2)
	(power_avail object_2)
	(pointing object_2 object_5)
	(mode object_13)
	(mode object_9)
	(mode object_6)
	(direction object_1)
	(direction object_11)
	(direction object_12)
	(direction object_3)
	(direction object_5)
	(direction object_0)
	(direction object_7)
	(direction object_10)
)
(:goal (and
	(have_image object_3 object_13)
	(have_image object_5 object_13)
	(have_image object_0 object_6)
	(have_image object_7 object_13)
	(have_image object_10 object_13)
))

)
