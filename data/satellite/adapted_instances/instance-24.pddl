(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite_0 - satellite
	instrument_0 - instrument
	instrument_1 - instrument
	instrument_2 - instrument
	instrument_3 - instrument
	satellite_1 - satellite
	instrument_4 - instrument
	mode_0 - mode
	mode_1 - mode
	mode_2 - mode
	GroundStation0 - direction
	Phenomenon1 - direction
	Planet2 - direction
)
(:init
	(supports instrument_0 mode_2)
	(supports instrument_0 mode_0)
	(supports instrument_0 mode_1)
	(calibration_target instrument_0 GroundStation0)
	(supports instrument_1 mode_0)
	(supports instrument_1 mode_1)
	(supports instrument_1 mode_2)
	(calibration_target instrument_1 GroundStation0)
	(supports instrument_2 mode_0)
	(calibration_target instrument_2 GroundStation0)
	(supports instrument_3 mode_0)
	(supports instrument_3 mode_2)
	(supports instrument_3 mode_1)
	(calibration_target instrument_3 GroundStation0)
	(on_board instrument_0 satellite_0)
	(on_board instrument_1 satellite_0)
	(on_board instrument_2 satellite_0)
	(on_board instrument_3 satellite_0)
	(power_avail satellite_0)
	(pointing satellite_0 Planet2)
	(supports instrument_4 mode_1)
	(calibration_target instrument_4 GroundStation0)
	(on_board instrument_4 satellite_1)
	(power_avail satellite_1)
	(pointing satellite_1 GroundStation0)
)
(:goal (and
	(have_image Phenomenon1 mode_2)
	(have_image Planet2 mode_1)
))

)
