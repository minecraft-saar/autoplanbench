;; generated with seed: 1277, size: 5, num-rotations: 1
(define (problem labyrinth-size-5-rotations-1-seed-1277)
(:domain labyrinth)
(:objects
	gridpos_3 gridpos_4 gridpos_0 gridpos_2 gridpos_1  - gridpos
	card_10 card_1 card_24 card_8 card_22 card_17 card_2 card_16 card_12 card_9 card_18 card_15 card_20 card_5 card_3 card_23 card_19 card_6 card_4 card_13 card_11 card_21 card_0 card_7 card_14  - card
)
(:init
	(max-pos gridpos_1)
	(min-pos gridpos_3)

	(next gridpos_4 gridpos_3)
	(next gridpos_0 gridpos_4)
	(next gridpos_2 gridpos_0)
	(next gridpos_1 gridpos_2)

	(card-at card_10 gridpos_3 gridpos_3)
	(card-at card_1 gridpos_4 gridpos_3)
	(card-at card_24 gridpos_0 gridpos_3)
	(card-at card_12 gridpos_2 gridpos_3)
	(card-at card_22 gridpos_1 gridpos_3)
	(card-at card_17 gridpos_3 gridpos_4)
	(card-at card_2 gridpos_4 gridpos_4)
	(card-at card_16 gridpos_0 gridpos_4)
	(card-at card_5 gridpos_2 gridpos_4)
	(card-at card_9 gridpos_1 gridpos_4)
	(card-at card_18 gridpos_3 gridpos_0)
	(card-at card_15 gridpos_4 gridpos_0)
	(card-at card_20 gridpos_0 gridpos_0)
	(card-at card_4 gridpos_2 gridpos_0)
	(card-at card_3 gridpos_1 gridpos_0)
	(card-at card_23 gridpos_3 gridpos_2)
	(card-at card_19 gridpos_4 gridpos_2)
	(card-at card_6 gridpos_0 gridpos_2)
	(card-at card_7 gridpos_2 gridpos_2)
	(card-at card_13 gridpos_1 gridpos_2)
	(card-at card_11 gridpos_3 gridpos_1)
	(card-at card_21 gridpos_4 gridpos_1)
	(card-at card_0 gridpos_0 gridpos_1)
	(card-at card_8 gridpos_2 gridpos_1)
	(card-at card_14 gridpos_1 gridpos_1)

	(blocked card_10 n)
	(blocked card_10 s)

	(blocked card_1 n)

	(blocked card_24 n)
	(blocked card_24 e)


	(blocked card_22 e)
	(blocked card_22 w)

	(blocked card_17 s)


	(blocked card_16 w)

	(blocked card_5 e)

	(blocked card_9 s)
	(blocked card_9 w)

	(blocked card_18 w)

	(blocked card_15 n)
	(blocked card_15 e)

	(blocked card_20 n)
	(blocked card_20 e)

	(blocked card_4 e)
	(blocked card_4 w)

	(blocked card_3 e)
	(blocked card_3 s)

	(blocked card_23 n)
	(blocked card_23 s)

	(blocked card_19 s)

	(blocked card_6 e)
	(blocked card_6 s)

	(blocked card_7 s)

	(blocked card_13 e)
	(blocked card_13 w)

	(blocked card_11 n)
	(blocked card_11 s)

	(blocked card_21 n)
	(blocked card_21 w)

	(blocked card_0 n)
	(blocked card_0 e)

	(blocked card_8 s)
	(blocked card_8 w)

	(blocked card_14 n)
	(blocked card_14 e)


	(robot-at card_10)

)
(:goal
	(and
		(left)
	)
)
	
)
