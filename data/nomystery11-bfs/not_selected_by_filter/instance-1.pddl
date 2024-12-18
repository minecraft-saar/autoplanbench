(define (problem transport-l4-t1-p3---int100n150-m25---int100c150---s1---e0)
(:domain transport-strips)

(:objects
location_2 location_1 location_3 location_0 - location
truck_0 - truck
package_1 package_0 package_2 - package
fuellevel_14 fuellevel_9 fuellevel_27 fuellevel_29 fuellevel_20 fuellevel_36 fuellevel_8 fuellevel_25 fuellevel_35 fuellevel_26 fuellevel_6 fuellevel_10 fuellevel_16 fuellevel_2 fuellevel_11 fuellevel_3 fuellevel_33 fuellevel_17 fuellevel_4 fuellevel_5 fuellevel_12 fuellevel_30 fuellevel_7 fuellevel_24 fuellevel_23 fuellevel_22 fuellevel_18 fuellevel_28 fuellevel_19 fuellevel_15 fuellevel_1 fuellevel_32 fuellevel_0 fuellevel_13 fuellevel_34 fuellevel_21 fuellevel_31 - fuellevel
)

(:init
(sum fuellevel_14 fuellevel_14 fuellevel_14)
(sum fuellevel_14 fuellevel_9 fuellevel_9)
(sum fuellevel_14 fuellevel_27 fuellevel_27)
(sum fuellevel_14 fuellevel_29 fuellevel_29)
(sum fuellevel_14 fuellevel_20 fuellevel_20)
(sum fuellevel_14 fuellevel_36 fuellevel_36)
(sum fuellevel_14 fuellevel_8 fuellevel_8)
(sum fuellevel_14 fuellevel_25 fuellevel_25)
(sum fuellevel_14 fuellevel_35 fuellevel_35)
(sum fuellevel_14 fuellevel_26 fuellevel_26)
(sum fuellevel_14 fuellevel_6 fuellevel_6)
(sum fuellevel_14 fuellevel_10 fuellevel_10)
(sum fuellevel_14 fuellevel_16 fuellevel_16)
(sum fuellevel_14 fuellevel_2 fuellevel_2)
(sum fuellevel_14 fuellevel_11 fuellevel_11)
(sum fuellevel_14 fuellevel_3 fuellevel_3)
(sum fuellevel_14 fuellevel_33 fuellevel_33)
(sum fuellevel_14 fuellevel_17 fuellevel_17)
(sum fuellevel_14 fuellevel_4 fuellevel_4)
(sum fuellevel_14 fuellevel_5 fuellevel_5)
(sum fuellevel_14 fuellevel_12 fuellevel_12)
(sum fuellevel_14 fuellevel_30 fuellevel_30)
(sum fuellevel_14 fuellevel_7 fuellevel_7)
(sum fuellevel_14 fuellevel_24 fuellevel_24)
(sum fuellevel_14 fuellevel_23 fuellevel_23)
(sum fuellevel_14 fuellevel_22 fuellevel_22)
(sum fuellevel_14 fuellevel_18 fuellevel_18)
(sum fuellevel_14 fuellevel_28 fuellevel_28)
(sum fuellevel_14 fuellevel_19 fuellevel_19)
(sum fuellevel_14 fuellevel_15 fuellevel_15)
(sum fuellevel_14 fuellevel_1 fuellevel_1)
(sum fuellevel_14 fuellevel_32 fuellevel_32)
(sum fuellevel_14 fuellevel_0 fuellevel_0)
(sum fuellevel_14 fuellevel_13 fuellevel_13)
(sum fuellevel_14 fuellevel_34 fuellevel_34)
(sum fuellevel_14 fuellevel_21 fuellevel_21)
(sum fuellevel_14 fuellevel_31 fuellevel_31)
(sum fuellevel_9 fuellevel_14 fuellevel_9)
(sum fuellevel_9 fuellevel_9 fuellevel_27)
(sum fuellevel_9 fuellevel_27 fuellevel_29)
(sum fuellevel_9 fuellevel_29 fuellevel_20)
(sum fuellevel_9 fuellevel_20 fuellevel_36)
(sum fuellevel_9 fuellevel_36 fuellevel_8)
(sum fuellevel_9 fuellevel_8 fuellevel_25)
(sum fuellevel_9 fuellevel_25 fuellevel_35)
(sum fuellevel_9 fuellevel_35 fuellevel_26)
(sum fuellevel_9 fuellevel_26 fuellevel_6)
(sum fuellevel_9 fuellevel_6 fuellevel_10)
(sum fuellevel_9 fuellevel_10 fuellevel_16)
(sum fuellevel_9 fuellevel_16 fuellevel_2)
(sum fuellevel_9 fuellevel_2 fuellevel_11)
(sum fuellevel_9 fuellevel_11 fuellevel_3)
(sum fuellevel_9 fuellevel_3 fuellevel_33)
(sum fuellevel_9 fuellevel_33 fuellevel_17)
(sum fuellevel_9 fuellevel_17 fuellevel_4)
(sum fuellevel_9 fuellevel_4 fuellevel_5)
(sum fuellevel_9 fuellevel_5 fuellevel_12)
(sum fuellevel_9 fuellevel_12 fuellevel_30)
(sum fuellevel_9 fuellevel_30 fuellevel_7)
(sum fuellevel_9 fuellevel_7 fuellevel_24)
(sum fuellevel_9 fuellevel_24 fuellevel_23)
(sum fuellevel_9 fuellevel_23 fuellevel_22)
(sum fuellevel_9 fuellevel_22 fuellevel_18)
(sum fuellevel_9 fuellevel_18 fuellevel_28)
(sum fuellevel_9 fuellevel_28 fuellevel_19)
(sum fuellevel_9 fuellevel_19 fuellevel_15)
(sum fuellevel_9 fuellevel_15 fuellevel_1)
(sum fuellevel_9 fuellevel_1 fuellevel_32)
(sum fuellevel_9 fuellevel_32 fuellevel_0)
(sum fuellevel_9 fuellevel_0 fuellevel_13)
(sum fuellevel_9 fuellevel_13 fuellevel_34)
(sum fuellevel_9 fuellevel_34 fuellevel_21)
(sum fuellevel_9 fuellevel_21 fuellevel_31)
(sum fuellevel_27 fuellevel_14 fuellevel_27)
(sum fuellevel_27 fuellevel_9 fuellevel_29)
(sum fuellevel_27 fuellevel_27 fuellevel_20)
(sum fuellevel_27 fuellevel_29 fuellevel_36)
(sum fuellevel_27 fuellevel_20 fuellevel_8)
(sum fuellevel_27 fuellevel_36 fuellevel_25)
(sum fuellevel_27 fuellevel_8 fuellevel_35)
(sum fuellevel_27 fuellevel_25 fuellevel_26)
(sum fuellevel_27 fuellevel_35 fuellevel_6)
(sum fuellevel_27 fuellevel_26 fuellevel_10)
(sum fuellevel_27 fuellevel_6 fuellevel_16)
(sum fuellevel_27 fuellevel_10 fuellevel_2)
(sum fuellevel_27 fuellevel_16 fuellevel_11)
(sum fuellevel_27 fuellevel_2 fuellevel_3)
(sum fuellevel_27 fuellevel_11 fuellevel_33)
(sum fuellevel_27 fuellevel_3 fuellevel_17)
(sum fuellevel_27 fuellevel_33 fuellevel_4)
(sum fuellevel_27 fuellevel_17 fuellevel_5)
(sum fuellevel_27 fuellevel_4 fuellevel_12)
(sum fuellevel_27 fuellevel_5 fuellevel_30)
(sum fuellevel_27 fuellevel_12 fuellevel_7)
(sum fuellevel_27 fuellevel_30 fuellevel_24)
(sum fuellevel_27 fuellevel_7 fuellevel_23)
(sum fuellevel_27 fuellevel_24 fuellevel_22)
(sum fuellevel_27 fuellevel_23 fuellevel_18)
(sum fuellevel_27 fuellevel_22 fuellevel_28)
(sum fuellevel_27 fuellevel_18 fuellevel_19)
(sum fuellevel_27 fuellevel_28 fuellevel_15)
(sum fuellevel_27 fuellevel_19 fuellevel_1)
(sum fuellevel_27 fuellevel_15 fuellevel_32)
(sum fuellevel_27 fuellevel_1 fuellevel_0)
(sum fuellevel_27 fuellevel_32 fuellevel_13)
(sum fuellevel_27 fuellevel_0 fuellevel_34)
(sum fuellevel_27 fuellevel_13 fuellevel_21)
(sum fuellevel_27 fuellevel_34 fuellevel_31)
(sum fuellevel_29 fuellevel_14 fuellevel_29)
(sum fuellevel_29 fuellevel_9 fuellevel_20)
(sum fuellevel_29 fuellevel_27 fuellevel_36)
(sum fuellevel_29 fuellevel_29 fuellevel_8)
(sum fuellevel_29 fuellevel_20 fuellevel_25)
(sum fuellevel_29 fuellevel_36 fuellevel_35)
(sum fuellevel_29 fuellevel_8 fuellevel_26)
(sum fuellevel_29 fuellevel_25 fuellevel_6)
(sum fuellevel_29 fuellevel_35 fuellevel_10)
(sum fuellevel_29 fuellevel_26 fuellevel_16)
(sum fuellevel_29 fuellevel_6 fuellevel_2)
(sum fuellevel_29 fuellevel_10 fuellevel_11)
(sum fuellevel_29 fuellevel_16 fuellevel_3)
(sum fuellevel_29 fuellevel_2 fuellevel_33)
(sum fuellevel_29 fuellevel_11 fuellevel_17)
(sum fuellevel_29 fuellevel_3 fuellevel_4)
(sum fuellevel_29 fuellevel_33 fuellevel_5)
(sum fuellevel_29 fuellevel_17 fuellevel_12)
(sum fuellevel_29 fuellevel_4 fuellevel_30)
(sum fuellevel_29 fuellevel_5 fuellevel_7)
(sum fuellevel_29 fuellevel_12 fuellevel_24)
(sum fuellevel_29 fuellevel_30 fuellevel_23)
(sum fuellevel_29 fuellevel_7 fuellevel_22)
(sum fuellevel_29 fuellevel_24 fuellevel_18)
(sum fuellevel_29 fuellevel_23 fuellevel_28)
(sum fuellevel_29 fuellevel_22 fuellevel_19)
(sum fuellevel_29 fuellevel_18 fuellevel_15)
(sum fuellevel_29 fuellevel_28 fuellevel_1)
(sum fuellevel_29 fuellevel_19 fuellevel_32)
(sum fuellevel_29 fuellevel_15 fuellevel_0)
(sum fuellevel_29 fuellevel_1 fuellevel_13)
(sum fuellevel_29 fuellevel_32 fuellevel_34)
(sum fuellevel_29 fuellevel_0 fuellevel_21)
(sum fuellevel_29 fuellevel_13 fuellevel_31)
(sum fuellevel_20 fuellevel_14 fuellevel_20)
(sum fuellevel_20 fuellevel_9 fuellevel_36)
(sum fuellevel_20 fuellevel_27 fuellevel_8)
(sum fuellevel_20 fuellevel_29 fuellevel_25)
(sum fuellevel_20 fuellevel_20 fuellevel_35)
(sum fuellevel_20 fuellevel_36 fuellevel_26)
(sum fuellevel_20 fuellevel_8 fuellevel_6)
(sum fuellevel_20 fuellevel_25 fuellevel_10)
(sum fuellevel_20 fuellevel_35 fuellevel_16)
(sum fuellevel_20 fuellevel_26 fuellevel_2)
(sum fuellevel_20 fuellevel_6 fuellevel_11)
(sum fuellevel_20 fuellevel_10 fuellevel_3)
(sum fuellevel_20 fuellevel_16 fuellevel_33)
(sum fuellevel_20 fuellevel_2 fuellevel_17)
(sum fuellevel_20 fuellevel_11 fuellevel_4)
(sum fuellevel_20 fuellevel_3 fuellevel_5)
(sum fuellevel_20 fuellevel_33 fuellevel_12)
(sum fuellevel_20 fuellevel_17 fuellevel_30)
(sum fuellevel_20 fuellevel_4 fuellevel_7)
(sum fuellevel_20 fuellevel_5 fuellevel_24)
(sum fuellevel_20 fuellevel_12 fuellevel_23)
(sum fuellevel_20 fuellevel_30 fuellevel_22)
(sum fuellevel_20 fuellevel_7 fuellevel_18)
(sum fuellevel_20 fuellevel_24 fuellevel_28)
(sum fuellevel_20 fuellevel_23 fuellevel_19)
(sum fuellevel_20 fuellevel_22 fuellevel_15)
(sum fuellevel_20 fuellevel_18 fuellevel_1)
(sum fuellevel_20 fuellevel_28 fuellevel_32)
(sum fuellevel_20 fuellevel_19 fuellevel_0)
(sum fuellevel_20 fuellevel_15 fuellevel_13)
(sum fuellevel_20 fuellevel_1 fuellevel_34)
(sum fuellevel_20 fuellevel_32 fuellevel_21)
(sum fuellevel_20 fuellevel_0 fuellevel_31)
(sum fuellevel_36 fuellevel_14 fuellevel_36)
(sum fuellevel_36 fuellevel_9 fuellevel_8)
(sum fuellevel_36 fuellevel_27 fuellevel_25)
(sum fuellevel_36 fuellevel_29 fuellevel_35)
(sum fuellevel_36 fuellevel_20 fuellevel_26)
(sum fuellevel_36 fuellevel_36 fuellevel_6)
(sum fuellevel_36 fuellevel_8 fuellevel_10)
(sum fuellevel_36 fuellevel_25 fuellevel_16)
(sum fuellevel_36 fuellevel_35 fuellevel_2)
(sum fuellevel_36 fuellevel_26 fuellevel_11)
(sum fuellevel_36 fuellevel_6 fuellevel_3)
(sum fuellevel_36 fuellevel_10 fuellevel_33)
(sum fuellevel_36 fuellevel_16 fuellevel_17)
(sum fuellevel_36 fuellevel_2 fuellevel_4)
(sum fuellevel_36 fuellevel_11 fuellevel_5)
(sum fuellevel_36 fuellevel_3 fuellevel_12)
(sum fuellevel_36 fuellevel_33 fuellevel_30)
(sum fuellevel_36 fuellevel_17 fuellevel_7)
(sum fuellevel_36 fuellevel_4 fuellevel_24)
(sum fuellevel_36 fuellevel_5 fuellevel_23)
(sum fuellevel_36 fuellevel_12 fuellevel_22)
(sum fuellevel_36 fuellevel_30 fuellevel_18)
(sum fuellevel_36 fuellevel_7 fuellevel_28)
(sum fuellevel_36 fuellevel_24 fuellevel_19)
(sum fuellevel_36 fuellevel_23 fuellevel_15)
(sum fuellevel_36 fuellevel_22 fuellevel_1)
(sum fuellevel_36 fuellevel_18 fuellevel_32)
(sum fuellevel_36 fuellevel_28 fuellevel_0)
(sum fuellevel_36 fuellevel_19 fuellevel_13)
(sum fuellevel_36 fuellevel_15 fuellevel_34)
(sum fuellevel_36 fuellevel_1 fuellevel_21)
(sum fuellevel_36 fuellevel_32 fuellevel_31)
(sum fuellevel_8 fuellevel_14 fuellevel_8)
(sum fuellevel_8 fuellevel_9 fuellevel_25)
(sum fuellevel_8 fuellevel_27 fuellevel_35)
(sum fuellevel_8 fuellevel_29 fuellevel_26)
(sum fuellevel_8 fuellevel_20 fuellevel_6)
(sum fuellevel_8 fuellevel_36 fuellevel_10)
(sum fuellevel_8 fuellevel_8 fuellevel_16)
(sum fuellevel_8 fuellevel_25 fuellevel_2)
(sum fuellevel_8 fuellevel_35 fuellevel_11)
(sum fuellevel_8 fuellevel_26 fuellevel_3)
(sum fuellevel_8 fuellevel_6 fuellevel_33)
(sum fuellevel_8 fuellevel_10 fuellevel_17)
(sum fuellevel_8 fuellevel_16 fuellevel_4)
(sum fuellevel_8 fuellevel_2 fuellevel_5)
(sum fuellevel_8 fuellevel_11 fuellevel_12)
(sum fuellevel_8 fuellevel_3 fuellevel_30)
(sum fuellevel_8 fuellevel_33 fuellevel_7)
(sum fuellevel_8 fuellevel_17 fuellevel_24)
(sum fuellevel_8 fuellevel_4 fuellevel_23)
(sum fuellevel_8 fuellevel_5 fuellevel_22)
(sum fuellevel_8 fuellevel_12 fuellevel_18)
(sum fuellevel_8 fuellevel_30 fuellevel_28)
(sum fuellevel_8 fuellevel_7 fuellevel_19)
(sum fuellevel_8 fuellevel_24 fuellevel_15)
(sum fuellevel_8 fuellevel_23 fuellevel_1)
(sum fuellevel_8 fuellevel_22 fuellevel_32)
(sum fuellevel_8 fuellevel_18 fuellevel_0)
(sum fuellevel_8 fuellevel_28 fuellevel_13)
(sum fuellevel_8 fuellevel_19 fuellevel_34)
(sum fuellevel_8 fuellevel_15 fuellevel_21)
(sum fuellevel_8 fuellevel_1 fuellevel_31)
(sum fuellevel_25 fuellevel_14 fuellevel_25)
(sum fuellevel_25 fuellevel_9 fuellevel_35)
(sum fuellevel_25 fuellevel_27 fuellevel_26)
(sum fuellevel_25 fuellevel_29 fuellevel_6)
(sum fuellevel_25 fuellevel_20 fuellevel_10)
(sum fuellevel_25 fuellevel_36 fuellevel_16)
(sum fuellevel_25 fuellevel_8 fuellevel_2)
(sum fuellevel_25 fuellevel_25 fuellevel_11)
(sum fuellevel_25 fuellevel_35 fuellevel_3)
(sum fuellevel_25 fuellevel_26 fuellevel_33)
(sum fuellevel_25 fuellevel_6 fuellevel_17)
(sum fuellevel_25 fuellevel_10 fuellevel_4)
(sum fuellevel_25 fuellevel_16 fuellevel_5)
(sum fuellevel_25 fuellevel_2 fuellevel_12)
(sum fuellevel_25 fuellevel_11 fuellevel_30)
(sum fuellevel_25 fuellevel_3 fuellevel_7)
(sum fuellevel_25 fuellevel_33 fuellevel_24)
(sum fuellevel_25 fuellevel_17 fuellevel_23)
(sum fuellevel_25 fuellevel_4 fuellevel_22)
(sum fuellevel_25 fuellevel_5 fuellevel_18)
(sum fuellevel_25 fuellevel_12 fuellevel_28)
(sum fuellevel_25 fuellevel_30 fuellevel_19)
(sum fuellevel_25 fuellevel_7 fuellevel_15)
(sum fuellevel_25 fuellevel_24 fuellevel_1)
(sum fuellevel_25 fuellevel_23 fuellevel_32)
(sum fuellevel_25 fuellevel_22 fuellevel_0)
(sum fuellevel_25 fuellevel_18 fuellevel_13)
(sum fuellevel_25 fuellevel_28 fuellevel_34)
(sum fuellevel_25 fuellevel_19 fuellevel_21)
(sum fuellevel_25 fuellevel_15 fuellevel_31)
(sum fuellevel_35 fuellevel_14 fuellevel_35)
(sum fuellevel_35 fuellevel_9 fuellevel_26)
(sum fuellevel_35 fuellevel_27 fuellevel_6)
(sum fuellevel_35 fuellevel_29 fuellevel_10)
(sum fuellevel_35 fuellevel_20 fuellevel_16)
(sum fuellevel_35 fuellevel_36 fuellevel_2)
(sum fuellevel_35 fuellevel_8 fuellevel_11)
(sum fuellevel_35 fuellevel_25 fuellevel_3)
(sum fuellevel_35 fuellevel_35 fuellevel_33)
(sum fuellevel_35 fuellevel_26 fuellevel_17)
(sum fuellevel_35 fuellevel_6 fuellevel_4)
(sum fuellevel_35 fuellevel_10 fuellevel_5)
(sum fuellevel_35 fuellevel_16 fuellevel_12)
(sum fuellevel_35 fuellevel_2 fuellevel_30)
(sum fuellevel_35 fuellevel_11 fuellevel_7)
(sum fuellevel_35 fuellevel_3 fuellevel_24)
(sum fuellevel_35 fuellevel_33 fuellevel_23)
(sum fuellevel_35 fuellevel_17 fuellevel_22)
(sum fuellevel_35 fuellevel_4 fuellevel_18)
(sum fuellevel_35 fuellevel_5 fuellevel_28)
(sum fuellevel_35 fuellevel_12 fuellevel_19)
(sum fuellevel_35 fuellevel_30 fuellevel_15)
(sum fuellevel_35 fuellevel_7 fuellevel_1)
(sum fuellevel_35 fuellevel_24 fuellevel_32)
(sum fuellevel_35 fuellevel_23 fuellevel_0)
(sum fuellevel_35 fuellevel_22 fuellevel_13)
(sum fuellevel_35 fuellevel_18 fuellevel_34)
(sum fuellevel_35 fuellevel_28 fuellevel_21)
(sum fuellevel_35 fuellevel_19 fuellevel_31)
(sum fuellevel_26 fuellevel_14 fuellevel_26)
(sum fuellevel_26 fuellevel_9 fuellevel_6)
(sum fuellevel_26 fuellevel_27 fuellevel_10)
(sum fuellevel_26 fuellevel_29 fuellevel_16)
(sum fuellevel_26 fuellevel_20 fuellevel_2)
(sum fuellevel_26 fuellevel_36 fuellevel_11)
(sum fuellevel_26 fuellevel_8 fuellevel_3)
(sum fuellevel_26 fuellevel_25 fuellevel_33)
(sum fuellevel_26 fuellevel_35 fuellevel_17)
(sum fuellevel_26 fuellevel_26 fuellevel_4)
(sum fuellevel_26 fuellevel_6 fuellevel_5)
(sum fuellevel_26 fuellevel_10 fuellevel_12)
(sum fuellevel_26 fuellevel_16 fuellevel_30)
(sum fuellevel_26 fuellevel_2 fuellevel_7)
(sum fuellevel_26 fuellevel_11 fuellevel_24)
(sum fuellevel_26 fuellevel_3 fuellevel_23)
(sum fuellevel_26 fuellevel_33 fuellevel_22)
(sum fuellevel_26 fuellevel_17 fuellevel_18)
(sum fuellevel_26 fuellevel_4 fuellevel_28)
(sum fuellevel_26 fuellevel_5 fuellevel_19)
(sum fuellevel_26 fuellevel_12 fuellevel_15)
(sum fuellevel_26 fuellevel_30 fuellevel_1)
(sum fuellevel_26 fuellevel_7 fuellevel_32)
(sum fuellevel_26 fuellevel_24 fuellevel_0)
(sum fuellevel_26 fuellevel_23 fuellevel_13)
(sum fuellevel_26 fuellevel_22 fuellevel_34)
(sum fuellevel_26 fuellevel_18 fuellevel_21)
(sum fuellevel_26 fuellevel_28 fuellevel_31)
(sum fuellevel_6 fuellevel_14 fuellevel_6)
(sum fuellevel_6 fuellevel_9 fuellevel_10)
(sum fuellevel_6 fuellevel_27 fuellevel_16)
(sum fuellevel_6 fuellevel_29 fuellevel_2)
(sum fuellevel_6 fuellevel_20 fuellevel_11)
(sum fuellevel_6 fuellevel_36 fuellevel_3)
(sum fuellevel_6 fuellevel_8 fuellevel_33)
(sum fuellevel_6 fuellevel_25 fuellevel_17)
(sum fuellevel_6 fuellevel_35 fuellevel_4)
(sum fuellevel_6 fuellevel_26 fuellevel_5)
(sum fuellevel_6 fuellevel_6 fuellevel_12)
(sum fuellevel_6 fuellevel_10 fuellevel_30)
(sum fuellevel_6 fuellevel_16 fuellevel_7)
(sum fuellevel_6 fuellevel_2 fuellevel_24)
(sum fuellevel_6 fuellevel_11 fuellevel_23)
(sum fuellevel_6 fuellevel_3 fuellevel_22)
(sum fuellevel_6 fuellevel_33 fuellevel_18)
(sum fuellevel_6 fuellevel_17 fuellevel_28)
(sum fuellevel_6 fuellevel_4 fuellevel_19)
(sum fuellevel_6 fuellevel_5 fuellevel_15)
(sum fuellevel_6 fuellevel_12 fuellevel_1)
(sum fuellevel_6 fuellevel_30 fuellevel_32)
(sum fuellevel_6 fuellevel_7 fuellevel_0)
(sum fuellevel_6 fuellevel_24 fuellevel_13)
(sum fuellevel_6 fuellevel_23 fuellevel_34)
(sum fuellevel_6 fuellevel_22 fuellevel_21)
(sum fuellevel_6 fuellevel_18 fuellevel_31)
(sum fuellevel_10 fuellevel_14 fuellevel_10)
(sum fuellevel_10 fuellevel_9 fuellevel_16)
(sum fuellevel_10 fuellevel_27 fuellevel_2)
(sum fuellevel_10 fuellevel_29 fuellevel_11)
(sum fuellevel_10 fuellevel_20 fuellevel_3)
(sum fuellevel_10 fuellevel_36 fuellevel_33)
(sum fuellevel_10 fuellevel_8 fuellevel_17)
(sum fuellevel_10 fuellevel_25 fuellevel_4)
(sum fuellevel_10 fuellevel_35 fuellevel_5)
(sum fuellevel_10 fuellevel_26 fuellevel_12)
(sum fuellevel_10 fuellevel_6 fuellevel_30)
(sum fuellevel_10 fuellevel_10 fuellevel_7)
(sum fuellevel_10 fuellevel_16 fuellevel_24)
(sum fuellevel_10 fuellevel_2 fuellevel_23)
(sum fuellevel_10 fuellevel_11 fuellevel_22)
(sum fuellevel_10 fuellevel_3 fuellevel_18)
(sum fuellevel_10 fuellevel_33 fuellevel_28)
(sum fuellevel_10 fuellevel_17 fuellevel_19)
(sum fuellevel_10 fuellevel_4 fuellevel_15)
(sum fuellevel_10 fuellevel_5 fuellevel_1)
(sum fuellevel_10 fuellevel_12 fuellevel_32)
(sum fuellevel_10 fuellevel_30 fuellevel_0)
(sum fuellevel_10 fuellevel_7 fuellevel_13)
(sum fuellevel_10 fuellevel_24 fuellevel_34)
(sum fuellevel_10 fuellevel_23 fuellevel_21)
(sum fuellevel_10 fuellevel_22 fuellevel_31)
(sum fuellevel_16 fuellevel_14 fuellevel_16)
(sum fuellevel_16 fuellevel_9 fuellevel_2)
(sum fuellevel_16 fuellevel_27 fuellevel_11)
(sum fuellevel_16 fuellevel_29 fuellevel_3)
(sum fuellevel_16 fuellevel_20 fuellevel_33)
(sum fuellevel_16 fuellevel_36 fuellevel_17)
(sum fuellevel_16 fuellevel_8 fuellevel_4)
(sum fuellevel_16 fuellevel_25 fuellevel_5)
(sum fuellevel_16 fuellevel_35 fuellevel_12)
(sum fuellevel_16 fuellevel_26 fuellevel_30)
(sum fuellevel_16 fuellevel_6 fuellevel_7)
(sum fuellevel_16 fuellevel_10 fuellevel_24)
(sum fuellevel_16 fuellevel_16 fuellevel_23)
(sum fuellevel_16 fuellevel_2 fuellevel_22)
(sum fuellevel_16 fuellevel_11 fuellevel_18)
(sum fuellevel_16 fuellevel_3 fuellevel_28)
(sum fuellevel_16 fuellevel_33 fuellevel_19)
(sum fuellevel_16 fuellevel_17 fuellevel_15)
(sum fuellevel_16 fuellevel_4 fuellevel_1)
(sum fuellevel_16 fuellevel_5 fuellevel_32)
(sum fuellevel_16 fuellevel_12 fuellevel_0)
(sum fuellevel_16 fuellevel_30 fuellevel_13)
(sum fuellevel_16 fuellevel_7 fuellevel_34)
(sum fuellevel_16 fuellevel_24 fuellevel_21)
(sum fuellevel_16 fuellevel_23 fuellevel_31)
(sum fuellevel_2 fuellevel_14 fuellevel_2)
(sum fuellevel_2 fuellevel_9 fuellevel_11)
(sum fuellevel_2 fuellevel_27 fuellevel_3)
(sum fuellevel_2 fuellevel_29 fuellevel_33)
(sum fuellevel_2 fuellevel_20 fuellevel_17)
(sum fuellevel_2 fuellevel_36 fuellevel_4)
(sum fuellevel_2 fuellevel_8 fuellevel_5)
(sum fuellevel_2 fuellevel_25 fuellevel_12)
(sum fuellevel_2 fuellevel_35 fuellevel_30)
(sum fuellevel_2 fuellevel_26 fuellevel_7)
(sum fuellevel_2 fuellevel_6 fuellevel_24)
(sum fuellevel_2 fuellevel_10 fuellevel_23)
(sum fuellevel_2 fuellevel_16 fuellevel_22)
(sum fuellevel_2 fuellevel_2 fuellevel_18)
(sum fuellevel_2 fuellevel_11 fuellevel_28)
(sum fuellevel_2 fuellevel_3 fuellevel_19)
(sum fuellevel_2 fuellevel_33 fuellevel_15)
(sum fuellevel_2 fuellevel_17 fuellevel_1)
(sum fuellevel_2 fuellevel_4 fuellevel_32)
(sum fuellevel_2 fuellevel_5 fuellevel_0)
(sum fuellevel_2 fuellevel_12 fuellevel_13)
(sum fuellevel_2 fuellevel_30 fuellevel_34)
(sum fuellevel_2 fuellevel_7 fuellevel_21)
(sum fuellevel_2 fuellevel_24 fuellevel_31)
(sum fuellevel_11 fuellevel_14 fuellevel_11)
(sum fuellevel_11 fuellevel_9 fuellevel_3)
(sum fuellevel_11 fuellevel_27 fuellevel_33)
(sum fuellevel_11 fuellevel_29 fuellevel_17)
(sum fuellevel_11 fuellevel_20 fuellevel_4)
(sum fuellevel_11 fuellevel_36 fuellevel_5)
(sum fuellevel_11 fuellevel_8 fuellevel_12)
(sum fuellevel_11 fuellevel_25 fuellevel_30)
(sum fuellevel_11 fuellevel_35 fuellevel_7)
(sum fuellevel_11 fuellevel_26 fuellevel_24)
(sum fuellevel_11 fuellevel_6 fuellevel_23)
(sum fuellevel_11 fuellevel_10 fuellevel_22)
(sum fuellevel_11 fuellevel_16 fuellevel_18)
(sum fuellevel_11 fuellevel_2 fuellevel_28)
(sum fuellevel_11 fuellevel_11 fuellevel_19)
(sum fuellevel_11 fuellevel_3 fuellevel_15)
(sum fuellevel_11 fuellevel_33 fuellevel_1)
(sum fuellevel_11 fuellevel_17 fuellevel_32)
(sum fuellevel_11 fuellevel_4 fuellevel_0)
(sum fuellevel_11 fuellevel_5 fuellevel_13)
(sum fuellevel_11 fuellevel_12 fuellevel_34)
(sum fuellevel_11 fuellevel_30 fuellevel_21)
(sum fuellevel_11 fuellevel_7 fuellevel_31)
(sum fuellevel_3 fuellevel_14 fuellevel_3)
(sum fuellevel_3 fuellevel_9 fuellevel_33)
(sum fuellevel_3 fuellevel_27 fuellevel_17)
(sum fuellevel_3 fuellevel_29 fuellevel_4)
(sum fuellevel_3 fuellevel_20 fuellevel_5)
(sum fuellevel_3 fuellevel_36 fuellevel_12)
(sum fuellevel_3 fuellevel_8 fuellevel_30)
(sum fuellevel_3 fuellevel_25 fuellevel_7)
(sum fuellevel_3 fuellevel_35 fuellevel_24)
(sum fuellevel_3 fuellevel_26 fuellevel_23)
(sum fuellevel_3 fuellevel_6 fuellevel_22)
(sum fuellevel_3 fuellevel_10 fuellevel_18)
(sum fuellevel_3 fuellevel_16 fuellevel_28)
(sum fuellevel_3 fuellevel_2 fuellevel_19)
(sum fuellevel_3 fuellevel_11 fuellevel_15)
(sum fuellevel_3 fuellevel_3 fuellevel_1)
(sum fuellevel_3 fuellevel_33 fuellevel_32)
(sum fuellevel_3 fuellevel_17 fuellevel_0)
(sum fuellevel_3 fuellevel_4 fuellevel_13)
(sum fuellevel_3 fuellevel_5 fuellevel_34)
(sum fuellevel_3 fuellevel_12 fuellevel_21)
(sum fuellevel_3 fuellevel_30 fuellevel_31)
(sum fuellevel_33 fuellevel_14 fuellevel_33)
(sum fuellevel_33 fuellevel_9 fuellevel_17)
(sum fuellevel_33 fuellevel_27 fuellevel_4)
(sum fuellevel_33 fuellevel_29 fuellevel_5)
(sum fuellevel_33 fuellevel_20 fuellevel_12)
(sum fuellevel_33 fuellevel_36 fuellevel_30)
(sum fuellevel_33 fuellevel_8 fuellevel_7)
(sum fuellevel_33 fuellevel_25 fuellevel_24)
(sum fuellevel_33 fuellevel_35 fuellevel_23)
(sum fuellevel_33 fuellevel_26 fuellevel_22)
(sum fuellevel_33 fuellevel_6 fuellevel_18)
(sum fuellevel_33 fuellevel_10 fuellevel_28)
(sum fuellevel_33 fuellevel_16 fuellevel_19)
(sum fuellevel_33 fuellevel_2 fuellevel_15)
(sum fuellevel_33 fuellevel_11 fuellevel_1)
(sum fuellevel_33 fuellevel_3 fuellevel_32)
(sum fuellevel_33 fuellevel_33 fuellevel_0)
(sum fuellevel_33 fuellevel_17 fuellevel_13)
(sum fuellevel_33 fuellevel_4 fuellevel_34)
(sum fuellevel_33 fuellevel_5 fuellevel_21)
(sum fuellevel_33 fuellevel_12 fuellevel_31)
(sum fuellevel_17 fuellevel_14 fuellevel_17)
(sum fuellevel_17 fuellevel_9 fuellevel_4)
(sum fuellevel_17 fuellevel_27 fuellevel_5)
(sum fuellevel_17 fuellevel_29 fuellevel_12)
(sum fuellevel_17 fuellevel_20 fuellevel_30)
(sum fuellevel_17 fuellevel_36 fuellevel_7)
(sum fuellevel_17 fuellevel_8 fuellevel_24)
(sum fuellevel_17 fuellevel_25 fuellevel_23)
(sum fuellevel_17 fuellevel_35 fuellevel_22)
(sum fuellevel_17 fuellevel_26 fuellevel_18)
(sum fuellevel_17 fuellevel_6 fuellevel_28)
(sum fuellevel_17 fuellevel_10 fuellevel_19)
(sum fuellevel_17 fuellevel_16 fuellevel_15)
(sum fuellevel_17 fuellevel_2 fuellevel_1)
(sum fuellevel_17 fuellevel_11 fuellevel_32)
(sum fuellevel_17 fuellevel_3 fuellevel_0)
(sum fuellevel_17 fuellevel_33 fuellevel_13)
(sum fuellevel_17 fuellevel_17 fuellevel_34)
(sum fuellevel_17 fuellevel_4 fuellevel_21)
(sum fuellevel_17 fuellevel_5 fuellevel_31)
(sum fuellevel_4 fuellevel_14 fuellevel_4)
(sum fuellevel_4 fuellevel_9 fuellevel_5)
(sum fuellevel_4 fuellevel_27 fuellevel_12)
(sum fuellevel_4 fuellevel_29 fuellevel_30)
(sum fuellevel_4 fuellevel_20 fuellevel_7)
(sum fuellevel_4 fuellevel_36 fuellevel_24)
(sum fuellevel_4 fuellevel_8 fuellevel_23)
(sum fuellevel_4 fuellevel_25 fuellevel_22)
(sum fuellevel_4 fuellevel_35 fuellevel_18)
(sum fuellevel_4 fuellevel_26 fuellevel_28)
(sum fuellevel_4 fuellevel_6 fuellevel_19)
(sum fuellevel_4 fuellevel_10 fuellevel_15)
(sum fuellevel_4 fuellevel_16 fuellevel_1)
(sum fuellevel_4 fuellevel_2 fuellevel_32)
(sum fuellevel_4 fuellevel_11 fuellevel_0)
(sum fuellevel_4 fuellevel_3 fuellevel_13)
(sum fuellevel_4 fuellevel_33 fuellevel_34)
(sum fuellevel_4 fuellevel_17 fuellevel_21)
(sum fuellevel_4 fuellevel_4 fuellevel_31)
(sum fuellevel_5 fuellevel_14 fuellevel_5)
(sum fuellevel_5 fuellevel_9 fuellevel_12)
(sum fuellevel_5 fuellevel_27 fuellevel_30)
(sum fuellevel_5 fuellevel_29 fuellevel_7)
(sum fuellevel_5 fuellevel_20 fuellevel_24)
(sum fuellevel_5 fuellevel_36 fuellevel_23)
(sum fuellevel_5 fuellevel_8 fuellevel_22)
(sum fuellevel_5 fuellevel_25 fuellevel_18)
(sum fuellevel_5 fuellevel_35 fuellevel_28)
(sum fuellevel_5 fuellevel_26 fuellevel_19)
(sum fuellevel_5 fuellevel_6 fuellevel_15)
(sum fuellevel_5 fuellevel_10 fuellevel_1)
(sum fuellevel_5 fuellevel_16 fuellevel_32)
(sum fuellevel_5 fuellevel_2 fuellevel_0)
(sum fuellevel_5 fuellevel_11 fuellevel_13)
(sum fuellevel_5 fuellevel_3 fuellevel_34)
(sum fuellevel_5 fuellevel_33 fuellevel_21)
(sum fuellevel_5 fuellevel_17 fuellevel_31)
(sum fuellevel_12 fuellevel_14 fuellevel_12)
(sum fuellevel_12 fuellevel_9 fuellevel_30)
(sum fuellevel_12 fuellevel_27 fuellevel_7)
(sum fuellevel_12 fuellevel_29 fuellevel_24)
(sum fuellevel_12 fuellevel_20 fuellevel_23)
(sum fuellevel_12 fuellevel_36 fuellevel_22)
(sum fuellevel_12 fuellevel_8 fuellevel_18)
(sum fuellevel_12 fuellevel_25 fuellevel_28)
(sum fuellevel_12 fuellevel_35 fuellevel_19)
(sum fuellevel_12 fuellevel_26 fuellevel_15)
(sum fuellevel_12 fuellevel_6 fuellevel_1)
(sum fuellevel_12 fuellevel_10 fuellevel_32)
(sum fuellevel_12 fuellevel_16 fuellevel_0)
(sum fuellevel_12 fuellevel_2 fuellevel_13)
(sum fuellevel_12 fuellevel_11 fuellevel_34)
(sum fuellevel_12 fuellevel_3 fuellevel_21)
(sum fuellevel_12 fuellevel_33 fuellevel_31)
(sum fuellevel_30 fuellevel_14 fuellevel_30)
(sum fuellevel_30 fuellevel_9 fuellevel_7)
(sum fuellevel_30 fuellevel_27 fuellevel_24)
(sum fuellevel_30 fuellevel_29 fuellevel_23)
(sum fuellevel_30 fuellevel_20 fuellevel_22)
(sum fuellevel_30 fuellevel_36 fuellevel_18)
(sum fuellevel_30 fuellevel_8 fuellevel_28)
(sum fuellevel_30 fuellevel_25 fuellevel_19)
(sum fuellevel_30 fuellevel_35 fuellevel_15)
(sum fuellevel_30 fuellevel_26 fuellevel_1)
(sum fuellevel_30 fuellevel_6 fuellevel_32)
(sum fuellevel_30 fuellevel_10 fuellevel_0)
(sum fuellevel_30 fuellevel_16 fuellevel_13)
(sum fuellevel_30 fuellevel_2 fuellevel_34)
(sum fuellevel_30 fuellevel_11 fuellevel_21)
(sum fuellevel_30 fuellevel_3 fuellevel_31)
(sum fuellevel_7 fuellevel_14 fuellevel_7)
(sum fuellevel_7 fuellevel_9 fuellevel_24)
(sum fuellevel_7 fuellevel_27 fuellevel_23)
(sum fuellevel_7 fuellevel_29 fuellevel_22)
(sum fuellevel_7 fuellevel_20 fuellevel_18)
(sum fuellevel_7 fuellevel_36 fuellevel_28)
(sum fuellevel_7 fuellevel_8 fuellevel_19)
(sum fuellevel_7 fuellevel_25 fuellevel_15)
(sum fuellevel_7 fuellevel_35 fuellevel_1)
(sum fuellevel_7 fuellevel_26 fuellevel_32)
(sum fuellevel_7 fuellevel_6 fuellevel_0)
(sum fuellevel_7 fuellevel_10 fuellevel_13)
(sum fuellevel_7 fuellevel_16 fuellevel_34)
(sum fuellevel_7 fuellevel_2 fuellevel_21)
(sum fuellevel_7 fuellevel_11 fuellevel_31)
(sum fuellevel_24 fuellevel_14 fuellevel_24)
(sum fuellevel_24 fuellevel_9 fuellevel_23)
(sum fuellevel_24 fuellevel_27 fuellevel_22)
(sum fuellevel_24 fuellevel_29 fuellevel_18)
(sum fuellevel_24 fuellevel_20 fuellevel_28)
(sum fuellevel_24 fuellevel_36 fuellevel_19)
(sum fuellevel_24 fuellevel_8 fuellevel_15)
(sum fuellevel_24 fuellevel_25 fuellevel_1)
(sum fuellevel_24 fuellevel_35 fuellevel_32)
(sum fuellevel_24 fuellevel_26 fuellevel_0)
(sum fuellevel_24 fuellevel_6 fuellevel_13)
(sum fuellevel_24 fuellevel_10 fuellevel_34)
(sum fuellevel_24 fuellevel_16 fuellevel_21)
(sum fuellevel_24 fuellevel_2 fuellevel_31)
(sum fuellevel_23 fuellevel_14 fuellevel_23)
(sum fuellevel_23 fuellevel_9 fuellevel_22)
(sum fuellevel_23 fuellevel_27 fuellevel_18)
(sum fuellevel_23 fuellevel_29 fuellevel_28)
(sum fuellevel_23 fuellevel_20 fuellevel_19)
(sum fuellevel_23 fuellevel_36 fuellevel_15)
(sum fuellevel_23 fuellevel_8 fuellevel_1)
(sum fuellevel_23 fuellevel_25 fuellevel_32)
(sum fuellevel_23 fuellevel_35 fuellevel_0)
(sum fuellevel_23 fuellevel_26 fuellevel_13)
(sum fuellevel_23 fuellevel_6 fuellevel_34)
(sum fuellevel_23 fuellevel_10 fuellevel_21)
(sum fuellevel_23 fuellevel_16 fuellevel_31)
(sum fuellevel_22 fuellevel_14 fuellevel_22)
(sum fuellevel_22 fuellevel_9 fuellevel_18)
(sum fuellevel_22 fuellevel_27 fuellevel_28)
(sum fuellevel_22 fuellevel_29 fuellevel_19)
(sum fuellevel_22 fuellevel_20 fuellevel_15)
(sum fuellevel_22 fuellevel_36 fuellevel_1)
(sum fuellevel_22 fuellevel_8 fuellevel_32)
(sum fuellevel_22 fuellevel_25 fuellevel_0)
(sum fuellevel_22 fuellevel_35 fuellevel_13)
(sum fuellevel_22 fuellevel_26 fuellevel_34)
(sum fuellevel_22 fuellevel_6 fuellevel_21)
(sum fuellevel_22 fuellevel_10 fuellevel_31)
(sum fuellevel_18 fuellevel_14 fuellevel_18)
(sum fuellevel_18 fuellevel_9 fuellevel_28)
(sum fuellevel_18 fuellevel_27 fuellevel_19)
(sum fuellevel_18 fuellevel_29 fuellevel_15)
(sum fuellevel_18 fuellevel_20 fuellevel_1)
(sum fuellevel_18 fuellevel_36 fuellevel_32)
(sum fuellevel_18 fuellevel_8 fuellevel_0)
(sum fuellevel_18 fuellevel_25 fuellevel_13)
(sum fuellevel_18 fuellevel_35 fuellevel_34)
(sum fuellevel_18 fuellevel_26 fuellevel_21)
(sum fuellevel_18 fuellevel_6 fuellevel_31)
(sum fuellevel_28 fuellevel_14 fuellevel_28)
(sum fuellevel_28 fuellevel_9 fuellevel_19)
(sum fuellevel_28 fuellevel_27 fuellevel_15)
(sum fuellevel_28 fuellevel_29 fuellevel_1)
(sum fuellevel_28 fuellevel_20 fuellevel_32)
(sum fuellevel_28 fuellevel_36 fuellevel_0)
(sum fuellevel_28 fuellevel_8 fuellevel_13)
(sum fuellevel_28 fuellevel_25 fuellevel_34)
(sum fuellevel_28 fuellevel_35 fuellevel_21)
(sum fuellevel_28 fuellevel_26 fuellevel_31)
(sum fuellevel_19 fuellevel_14 fuellevel_19)
(sum fuellevel_19 fuellevel_9 fuellevel_15)
(sum fuellevel_19 fuellevel_27 fuellevel_1)
(sum fuellevel_19 fuellevel_29 fuellevel_32)
(sum fuellevel_19 fuellevel_20 fuellevel_0)
(sum fuellevel_19 fuellevel_36 fuellevel_13)
(sum fuellevel_19 fuellevel_8 fuellevel_34)
(sum fuellevel_19 fuellevel_25 fuellevel_21)
(sum fuellevel_19 fuellevel_35 fuellevel_31)
(sum fuellevel_15 fuellevel_14 fuellevel_15)
(sum fuellevel_15 fuellevel_9 fuellevel_1)
(sum fuellevel_15 fuellevel_27 fuellevel_32)
(sum fuellevel_15 fuellevel_29 fuellevel_0)
(sum fuellevel_15 fuellevel_20 fuellevel_13)
(sum fuellevel_15 fuellevel_36 fuellevel_34)
(sum fuellevel_15 fuellevel_8 fuellevel_21)
(sum fuellevel_15 fuellevel_25 fuellevel_31)
(sum fuellevel_1 fuellevel_14 fuellevel_1)
(sum fuellevel_1 fuellevel_9 fuellevel_32)
(sum fuellevel_1 fuellevel_27 fuellevel_0)
(sum fuellevel_1 fuellevel_29 fuellevel_13)
(sum fuellevel_1 fuellevel_20 fuellevel_34)
(sum fuellevel_1 fuellevel_36 fuellevel_21)
(sum fuellevel_1 fuellevel_8 fuellevel_31)
(sum fuellevel_32 fuellevel_14 fuellevel_32)
(sum fuellevel_32 fuellevel_9 fuellevel_0)
(sum fuellevel_32 fuellevel_27 fuellevel_13)
(sum fuellevel_32 fuellevel_29 fuellevel_34)
(sum fuellevel_32 fuellevel_20 fuellevel_21)
(sum fuellevel_32 fuellevel_36 fuellevel_31)
(sum fuellevel_0 fuellevel_14 fuellevel_0)
(sum fuellevel_0 fuellevel_9 fuellevel_13)
(sum fuellevel_0 fuellevel_27 fuellevel_34)
(sum fuellevel_0 fuellevel_29 fuellevel_21)
(sum fuellevel_0 fuellevel_20 fuellevel_31)
(sum fuellevel_13 fuellevel_14 fuellevel_13)
(sum fuellevel_13 fuellevel_9 fuellevel_34)
(sum fuellevel_13 fuellevel_27 fuellevel_21)
(sum fuellevel_13 fuellevel_29 fuellevel_31)
(sum fuellevel_34 fuellevel_14 fuellevel_34)
(sum fuellevel_34 fuellevel_9 fuellevel_21)
(sum fuellevel_34 fuellevel_27 fuellevel_31)
(sum fuellevel_21 fuellevel_14 fuellevel_21)
(sum fuellevel_21 fuellevel_9 fuellevel_31)
(sum fuellevel_31 fuellevel_14 fuellevel_31)

(connected location_2 location_1)
(fuelcost fuellevel_2 location_2 location_1)
(connected location_2 location_3)
(fuelcost fuellevel_27 location_2 location_3)
(connected location_2 location_0)
(fuelcost fuellevel_4 location_2 location_0)
(connected location_1 location_2)
(fuelcost fuellevel_2 location_1 location_2)
(connected location_1 location_3)
(fuelcost fuellevel_29 location_1 location_3)
(connected location_1 location_0)
(fuelcost fuellevel_10 location_1 location_0)
(connected location_3 location_2)
(fuelcost fuellevel_27 location_3 location_2)
(connected location_3 location_1)
(fuelcost fuellevel_29 location_3 location_1)
(connected location_3 location_0)
(fuelcost fuellevel_8 location_3 location_0)
(connected location_0 location_2)
(fuelcost fuellevel_4 location_0 location_2)
(connected location_0 location_1)
(fuelcost fuellevel_10 location_0 location_1)
(connected location_0 location_3)
(fuelcost fuellevel_8 location_0 location_3)

(at truck_0 location_3)
(fuel truck_0 fuellevel_31)

(at package_1 location_2)
(at package_0 location_1)
(at package_2 location_0)
)

(:goal
(and
(at package_1 location_1)
(at package_0 location_2)
(at package_2 location_2)
)
)
)
