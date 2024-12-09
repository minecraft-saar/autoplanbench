; woodworking task with 5 parts and 100% wood
; machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 370348

(define (problem wood-prob)
  (:domain woodworking)
  (:objects
    grinder_0 - grinder
    glazer_0 - glazer
    immersion-varnisher_0 - immersion-varnisher
    planer_0 - planer
    highspeed-saw_0 - highspeed-saw
    spray-varnisher_0 - spray-varnisher
    saw_0 - saw
    acolour_3 acolour_2 acolour_0 acolour_1 - acolour
    awood_1 awood_0 - awood
    part_1 part_3 part_0 part_2 part_4 - part
    board_1 board_0 - board
    aboardsize_1 aboardsize_4 aboardsize_2 aboardsize_3 aboardsize_5 aboardsize_0 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (boardsize-successor aboardsize_1 aboardsize_4)
    (boardsize-successor aboardsize_4 aboardsize_2)
    (boardsize-successor aboardsize_2 aboardsize_3)
    (boardsize-successor aboardsize_3 aboardsize_5)
    (boardsize-successor aboardsize_5 aboardsize_0)
    (has-colour glazer_0 acolour_3)
    (has-colour immersion-varnisher_0 acolour_3)
    (empty highspeed-saw_0)
    (has-colour spray-varnisher_0 acolour_3)
    (unused part_1)
    (goalsize part_1 medium)
    (unused part_3)
    (goalsize part_3 small)
    (available part_0)
    (colour part_0 acolour_1)
    (wood part_0 awood_0)
    (surface-condition part_0 rough)
    (treatment part_0 colourfragments)
    (goalsize part_0 small)
    (unused part_2)
    (goalsize part_2 large)
    (unused part_4)
    (goalsize part_4 medium)
    (boardsize board_1 aboardsize_3)
    (wood board_1 awood_1)
    (surface-condition board_1 rough)
    (available board_1)
    (boardsize board_0 aboardsize_0)
    (wood board_0 awood_0)
    (surface-condition board_0 rough)
    (available board_0)
  )
  (:goal
    (and
      (available part_1)
      (surface-condition part_1 smooth)
      (treatment part_1 varnished)
      (available part_3)
      (wood part_3 awood_1)
      (surface-condition part_3 smooth)
      (treatment part_3 varnished)
      (available part_0)
      (colour part_0 acolour_3)
      (surface-condition part_0 smooth)
      (available part_2)
      (wood part_2 awood_0)
      (surface-condition part_2 smooth)
      (available part_4)
      (wood part_4 awood_1)
      (treatment part_4 glazed)
    )
  )
  
)
