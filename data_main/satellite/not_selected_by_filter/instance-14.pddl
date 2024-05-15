(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite_0 - satellite
	instrument_0 - instrument
	mode_0 - mode
	mode_1 - mode
	mode_2 - mode
	GroundStation0 - direction
	GroundStation1 - direction
	Star2 - direction
	Star3 - direction
	Planet4 - direction
	Planet5 - direction
)
(:init
	(supports instrument_0 mode_1)
	(supports instrument_0 mode_2)
	(supports instrument_0 mode_0)
	(calibration_target instrument_0 Star2)
	(on_board instrument_0 satellite_0)
	(power_avail satellite_0)
	(pointing satellite_0 Planet4)
)
(:goal (and
	(have_image Star3 mode_0)
	(have_image Planet4 mode_1)
	(have_image Planet5 mode_1)
))

)
