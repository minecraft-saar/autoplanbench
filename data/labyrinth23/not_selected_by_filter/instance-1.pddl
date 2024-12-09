;; generated with seed: 1229, size: 3, num-rotations: 1
(define (problem labyrinth-size-3-rotations-1-seed-1229)
(:domain labyrinth)
(:objects
	gridpos_2 gridpos_0 gridpos_1  - gridpos
	card_0 card_8 card_3 card_1 card_5 card_2 card_4 card_6 card_7  - card
)
(:init
	(max-pos gridpos_1)
	(min-pos gridpos_2)

	(next gridpos_0 gridpos_2)
	(next gridpos_1 gridpos_0)

	(card-at card_0 gridpos_2 gridpos_2)
	(card-at card_5 gridpos_0 gridpos_2)
	(card-at card_3 gridpos_1 gridpos_2)
	(card-at card_1 gridpos_2 gridpos_0)
	(card-at card_6 gridpos_0 gridpos_0)
	(card-at card_2 gridpos_1 gridpos_0)
	(card-at card_4 gridpos_2 gridpos_1)
	(card-at card_8 gridpos_0 gridpos_1)
	(card-at card_7 gridpos_1 gridpos_1)

	(blocked card_0 n)

	(blocked card_5 w)

	(blocked card_3 n)

	(blocked card_1 n)

	(blocked card_6 s)
	(blocked card_6 w)

	(blocked card_2 e)

	(blocked card_4 e)
	(blocked card_4 s)

	(blocked card_8 n)

	(blocked card_7 e)


	(robot-at card_0)

)
(:goal
	(and
		(left)
	)
)
	
)
