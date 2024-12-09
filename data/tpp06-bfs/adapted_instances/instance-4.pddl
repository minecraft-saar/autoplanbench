(define (problem tpp)
(:domain tpp-propositional)
(:objects
	goods_2 goods_0 goods_3 goods_1 - goods
	truck_0 - truck
	market_0 - market
	depot_0 - depot
	level_0 level_1 - level)

(:init
	(next level_1 level_0)
	(ready-to-load goods_2 market_0 level_0)
	(ready-to-load goods_0 market_0 level_0)
	(ready-to-load goods_3 market_0 level_0)
	(ready-to-load goods_1 market_0 level_0)
	(stored goods_2 level_0)
	(stored goods_0 level_0)
	(stored goods_3 level_0)
	(stored goods_1 level_0)
	(loaded goods_2 truck_0 level_0)
	(loaded goods_0 truck_0 level_0)
	(loaded goods_3 truck_0 level_0)
	(loaded goods_1 truck_0 level_0)
	(connected depot_0 market_0)
	(connected market_0 depot_0)
	(on-sale goods_2 market_0 level_1)
	(on-sale goods_0 market_0 level_1)
	(on-sale goods_3 market_0 level_1)
	(on-sale goods_1 market_0 level_1)
	(at truck_0 depot_0))

(:goal (and
	(stored goods_2 level_1)
	(stored goods_0 level_1)
	(stored goods_3 level_1)
	(stored goods_1 level_1)))

)
