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
	GroundStation2 - direction
	Star3 - direction
	Star4 - direction
	Star5 - direction
	Phenomenon6 - direction
)
(:init
	(supports instrument_0 mode_0)
	(supports instrument_0 mode_1)
	(supports instrument_0 mode_2)
	(calibration_target instrument_0 GroundStation2)
	(on_board instrument_0 satellite_0)
	(power_avail satellite_0)
	(pointing satellite_0 GroundStation2)
)
(:goal (and
	(have_image Star3 mode_1)
	(have_image Star4 mode_0)
	(have_image Star5 mode_0)
	(have_image Phenomenon6 mode_1)
))

)
