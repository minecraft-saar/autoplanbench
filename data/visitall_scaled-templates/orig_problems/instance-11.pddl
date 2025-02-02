(define (problem grid-13)
(:domain grid-visit-all)
(:objects 
	loc-x0-y0
	loc-x0-y1
	loc-x1-y0
	loc-x1-y1
	loc-x2-y0
	loc-x2-y1
	loc-x3-y0
	loc-x3-y1
	loc-x4-y0
	loc-x4-y1
	loc-x5-y0
	loc-x5-y1
	loc-x6-y0
	loc-x6-y1
	loc-x7-y0
	loc-x7-y1
	loc-x8-y0
	loc-x8-y1
	loc-x9-y0
	loc-x9-y1
	loc-x10-y0
	loc-x10-y1
	loc-x11-y0
	loc-x11-y1
	loc-x12-y0
	loc-x12-y1
- place 
        
)
(:init
	(at-robot loc-x11-y0)
	(visited loc-x11-y0)
	(connected loc-x0-y0 loc-x1-y0)
 	(connected loc-x0-y0 loc-x0-y1)
 	(connected loc-x0-y1 loc-x1-y1)
 	(connected loc-x0-y1 loc-x0-y0)
 	(connected loc-x1-y0 loc-x0-y0)
 	(connected loc-x1-y0 loc-x2-y0)
 	(connected loc-x1-y0 loc-x1-y1)
 	(connected loc-x1-y1 loc-x0-y1)
 	(connected loc-x1-y1 loc-x2-y1)
 	(connected loc-x1-y1 loc-x1-y0)
 	(connected loc-x2-y0 loc-x1-y0)
 	(connected loc-x2-y0 loc-x3-y0)
 	(connected loc-x2-y0 loc-x2-y1)
 	(connected loc-x2-y1 loc-x1-y1)
 	(connected loc-x2-y1 loc-x3-y1)
 	(connected loc-x2-y1 loc-x2-y0)
 	(connected loc-x3-y0 loc-x2-y0)
 	(connected loc-x3-y0 loc-x4-y0)
 	(connected loc-x3-y0 loc-x3-y1)
 	(connected loc-x3-y1 loc-x2-y1)
 	(connected loc-x3-y1 loc-x4-y1)
 	(connected loc-x3-y1 loc-x3-y0)
 	(connected loc-x4-y0 loc-x3-y0)
 	(connected loc-x4-y0 loc-x5-y0)
 	(connected loc-x4-y0 loc-x4-y1)
 	(connected loc-x4-y1 loc-x3-y1)
 	(connected loc-x4-y1 loc-x5-y1)
 	(connected loc-x4-y1 loc-x4-y0)
 	(connected loc-x5-y0 loc-x4-y0)
 	(connected loc-x5-y0 loc-x6-y0)
 	(connected loc-x5-y0 loc-x5-y1)
 	(connected loc-x5-y1 loc-x4-y1)
 	(connected loc-x5-y1 loc-x6-y1)
 	(connected loc-x5-y1 loc-x5-y0)
 	(connected loc-x6-y0 loc-x5-y0)
 	(connected loc-x6-y0 loc-x7-y0)
 	(connected loc-x6-y0 loc-x6-y1)
 	(connected loc-x6-y1 loc-x5-y1)
 	(connected loc-x6-y1 loc-x7-y1)
 	(connected loc-x6-y1 loc-x6-y0)
 	(connected loc-x7-y0 loc-x6-y0)
 	(connected loc-x7-y0 loc-x8-y0)
 	(connected loc-x7-y0 loc-x7-y1)
 	(connected loc-x7-y1 loc-x6-y1)
 	(connected loc-x7-y1 loc-x8-y1)
 	(connected loc-x7-y1 loc-x7-y0)
 	(connected loc-x8-y0 loc-x7-y0)
 	(connected loc-x8-y0 loc-x9-y0)
 	(connected loc-x8-y0 loc-x8-y1)
 	(connected loc-x8-y1 loc-x7-y1)
 	(connected loc-x8-y1 loc-x9-y1)
 	(connected loc-x8-y1 loc-x8-y0)
 	(connected loc-x9-y0 loc-x8-y0)
 	(connected loc-x9-y0 loc-x10-y0)
 	(connected loc-x9-y0 loc-x9-y1)
 	(connected loc-x9-y1 loc-x8-y1)
 	(connected loc-x9-y1 loc-x10-y1)
 	(connected loc-x9-y1 loc-x9-y0)
 	(connected loc-x10-y0 loc-x9-y0)
 	(connected loc-x10-y0 loc-x11-y0)
 	(connected loc-x10-y0 loc-x10-y1)
 	(connected loc-x10-y1 loc-x9-y1)
 	(connected loc-x10-y1 loc-x11-y1)
 	(connected loc-x10-y1 loc-x10-y0)
 	(connected loc-x11-y0 loc-x10-y0)
 	(connected loc-x11-y0 loc-x12-y0)
 	(connected loc-x11-y0 loc-x11-y1)
 	(connected loc-x11-y1 loc-x10-y1)
 	(connected loc-x11-y1 loc-x12-y1)
 	(connected loc-x11-y1 loc-x11-y0)
 	(connected loc-x12-y0 loc-x11-y0)
 	(connected loc-x12-y0 loc-x12-y1)
 	(connected loc-x12-y1 loc-x11-y1)
 	(connected loc-x12-y1 loc-x12-y0)
 
)
(:goal
(and 
	(visited loc-x0-y0)
	(visited loc-x0-y1)
	(visited loc-x1-y0)
	(visited loc-x1-y1)
	(visited loc-x2-y0)
	(visited loc-x2-y1)
	(visited loc-x3-y0)
	(visited loc-x3-y1)
	(visited loc-x4-y0)
	(visited loc-x4-y1)
	(visited loc-x5-y0)
	(visited loc-x5-y1)
	(visited loc-x6-y0)
	(visited loc-x6-y1)
	(visited loc-x7-y0)
	(visited loc-x7-y1)
	(visited loc-x8-y0)
	(visited loc-x8-y1)
	(visited loc-x9-y0)
	(visited loc-x9-y1)
	(visited loc-x10-y0)
	(visited loc-x10-y1)
	(visited loc-x11-y0)
	(visited loc-x11-y1)
	(visited loc-x12-y0)
	(visited loc-x12-y1)
)
)
)
