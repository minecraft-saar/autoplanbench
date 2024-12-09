(define (problem freecell2-4)
(:domain freecell)
(:objects
	object_1 object_11 object_15 object_8 
	object_13 object_5 object_12 object_14 object_18 object_19
	object_17
	object_2
	object_16
	object_3
	object_0
	object_10
	object_4
	object_9
	object_7
	object_20
	object_6
	
)
(:init
	(successor object_5 object_13)
	(successor object_12 object_5)
	(successor object_14 object_12)
	(successor object_18 object_14)
	(cellspace object_12)
	(clear object_19)
	(on object_19 object_3)
	(bottomcol object_3)
	(clear object_17)
	(on object_17 object_0)
	(bottomcol object_0)
	(clear object_2)
	(on object_2 object_10)
	(bottomcol object_10)
	(clear object_16)
	(on object_16 object_4)
	(bottomcol object_4)
	(colspace object_13)
	(value object_19 object_5)
	(suit object_19 object_8)
	(canstack object_19 object_10)
	(canstack object_19 object_16)
	(value object_17 object_5)
	(suit object_17 object_1)
	(canstack object_17 object_2)
	(canstack object_17 object_3)
	(value object_2 object_12)
	(suit object_2 object_11)
	(value object_16 object_12)
	(suit object_16 object_15)
	(value object_3 object_12)
	(suit object_3 object_8)
	(value object_0 object_5)
	(suit object_0 object_15)
	(canstack object_0 object_2)
	(canstack object_0 object_3)
	(value object_10 object_12)
	(suit object_10 object_1)
	(value object_4 object_5)
	(suit object_4 object_11)
	(canstack object_4 object_10)
	(canstack object_4 object_16)
	(home object_9)
	(value object_9 object_13)
	(suit object_9 object_1)
	(home object_7)
	(value object_7 object_13)
	(suit object_7 object_11)
	(home object_20)
	(value object_20 object_13)
	(suit object_20 object_15)
	(home object_6)
	(value object_6 object_13)
	(suit object_6 object_8)
)
(:goal (and
	(home object_10)
	(home object_2)
	(home object_16)
	(home object_3)
)))
