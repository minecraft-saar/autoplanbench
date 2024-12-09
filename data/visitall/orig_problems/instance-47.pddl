(define (problem grid-2)
(:domain grid-visit-all)
(:objects 
	loc-x0-y1
	loc-x0-y2
	loc-x0-y3
	loc-x1-y1
	loc-x1-y2
	loc-x1-y3
- place 
        
)
(:init
	(at-robot loc-x1-y1)
	(visited loc-x1-y1)
	(connected loc-x0-y1 loc-x1-y1)
 	(connected loc-x0-y1 loc-x0-y2)
 	(connected loc-x0-y2 loc-x1-y2)
 	(connected loc-x0-y2 loc-x0-y1)
 	(connected loc-x0-y2 loc-x0-y3)
 	(connected loc-x0-y3 loc-x1-y3)
 	(connected loc-x0-y3 loc-x0-y2)
 	(connected loc-x1-y1 loc-x0-y1)
 	(connected loc-x1-y1 loc-x1-y2)
 	(connected loc-x1-y2 loc-x0-y2)
 	(connected loc-x1-y2 loc-x1-y1)
 	(connected loc-x1-y2 loc-x1-y3)
 	(connected loc-x1-y3 loc-x0-y3)
 	(connected loc-x1-y3 loc-x1-y2)
 
)
(:goal
(and 
	(visited loc-x0-y1)
	(visited loc-x0-y2)
	(visited loc-x0-y3)
	(visited loc-x1-y1)
	(visited loc-x1-y2)
)
)
)
