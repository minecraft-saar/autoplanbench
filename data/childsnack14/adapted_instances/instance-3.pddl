; child-snack task with 7 children and 0.4 gluten factor 
; constant factor of 1.3
; random seed: 234324

(define (problem prob-snack)
  (:domain child-snack)
  (:objects
    child_5 child_0 child_3 child_6 child_2 child_1 child_4 - child
    bread-portion_6 bread-portion_2 bread-portion_0 bread-portion_4 bread-portion_3 bread-portion_1 bread-portion_5 - bread-portion
    content-portion_1 content-portion_3 content-portion_2 content-portion_0 content-portion_6 content-portion_5 content-portion_4 - content-portion
    tray_1 tray_0 - tray
    place_1 place_0 place_2 - place
    sandwich_7 sandwich_8 sandwich_3 sandwich_4 sandwich_9 sandwich_6 sandwich_2 sandwich_0 sandwich_1 sandwich_5 - sandwich
  )
  (:init
     (at tray_1 kitchen)
     (at tray_0 kitchen)
     (at_kitchen_bread bread-portion_6)
     (at_kitchen_bread bread-portion_2)
     (at_kitchen_bread bread-portion_0)
     (at_kitchen_bread bread-portion_4)
     (at_kitchen_bread bread-portion_3)
     (at_kitchen_bread bread-portion_1)
     (at_kitchen_bread bread-portion_5)
     (at_kitchen_content content-portion_1)
     (at_kitchen_content content-portion_3)
     (at_kitchen_content content-portion_2)
     (at_kitchen_content content-portion_0)
     (at_kitchen_content content-portion_6)
     (at_kitchen_content content-portion_5)
     (at_kitchen_content content-portion_4)
     (no_gluten_bread bread-portion_2)
     (no_gluten_bread bread-portion_1)
     (no_gluten_content content-portion_2)
     (no_gluten_content content-portion_4)
     (allergic_gluten child_5)
     (allergic_gluten child_2)
     (not_allergic_gluten child_0)
     (not_allergic_gluten child_3)
     (not_allergic_gluten child_6)
     (not_allergic_gluten child_1)
     (not_allergic_gluten child_4)
     (waiting child_5 place_0)
     (waiting child_0 place_1)
     (waiting child_3 place_2)
     (waiting child_6 place_0)
     (waiting child_2 place_1)
     (waiting child_1 place_1)
     (waiting child_4 place_0)
     (notexist sandwich_7)
     (notexist sandwich_8)
     (notexist sandwich_3)
     (notexist sandwich_4)
     (notexist sandwich_9)
     (notexist sandwich_6)
     (notexist sandwich_2)
     (notexist sandwich_0)
     (notexist sandwich_1)
     (notexist sandwich_5)
  )
  (:goal
    (and
     (served child_5)
     (served child_0)
     (served child_3)
     (served child_6)
     (served child_2)
     (served child_1)
     (served child_4)
    )
  )
)
