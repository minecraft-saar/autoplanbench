(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	object_1
	object_7
	object_3
	object_22
	object_15
	object_19
	object_11
	object_14
	object_23
	object_17
	object_10
	object_9
	object_18
	object_12
	object_6
	object_21
	object_2
	object_24
	object_16
	object_8
	object_0
	object_13
	object_5
	object_4
	object_20
)
(:init
	(satellite object_1)
	(instrument object_7)
	(supports object_7 object_12)
	(supports object_7 object_18)
	(supports object_7 object_6)
	(calibration_target object_7 object_21)
	(instrument object_3)
	(supports object_3 object_18)
	(supports object_3 object_6)
	(supports object_3 object_12)
	(calibration_target object_3 object_2)
	(instrument object_22)
	(supports object_22 object_12)
	(calibration_target object_22 object_24)
	(on_board object_7 object_1)
	(on_board object_3 object_1)
	(on_board object_22 object_1)
	(power_avail object_1)
	(pointing object_1 object_4)
	(satellite object_15)
	(instrument object_19)
	(supports object_19 object_6)
	(supports object_19 object_18)
	(calibration_target object_19 object_24)
	(instrument object_11)
	(supports object_11 object_12)
	(supports object_11 object_6)
	(calibration_target object_11 object_21)
	(instrument object_14)
	(supports object_14 object_12)
	(supports object_14 object_6)
	(supports object_14 object_18)
	(calibration_target object_14 object_2)
	(on_board object_19 object_15)
	(on_board object_11 object_15)
	(on_board object_14 object_15)
	(power_avail object_15)
	(pointing object_15 object_21)
	(satellite object_23)
	(instrument object_17)
	(supports object_17 object_12)
	(calibration_target object_17 object_2)
	(instrument object_10)
	(supports object_10 object_12)
	(supports object_10 object_18)
	(calibration_target object_10 object_2)
	(instrument object_9)
	(supports object_9 object_6)
	(supports object_9 object_12)
	(supports object_9 object_18)
	(calibration_target object_9 object_24)
	(on_board object_17 object_23)
	(on_board object_10 object_23)
	(on_board object_9 object_23)
	(power_avail object_23)
	(pointing object_23 object_0)
	(mode object_18)
	(mode object_12)
	(mode object_6)
	(direction object_21)
	(direction object_2)
	(direction object_24)
	(direction object_16)
	(direction object_8)
	(direction object_0)
	(direction object_13)
	(direction object_5)
	(direction object_4)
	(direction object_20)
)
(:goal (and
	(pointing object_1 object_0)
	(pointing object_15 object_21)
	(have_image object_16 object_18)
	(have_image object_0 object_12)
	(have_image object_13 object_12)
	(have_image object_5 object_18)
	(have_image object_4 object_12)
	(have_image object_20 object_6)
))

)
