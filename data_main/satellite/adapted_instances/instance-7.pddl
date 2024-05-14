(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite_0 - satellite
	instrument_0 - instrument
	instrument_1 - instrument
	mode_0 - mode
	mode_1 - mode
	mode_2 - mode
	Star0 - direction
	Planet1 - direction
	Phenomenon2 - direction
)
(:init
	(supports instrument_0 mode_0)
	(supports instrument_0 mode_1)
	(calibration_target instrument_0 Star0)
	(supports instrument_1 mode_2)
	(supports instrument_1 mode_0)
	(supports instrument_1 mode_1)
	(calibration_target instrument_1 Star0)
	(on_board instrument_0 satellite_0)
	(on_board instrument_1 satellite_0)
	(power_avail satellite_0)
	(pointing satellite_0 Star0)
)
(:goal (and
	(pointing satellite_0 Planet1)
	(have_image Planet1 mode_1)
	(have_image Phenomenon2 mode_1)
))

)
