;; generated with seed: 1237, size: 4, num-rotations: 3
(define (problem labyrinth-size-4-rotations-3-seed-1237)
(:domain labyrinth)
(:objects
	gridpos_2 gridpos_1 gridpos_0 gridpos_3  - gridpos
	card_6 card_15 card_13 card_7 card_5 card_0 card_1 card_3 card_9 card_11 card_10 card_8 card_2 card_14 card_4 card_12  - card
)
(:init
	(max-pos gridpos_3)
	(min-pos gridpos_2)

	(next gridpos_1 gridpos_2)
	(next gridpos_0 gridpos_1)
	(next gridpos_3 gridpos_0)

	(card-at card_6 gridpos_2 gridpos_2)
	(card-at card_0 gridpos_1 gridpos_2)
	(card-at card_4 gridpos_0 gridpos_2)
	(card-at card_7 gridpos_3 gridpos_2)
	(card-at card_5 gridpos_2 gridpos_1)
	(card-at card_9 gridpos_1 gridpos_1)
	(card-at card_13 gridpos_0 gridpos_1)
	(card-at card_3 gridpos_3 gridpos_1)
	(card-at card_8 gridpos_2 gridpos_0)
	(card-at card_14 gridpos_1 gridpos_0)
	(card-at card_1 gridpos_0 gridpos_0)
	(card-at card_10 gridpos_3 gridpos_0)
	(card-at card_2 gridpos_2 gridpos_3)
	(card-at card_15 gridpos_1 gridpos_3)
	(card-at card_11 gridpos_0 gridpos_3)
	(card-at card_12 gridpos_3 gridpos_3)

	(blocked card_6 s)
	(blocked card_6 w)

	(blocked card_0 n)
	(blocked card_0 w)

	(blocked card_4 n)
	(blocked card_4 w)

	(blocked card_7 e)

	(blocked card_5 e)
	(blocked card_5 s)

	(blocked card_9 e)
	(blocked card_9 w)

	(blocked card_13 n)
	(blocked card_13 s)

	(blocked card_3 e)
	(blocked card_3 w)

	(blocked card_8 w)

	(blocked card_14 n)
	(blocked card_14 s)

	(blocked card_1 n)
	(blocked card_1 s)

	(blocked card_10 n)
	(blocked card_10 s)

	(blocked card_2 e)
	(blocked card_2 w)

	(blocked card_15 n)
	(blocked card_15 s)

	(blocked card_11 e)
	(blocked card_11 w)

	(blocked card_12 w)


	(robot-at card_6)

)
(:goal
	(and
		(left)
	)
)
	
)
