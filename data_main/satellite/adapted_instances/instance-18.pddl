(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite_0 - satellite
	instrument_0 - instrument
	instrument_1 - instrument
	mode_0 - mode
	mode_1 - mode
	mode_2 - mode
	GroundStation0 - direction
	Star2 - direction
	GroundStation1 - direction
	Phenomenon3 - direction
	Phenomenon4 - direction
	Planet5 - direction
	Phenomenon6 - direction
)
(:init
	(supports instrument_0 mode_1)
	(supports instrument_0 mode_0)
	(supports instrument_0 mode_2)
	(calibration_target instrument_0 GroundStation1)
	(supports instrument_1 mode_0)
	(supports instrument_1 mode_1)
	(supports instrument_1 mode_2)
	(calibration_target instrument_1 GroundStation1)
	(on_board instrument_0 satellite_0)
	(on_board instrument_1 satellite_0)
	(power_avail satellite_0)
	(pointing satellite_0 GroundStation1)
)
(:goal (and
	(have_image Phenomenon3 mode_2)
	(have_image Phenomenon4 mode_1)
	(have_image Planet5 mode_0)
	(have_image Phenomenon6 mode_1)
))

)
