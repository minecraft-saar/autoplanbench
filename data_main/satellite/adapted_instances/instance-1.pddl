(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite_0 - satellite
	instrument_0 - instrument
	instrument_1 - instrument
	mode_0 - mode
	GroundStation0 - direction
	GroundStation1 - direction
	Star2 - direction
)
(:init
	(supports instrument_0 mode_0)
	(calibration_target instrument_0 GroundStation1)
	(supports instrument_1 mode_0)
	(calibration_target instrument_1 GroundStation1)
	(on_board instrument_0 satellite_0)
	(on_board instrument_1 satellite_0)
	(power_avail satellite_0)
	(pointing satellite_0 Star2)
)
(:goal (and
	(have_image Star2 mode_0)
))

)
