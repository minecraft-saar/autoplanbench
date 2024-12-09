(define (problem freecell2-4)
(:domain freecell)
(:objects
	object_9 object_19 object_20 object_15 
	object_0 object_5 object_6 object_12 object_1 object_10
	object_3
	object_2
	object_8
	object_7
	object_16
	object_18
	object_4
	object_13
	object_17
	object_11
	object_14
	
)
(:init
	(successor object_5 object_0)
	(successor object_6 object_5)
	(successor object_12 object_6)
	(successor object_1 object_12)
	(cellspace object_6)
	(clear object_10)
	(on object_10 object_7)
	(bottomcol object_7)
	(clear object_3)
	(on object_3 object_16)
	(bottomcol object_16)
	(clear object_2)
	(on object_2 object_18)
	(bottomcol object_18)
	(clear object_8)
	(on object_8 object_4)
	(bottomcol object_4)
	(colspace object_0)
	(value object_10 object_5)
	(suit object_10 object_15)
	(canstack object_10 object_18)
	(canstack object_10 object_8)
	(value object_3 object_5)
	(suit object_3 object_9)
	(canstack object_3 object_2)
	(canstack object_3 object_7)
	(value object_2 object_6)
	(suit object_2 object_19)
	(value object_8 object_6)
	(suit object_8 object_20)
	(value object_7 object_6)
	(suit object_7 object_15)
	(value object_16 object_5)
	(suit object_16 object_20)
	(canstack object_16 object_2)
	(canstack object_16 object_7)
	(value object_18 object_6)
	(suit object_18 object_9)
	(value object_4 object_5)
	(suit object_4 object_19)
	(canstack object_4 object_18)
	(canstack object_4 object_8)
	(home object_13)
	(value object_13 object_0)
	(suit object_13 object_9)
	(home object_17)
	(value object_17 object_0)
	(suit object_17 object_19)
	(home object_11)
	(value object_11 object_0)
	(suit object_11 object_20)
	(home object_14)
	(value object_14 object_0)
	(suit object_14 object_15)
)
(:goal (and
	(home object_18)
	(home object_2)
	(home object_8)
	(home object_7)
)))
