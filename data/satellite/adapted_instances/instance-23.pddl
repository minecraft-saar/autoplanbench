(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite_0 - satellite
	instrument_0 - instrument
	instrument_1 - instrument
	satellite_1 - satellite
	instrument_2 - instrument
	mode_0 - mode
	mode_1 - mode
	Star0 - direction
	GroundStation1 - direction
	Star2 - direction
	Planet3 - direction
)
(:init
	(supports instrument_0 mode_1)
	(supports instrument_0 mode_0)
	(calibration_target instrument_0 GroundStation1)
	(supports instrument_1 mode_0)
	(supports instrument_1 mode_1)
	(calibration_target instrument_1 GroundStation1)
	(on_board instrument_0 satellite_0)
	(on_board instrument_1 satellite_0)
	(power_avail satellite_0)
	(pointing satellite_0 Star0)
	(supports instrument_2 mode_1)
	(calibration_target instrument_2 GroundStation1)
	(on_board instrument_2 satellite_1)
	(power_avail satellite_1)
	(pointing satellite_1 GroundStation1)
)
(:goal (and
	(pointing satellite_0 Star2)
	(pointing satellite_1 Star0)
	(have_image Star2 mode_1)
	(have_image Planet3 mode_0)
))

)
