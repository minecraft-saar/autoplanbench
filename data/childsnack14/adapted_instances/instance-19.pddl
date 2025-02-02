; child-snack task with 15 children and 0.4 gluten factor 
; constant factor of 1.3
; random seed: 234324

(define (problem prob-snack)
  (:domain child-snack)
  (:objects
    child_12 child_11 child_7 child_2 child_5 child_8 child_10 child_3 child_0 child_14 child_1 child_13 child_6 child_4 child_9 - child
    bread-portion_7 bread-portion_8 bread-portion_4 bread-portion_11 bread-portion_9 bread-portion_10 bread-portion_5 bread-portion_0 bread-portion_1 bread-portion_3 bread-portion_13 bread-portion_6 bread-portion_14 bread-portion_2 bread-portion_12 - bread-portion
    content-portion_8 content-portion_1 content-portion_9 content-portion_5 content-portion_7 content-portion_12 content-portion_13 content-portion_10 content-portion_2 content-portion_0 content-portion_3 content-portion_6 content-portion_11 content-portion_4 content-portion_14 - content-portion
    tray_2 tray_0 tray_1 - tray
    place_2 place_0 place_1 - place
    sandwich_7 sandwich_12 sandwich_10 sandwich_2 sandwich_11 sandwich_4 sandwich_19 sandwich_15 sandwich_18 sandwich_14 sandwich_17 sandwich_0 sandwich_6 sandwich_16 sandwich_13 sandwich_3 sandwich_1 sandwich_5 sandwich_8 sandwich_9 - sandwich
  )
  (:init
     (at tray_2 kitchen)
     (at tray_0 kitchen)
     (at tray_1 kitchen)
     (at_kitchen_bread bread-portion_7)
     (at_kitchen_bread bread-portion_8)
     (at_kitchen_bread bread-portion_4)
     (at_kitchen_bread bread-portion_11)
     (at_kitchen_bread bread-portion_9)
     (at_kitchen_bread bread-portion_10)
     (at_kitchen_bread bread-portion_5)
     (at_kitchen_bread bread-portion_0)
     (at_kitchen_bread bread-portion_1)
     (at_kitchen_bread bread-portion_3)
     (at_kitchen_bread bread-portion_13)
     (at_kitchen_bread bread-portion_6)
     (at_kitchen_bread bread-portion_14)
     (at_kitchen_bread bread-portion_2)
     (at_kitchen_bread bread-portion_12)
     (at_kitchen_content content-portion_8)
     (at_kitchen_content content-portion_1)
     (at_kitchen_content content-portion_9)
     (at_kitchen_content content-portion_5)
     (at_kitchen_content content-portion_7)
     (at_kitchen_content content-portion_12)
     (at_kitchen_content content-portion_13)
     (at_kitchen_content content-portion_10)
     (at_kitchen_content content-portion_2)
     (at_kitchen_content content-portion_0)
     (at_kitchen_content content-portion_3)
     (at_kitchen_content content-portion_6)
     (at_kitchen_content content-portion_11)
     (at_kitchen_content content-portion_4)
     (at_kitchen_content content-portion_14)
     (no_gluten_bread bread-portion_4)
     (no_gluten_bread bread-portion_2)
     (no_gluten_bread bread-portion_10)
     (no_gluten_bread bread-portion_14)
     (no_gluten_bread bread-portion_8)
     (no_gluten_bread bread-portion_1)
     (no_gluten_content content-portion_10)
     (no_gluten_content content-portion_1)
     (no_gluten_content content-portion_11)
     (no_gluten_content content-portion_7)
     (no_gluten_content content-portion_8)
     (no_gluten_content content-portion_5)
     (allergic_gluten child_12)
     (allergic_gluten child_14)
     (allergic_gluten child_5)
     (allergic_gluten child_10)
     (allergic_gluten child_3)
     (allergic_gluten child_0)
     (not_allergic_gluten child_13)
     (not_allergic_gluten child_6)
     (not_allergic_gluten child_11)
     (not_allergic_gluten child_7)
     (not_allergic_gluten child_2)
     (not_allergic_gluten child_4)
     (not_allergic_gluten child_8)
     (not_allergic_gluten child_9)
     (not_allergic_gluten child_1)
     (waiting child_12 place_1)
     (waiting child_11 place_0)
     (waiting child_7 place_2)
     (waiting child_2 place_1)
     (waiting child_5 place_2)
     (waiting child_8 place_2)
     (waiting child_10 place_1)
     (waiting child_3 place_2)
     (waiting child_0 place_2)
     (waiting child_14 place_2)
     (waiting child_1 place_0)
     (waiting child_13 place_1)
     (waiting child_6 place_2)
     (waiting child_4 place_0)
     (waiting child_9 place_0)
     (notexist sandwich_7)
     (notexist sandwich_12)
     (notexist sandwich_10)
     (notexist sandwich_2)
     (notexist sandwich_11)
     (notexist sandwich_4)
     (notexist sandwich_19)
     (notexist sandwich_15)
     (notexist sandwich_18)
     (notexist sandwich_14)
     (notexist sandwich_17)
     (notexist sandwich_0)
     (notexist sandwich_6)
     (notexist sandwich_16)
     (notexist sandwich_13)
     (notexist sandwich_3)
     (notexist sandwich_1)
     (notexist sandwich_5)
     (notexist sandwich_8)
     (notexist sandwich_9)
  )
  (:goal
    (and
     (served child_12)
     (served child_11)
     (served child_7)
     (served child_2)
     (served child_5)
     (served child_8)
     (served child_10)
     (served child_3)
     (served child_0)
     (served child_14)
     (served child_1)
     (served child_13)
     (served child_6)
     (served child_4)
     (served child_9)
    )
  )
)
