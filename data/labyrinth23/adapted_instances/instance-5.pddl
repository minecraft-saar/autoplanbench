;; generated with seed: 1259, size: 4, num-rotations: 5
(define (problem labyrinth-size-4-rotations-5-seed-1259)
(:domain labyrinth)
(:objects
	gridpos_0 gridpos_3 gridpos_1 gridpos_2  - gridpos
	card_4 card_0 card_9 card_11 card_6 card_2 card_13 card_15 card_7 card_10 card_12 card_14 card_5 card_8 card_1 card_3  - card
)
(:init
	(max-pos gridpos_2)
	(min-pos gridpos_0)

	(next gridpos_3 gridpos_0)
	(next gridpos_1 gridpos_3)
	(next gridpos_2 gridpos_1)

	(card-at card_4 gridpos_0 gridpos_0)
	(card-at card_6 gridpos_3 gridpos_0)
	(card-at card_2 gridpos_1 gridpos_0)
	(card-at card_11 gridpos_2 gridpos_0)
	(card-at card_9 gridpos_0 gridpos_3)
	(card-at card_15 gridpos_3 gridpos_3)
	(card-at card_10 gridpos_1 gridpos_3)
	(card-at card_13 gridpos_2 gridpos_3)
	(card-at card_7 gridpos_0 gridpos_1)
	(card-at card_8 gridpos_3 gridpos_1)
	(card-at card_12 gridpos_1 gridpos_1)
	(card-at card_14 gridpos_2 gridpos_1)
	(card-at card_5 gridpos_0 gridpos_2)
	(card-at card_0 gridpos_3 gridpos_2)
	(card-at card_1 gridpos_1 gridpos_2)
	(card-at card_3 gridpos_2 gridpos_2)

	(blocked card_4 s)
	(blocked card_4 w)

	(blocked card_6 n)
	(blocked card_6 s)

	(blocked card_2 s)
	(blocked card_2 w)

	(blocked card_11 e)

	(blocked card_9 n)


	(blocked card_10 w)

	(blocked card_13 n)
	(blocked card_13 w)

	(blocked card_7 e)

	(blocked card_8 e)
	(blocked card_8 s)

	(blocked card_12 w)

	(blocked card_14 n)
	(blocked card_14 e)

	(blocked card_5 e)
	(blocked card_5 s)

	(blocked card_0 n)
	(blocked card_0 s)

	(blocked card_1 s)
	(blocked card_1 w)

	(blocked card_3 n)
	(blocked card_3 e)


	(robot-at card_4)

)
(:goal
	(and
		(left)
	)
)
	
)
