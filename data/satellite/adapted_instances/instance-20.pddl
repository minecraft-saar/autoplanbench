(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite_0 - satellite
	instrument_0 - instrument
	instrument_1 - instrument
	instrument_2 - instrument
	mode_0 - mode
	mode_1 - mode
	mode_2 - mode
	GroundStation0 - direction
	Star1 - direction
	GroundStation2 - direction
	Star3 - direction
	Star4 - direction
	Planet5 - direction
	Planet6 - direction
)
(:init
	(supports instrument_0 mode_1)
	(supports instrument_0 mode_0)
	(calibration_target instrument_0 GroundStation0)
	(supports instrument_1 mode_0)
	(supports instrument_1 mode_2)
	(calibration_target instrument_1 Star1)
	(supports instrument_2 mode_1)
	(supports instrument_2 mode_2)
	(calibration_target instrument_2 GroundStation2)
	(on_board instrument_0 satellite_0)
	(on_board instrument_1 satellite_0)
	(on_board instrument_2 satellite_0)
	(power_avail satellite_0)
	(pointing satellite_0 GroundStation0)
)
(:goal (and
	(have_image Star3 mode_0)
	(have_image Star4 mode_2)
	(have_image Planet5 mode_1)
	(have_image Planet6 mode_2)
))

)
