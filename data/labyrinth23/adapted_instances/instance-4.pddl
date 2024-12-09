;; generated with seed: 1249, size: 4, num-rotations: 4
(define (problem labyrinth-size-4-rotations-4-seed-1249)
(:domain labyrinth)
(:objects
	gridpos_3 gridpos_2 gridpos_0 gridpos_1  - gridpos
	card_5 card_14 card_15 card_11 card_8 card_4 card_10 card_6 card_7 card_12 card_3 card_9 card_13 card_1 card_2 card_0  - card
)
(:init
	(max-pos gridpos_1)
	(min-pos gridpos_3)

	(next gridpos_2 gridpos_3)
	(next gridpos_0 gridpos_2)
	(next gridpos_1 gridpos_0)

	(card-at card_5 gridpos_3 gridpos_3)
	(card-at card_1 gridpos_2 gridpos_3)
	(card-at card_15 gridpos_0 gridpos_3)
	(card-at card_11 gridpos_1 gridpos_3)
	(card-at card_14 gridpos_3 gridpos_2)
	(card-at card_10 gridpos_2 gridpos_2)
	(card-at card_6 gridpos_0 gridpos_2)
	(card-at card_8 gridpos_1 gridpos_2)
	(card-at card_3 gridpos_3 gridpos_0)
	(card-at card_9 gridpos_2 gridpos_0)
	(card-at card_7 gridpos_0 gridpos_0)
	(card-at card_4 gridpos_1 gridpos_0)
	(card-at card_13 gridpos_3 gridpos_1)
	(card-at card_12 gridpos_2 gridpos_1)
	(card-at card_2 gridpos_0 gridpos_1)
	(card-at card_0 gridpos_1 gridpos_1)

	(blocked card_5 n)
	(blocked card_5 w)

	(blocked card_1 e)
	(blocked card_1 s)

	(blocked card_15 s)
	(blocked card_15 w)

	(blocked card_11 e)

	(blocked card_14 n)
	(blocked card_14 e)

	(blocked card_10 n)
	(blocked card_10 s)

	(blocked card_6 e)

	(blocked card_8 e)
	(blocked card_8 w)

	(blocked card_3 n)
	(blocked card_3 w)

	(blocked card_9 e)
	(blocked card_9 s)

	(blocked card_7 s)
	(blocked card_7 w)

	(blocked card_4 s)
	(blocked card_4 w)

	(blocked card_13 s)


	(blocked card_2 s)
	(blocked card_2 w)

	(blocked card_0 n)
	(blocked card_0 e)


	(robot-at card_5)

)
(:goal
	(and
		(left)
	)
)
	
)
