;; generated with seed: 1231, size: 4, num-rotations: 2
(define (problem labyrinth-size-4-rotations-2-seed-1231)
(:domain labyrinth)
(:objects
	gridpos_0 gridpos_3 gridpos_2 gridpos_1  - gridpos
	card_11 card_4 card_5 card_14 card_15 card_0 card_8 card_7 card_13 card_2 card_9 card_10 card_12 card_3 card_6 card_1  - card
)
(:init
	(max-pos gridpos_1)
	(min-pos gridpos_0)

	(next gridpos_3 gridpos_0)
	(next gridpos_2 gridpos_3)
	(next gridpos_1 gridpos_2)

	(card-at card_11 gridpos_0 gridpos_0)
	(card-at card_0 gridpos_3 gridpos_0)
	(card-at card_5 gridpos_2 gridpos_0)
	(card-at card_14 gridpos_1 gridpos_0)
	(card-at card_15 gridpos_0 gridpos_3)
	(card-at card_2 gridpos_3 gridpos_3)
	(card-at card_8 gridpos_2 gridpos_3)
	(card-at card_7 gridpos_1 gridpos_3)
	(card-at card_10 gridpos_0 gridpos_2)
	(card-at card_13 gridpos_3 gridpos_2)
	(card-at card_3 gridpos_2 gridpos_2)
	(card-at card_9 gridpos_1 gridpos_2)
	(card-at card_12 gridpos_0 gridpos_1)
	(card-at card_4 gridpos_3 gridpos_1)
	(card-at card_6 gridpos_2 gridpos_1)
	(card-at card_1 gridpos_1 gridpos_1)

	(blocked card_11 n)
	(blocked card_11 s)

	(blocked card_0 s)
	(blocked card_0 w)

	(blocked card_5 n)
	(blocked card_5 w)

	(blocked card_14 s)

	(blocked card_15 s)

	(blocked card_2 s)
	(blocked card_2 w)

	(blocked card_8 n)
	(blocked card_8 e)

	(blocked card_7 e)
	(blocked card_7 w)

	(blocked card_10 n)
	(blocked card_10 e)

	(blocked card_13 s)
	(blocked card_13 w)

	(blocked card_3 e)

	(blocked card_9 w)

	(blocked card_12 e)
	(blocked card_12 w)

	(blocked card_4 n)
	(blocked card_4 e)


	(blocked card_1 w)


	(robot-at card_11)

)
(:goal
	(and
		(left)
	)
)
	
)
