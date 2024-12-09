(define (problem freecell3-4)
(:domain freecell)
(:objects
	object_23 object_7 object_20 object_21 
	object_5 object_22 object_8 object_2 object_15 object_24 object_10
	object_0
	object_12
	object_18
	object_17
	object_1
	object_11
	object_13
	object_19
	object_6
	object_9
	object_4
	object_16
	object_3
	object_14
	object_25
	
)
(:init
	(successor object_22 object_5)
	(successor object_8 object_22)
	(successor object_2 object_8)
	(successor object_15 object_2)
	(successor object_24 object_15)
	(cellspace object_8)
	(clear object_10)
	(on object_10 object_1)
	(on object_1 object_9)
	(bottomcol object_9)
	(clear object_0)
	(on object_0 object_11)
	(on object_11 object_4)
	(bottomcol object_4)
	(clear object_12)
	(on object_12 object_13)
	(bottomcol object_13)
	(clear object_18)
	(on object_18 object_19)
	(bottomcol object_19)
	(clear object_17)
	(on object_17 object_6)
	(bottomcol object_6)
	(colspace object_5)
	(value object_10 object_2)
	(suit object_10 object_21)
	(value object_0 object_8)
	(suit object_0 object_7)
	(canstack object_0 object_11)
	(canstack object_0 object_17)
	(value object_12 object_8)
	(suit object_12 object_21)
	(canstack object_12 object_11)
	(canstack object_12 object_17)
	(value object_18 object_22)
	(suit object_18 object_7)
	(canstack object_18 object_6)
	(canstack object_18 object_1)
	(value object_17 object_2)
	(suit object_17 object_20)
	(value object_1 object_8)
	(suit object_1 object_20)
	(canstack object_1 object_13)
	(canstack object_1 object_10)
	(value object_11 object_2)
	(suit object_11 object_23)
	(value object_13 object_2)
	(suit object_13 object_7)
	(value object_19 object_22)
	(suit object_19 object_23)
	(canstack object_19 object_0)
	(canstack object_19 object_12)
	(value object_6 object_8)
	(suit object_6 object_23)
	(canstack object_6 object_13)
	(canstack object_6 object_10)
	(value object_9 object_22)
	(suit object_9 object_20)
	(canstack object_9 object_0)
	(canstack object_9 object_12)
	(value object_4 object_22)
	(suit object_4 object_21)
	(canstack object_4 object_6)
	(canstack object_4 object_1)
	(home object_16)
	(value object_16 object_5)
	(suit object_16 object_23)
	(home object_3)
	(value object_3 object_5)
	(suit object_3 object_7)
	(home object_14)
	(value object_14 object_5)
	(suit object_14 object_20)
	(home object_25)
	(value object_25 object_5)
	(suit object_25 object_21)
)
(:goal (and
	(home object_11)
	(home object_13)
	(home object_17)
	(home object_10)
)))
