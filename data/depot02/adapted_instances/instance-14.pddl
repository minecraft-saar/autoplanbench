(define (problem depotprob8715) (:domain depot)
(:objects
	object_13 object_62 object_41 object_10 object_50 object_17 object_44 object_11 object_40 object_31 object_27 object_48 object_26 object_60 object_7 object_16 object_18 object_5 object_39 object_12 object_4 object_45 object_37 object_28 object_21 object_52 object_33 object_14 object_38 object_47 object_0 object_42 object_57 object_25 object_24 object_61 object_51 object_20 object_19 object_6 object_53 object_55 object_29 object_3 object_8 object_56 object_2 object_46 object_58 object_35 object_22 object_49 object_1 object_43 object_32 object_59 object_23 object_9 object_54 object_34 object_30 object_15 object_36 )
(:init
	(pallet object_39)
	(surface object_39)
	(at object_39 object_13)
	(clear object_6)
	(pallet object_12)
	(surface object_12)
	(at object_12 object_62)
	(clear object_3)
	(pallet object_4)
	(surface object_4)
	(at object_4 object_41)
	(clear object_4)
	(pallet object_45)
	(surface object_45)
	(at object_45 object_10)
	(clear object_45)
	(pallet object_37)
	(surface object_37)
	(at object_37 object_50)
	(clear object_8)
	(pallet object_28)
	(surface object_28)
	(at object_28 object_17)
	(clear object_28)
	(pallet object_21)
	(surface object_21)
	(at object_21 object_44)
	(clear object_21)
	(pallet object_52)
	(surface object_52)
	(at object_52 object_11)
	(clear object_2)
	(pallet object_33)
	(surface object_33)
	(at object_33 object_40)
	(clear object_29)
	(pallet object_14)
	(surface object_14)
	(at object_14 object_31)
	(clear object_14)
	(pallet object_38)
	(surface object_38)
	(at object_38 object_27)
	(clear object_38)
	(pallet object_47)
	(surface object_47)
	(at object_47 object_48)
	(clear object_47)
	(pallet object_0)
	(surface object_0)
	(at object_0 object_11)
	(clear object_0)
	(pallet object_42)
	(surface object_42)
	(at object_42 object_48)
	(clear object_53)
	(pallet object_57)
	(surface object_57)
	(at object_57 object_41)
	(clear object_57)
	(pallet object_25)
	(surface object_25)
	(at object_25 object_62)
	(clear object_55)
	(pallet object_24)
	(surface object_24)
	(at object_24 object_62)
	(clear object_19)
	(pallet object_61)
	(surface object_61)
	(at object_61 object_40)
	(clear object_61)
	(pallet object_51)
	(surface object_51)
	(at object_51 object_50)
	(clear object_56)
	(pallet object_20)
	(surface object_20)
	(at object_20 object_62)
	(clear object_46)
	(truck object_26)
	(at object_26 object_40)
	(truck object_60)
	(at object_60 object_13)
	(truck object_7)
	(at object_7 object_31)
	(truck object_16)
	(at object_16 object_44)
	(truck object_18)
	(at object_18 object_13)
	(truck object_5)
	(at object_5 object_50)
	(hoist object_58)
	(at object_58 object_13)
	(available object_58)
	(hoist object_35)
	(at object_35 object_62)
	(available object_35)
	(hoist object_22)
	(at object_22 object_41)
	(available object_22)
	(hoist object_49)
	(at object_49 object_10)
	(available object_49)
	(hoist object_1)
	(at object_1 object_50)
	(available object_1)
	(hoist object_43)
	(at object_43 object_17)
	(available object_43)
	(hoist object_32)
	(at object_32 object_44)
	(available object_32)
	(hoist object_59)
	(at object_59 object_11)
	(available object_59)
	(hoist object_23)
	(at object_23 object_40)
	(available object_23)
	(hoist object_9)
	(at object_9 object_31)
	(available object_9)
	(hoist object_54)
	(at object_54 object_27)
	(available object_54)
	(hoist object_34)
	(at object_34 object_48)
	(available object_34)
	(hoist object_30)
	(at object_30 object_17)
	(available object_30)
	(hoist object_15)
	(at object_15 object_62)
	(available object_15)
	(hoist object_36)
	(at object_36 object_50)
	(available object_36)
	(crate object_19)
	(surface object_19)
	(at object_19 object_62)
	(on object_19 object_24)
	(crate object_6)
	(surface object_6)
	(at object_6 object_13)
	(on object_6 object_39)
	(crate object_53)
	(surface object_53)
	(at object_53 object_48)
	(on object_53 object_42)
	(crate object_55)
	(surface object_55)
	(at object_55 object_62)
	(on object_55 object_25)
	(crate object_29)
	(surface object_29)
	(at object_29 object_40)
	(on object_29 object_33)
	(crate object_3)
	(surface object_3)
	(at object_3 object_62)
	(on object_3 object_12)
	(crate object_8)
	(surface object_8)
	(at object_8 object_50)
	(on object_8 object_37)
	(crate object_56)
	(surface object_56)
	(at object_56 object_50)
	(on object_56 object_51)
	(crate object_2)
	(surface object_2)
	(at object_2 object_11)
	(on object_2 object_52)
	(crate object_46)
	(surface object_46)
	(at object_46 object_62)
	(on object_46 object_20)
	(place object_13)
	(place object_62)
	(place object_41)
	(place object_10)
	(place object_50)
	(place object_17)
	(place object_44)
	(place object_11)
	(place object_40)
	(place object_31)
	(place object_27)
	(place object_48)
)

(:goal (and
		(on object_19 object_4)
		(on object_6 object_52)
		(on object_53 object_47)
		(on object_55 object_45)
		(on object_3 object_28)
		(on object_8 object_0)
		(on object_56 object_51)
		(on object_2 object_25)
	)
))
