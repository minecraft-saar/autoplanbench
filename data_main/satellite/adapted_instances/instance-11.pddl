(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite_0 - satellite
	instrument_0 - instrument
	instrument_1 - instrument
	mode_0 - mode
	mode_1 - mode
	mode_2 - mode
	Star1 - direction
	GroundStation0 - direction
	Planet2 - direction
	Phenomenon3 - direction
)
(:init
	(supports instrument_0 mode_0)
	(supports instrument_0 mode_2)
	(supports instrument_0 mode_1)
	(calibration_target instrument_0 GroundStation0)
	(supports instrument_1 mode_0)
	(calibration_target instrument_1 GroundStation0)
	(on_board instrument_0 satellite_0)
	(on_board instrument_1 satellite_0)
	(power_avail satellite_0)
	(pointing satellite_0 GroundStation0)
)
(:goal (and
	(have_image Planet2 mode_0)
	(have_image Phenomenon3 mode_1)
))

)
