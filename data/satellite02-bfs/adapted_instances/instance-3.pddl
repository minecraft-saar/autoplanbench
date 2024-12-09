(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	object_13
	object_11
	object_1
	object_4
	object_15
	object_6
	object_2
	object_14
	object_10
	object_5
	object_16
	object_9
	object_0
	object_7
	object_12
	object_8
	object_3
)
(:init
	(satellite object_13)
	(instrument object_11)
	(supports object_11 object_10)
	(supports object_11 object_14)
	(calibration_target object_11 object_5)
	(instrument object_1)
	(supports object_1 object_2)
	(calibration_target object_1 object_16)
	(instrument object_4)
	(supports object_4 object_14)
	(supports object_4 object_2)
	(calibration_target object_4 object_9)
	(on_board object_11 object_13)
	(on_board object_1 object_13)
	(on_board object_4 object_13)
	(power_avail object_13)
	(pointing object_13 object_7)
	(satellite object_15)
	(instrument object_6)
	(supports object_6 object_10)
	(supports object_6 object_14)
	(supports object_6 object_2)
	(calibration_target object_6 object_9)
	(on_board object_6 object_15)
	(power_avail object_15)
	(pointing object_15 object_9)
	(mode object_2)
	(mode object_14)
	(mode object_10)
	(direction object_5)
	(direction object_16)
	(direction object_9)
	(direction object_0)
	(direction object_7)
	(direction object_12)
	(direction object_8)
	(direction object_3)
)
(:goal (and
	(pointing object_13 object_12)
	(have_image object_0 object_14)
	(have_image object_7 object_10)
	(have_image object_12 object_10)
	(have_image object_3 object_10)
))

)
