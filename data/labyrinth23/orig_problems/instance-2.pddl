;; Generated with seed: 1231, size: 4, num-rotations: 2
(define (problem labyrinth-size-4-rotations-2-seed-1231)
(:domain labyrinth)
(:objects
	pos0 pos1 pos2 pos3  - gridpos
	card0 card1 card2 card3 card4 card5 card6 card7 card8 card9 card10 card11 card12 card13 card14 card15  - card
)
(:init
	(MAX-POS pos3)
	(MIN-POS pos0)

	(NEXT pos1 pos0)
	(NEXT pos2 pos1)
	(NEXT pos3 pos2)

	(card-at card0 pos0 pos0)
	(card-at card5 pos1 pos0)
	(card-at card2 pos2 pos0)
	(card-at card3 pos3 pos0)
	(card-at card4 pos0 pos1)
	(card-at card9 pos1 pos1)
	(card-at card6 pos2 pos1)
	(card-at card7 pos3 pos1)
	(card-at card11 pos0 pos2)
	(card-at card8 pos1 pos2)
	(card-at card13 pos2 pos2)
	(card-at card10 pos3 pos2)
	(card-at card12 pos0 pos3)
	(card-at card1 pos1 pos3)
	(card-at card14 pos2 pos3)
	(card-at card15 pos3 pos3)

	(BLOCKED card0 N)
	(BLOCKED card0 S)

	(BLOCKED card5 S)
	(BLOCKED card5 W)

	(BLOCKED card2 N)
	(BLOCKED card2 W)

	(BLOCKED card3 S)

	(BLOCKED card4 S)

	(BLOCKED card9 S)
	(BLOCKED card9 W)

	(BLOCKED card6 N)
	(BLOCKED card6 E)

	(BLOCKED card7 E)
	(BLOCKED card7 W)

	(BLOCKED card11 N)
	(BLOCKED card11 E)

	(BLOCKED card8 S)
	(BLOCKED card8 W)

	(BLOCKED card13 E)

	(BLOCKED card10 W)

	(BLOCKED card12 E)
	(BLOCKED card12 W)

	(BLOCKED card1 N)
	(BLOCKED card1 E)


	(BLOCKED card15 W)


	(robot-at card0)

)
(:goal
	(and
		(left)
	)
)
	
)
