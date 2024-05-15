(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite_0 - satellite
	instrument_0 - instrument
	mode_0 - mode
	mode_1 - mode
	mode_2 - mode
	Star1 - direction
	GroundStation2 - direction
	GroundStation0 - direction
	Star3 - direction
	Planet4 - direction
	Phenomenon5 - direction
)
(:init
	(supports instrument_0 mode_0)
	(supports instrument_0 mode_2)
	(supports instrument_0 mode_1)
	(calibration_target instrument_0 GroundStation0)
	(on_board instrument_0 satellite_0)
	(power_avail satellite_0)
	(pointing satellite_0 Star3)
)
(:goal (and
	(have_image Star3 mode_2)
	(have_image Planet4 mode_0)
	(have_image Phenomenon5 mode_0)
))

)
