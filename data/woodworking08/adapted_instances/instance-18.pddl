; woodworking task with 10 parts and 120% wood
; machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 879948

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
    acolour_3 acolour_0 acolour_2 acolour_5 acolour_1 acolour_4 - acolour
    awood_2 awood_1 awood_0 - awood
    part_3 part_6 part_4 part_7 part_1 part_2 part_8 part_0 part_5 part_9 - part
    board_0 board_1 board_2 - board
    aboardsize_2 aboardsize_0 aboardsize_6 aboardsize_8 aboardsize_7 aboardsize_4 aboardsize_1 aboardsize_3 aboardsize_5 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (boardsize-successor aboardsize_2 aboardsize_0)
    (boardsize-successor aboardsize_0 aboardsize_6)
    (boardsize-successor aboardsize_6 aboardsize_8)
    (boardsize-successor aboardsize_8 aboardsize_7)
    (boardsize-successor aboardsize_7 aboardsize_4)
    (boardsize-successor aboardsize_4 aboardsize_1)
    (boardsize-successor aboardsize_1 aboardsize_3)
    (boardsize-successor aboardsize_3 aboardsize_5)
    (has-colour glazer_0 acolour_1)
    (has-colour glazer_0 acolour_0)
    (has-colour glazer_0 acolour_5)
    (has-colour glazer_0 acolour_2)
    (has-colour immersion-varnisher_0 acolour_1)
    (has-colour immersion-varnisher_0 acolour_2)
    (empty highspeed-saw_0)
    (has-colour spray-varnisher_0 acolour_1)
    (has-colour spray-varnisher_0 acolour_2)
    (unused part_3)
    (goalsize part_3 large)
    (unused part_6)
    (goalsize part_6 small)
    (unused part_4)
    (goalsize part_4 medium)
    (unused part_7)
    (goalsize part_7 medium)
    (unused part_1)
    (goalsize part_1 small)
    (unused part_2)
    (goalsize part_2 medium)
    (unused part_8)
    (goalsize part_8 medium)
    (unused part_0)
    (goalsize part_0 small)
    (available part_5)
    (colour part_5 acolour_0)
    (wood part_5 awood_2)
    (surface-condition part_5 rough)
    (treatment part_5 colourfragments)
    (goalsize part_5 large)
    (unused part_9)
    (goalsize part_9 small)
    (boardsize board_0 aboardsize_5)
    (wood board_0 awood_1)
    (surface-condition board_0 rough)
    (available board_0)
    (boardsize board_1 aboardsize_1)
    (wood board_1 awood_0)
    (surface-condition board_1 rough)
    (available board_1)
    (boardsize board_2 aboardsize_4)
    (wood board_2 awood_2)
    (surface-condition board_2 smooth)
    (available board_2)
  )
  (:goal
    (and
      (available part_3)
      (colour part_3 acolour_1)
      (surface-condition part_3 smooth)
      (available part_6)
      (surface-condition part_6 verysmooth)
      (treatment part_6 glazed)
      (available part_4)
      (wood part_4 awood_0)
      (treatment part_4 glazed)
      (available part_7)
      (wood part_7 awood_0)
      (surface-condition part_7 smooth)
      (treatment part_7 glazed)
      (available part_1)
      (wood part_1 awood_0)
      (surface-condition part_1 verysmooth)
      (available part_2)
      (colour part_2 acolour_0)
      (wood part_2 awood_2)
      (surface-condition part_2 verysmooth)
      (treatment part_2 glazed)
      (available part_8)
      (colour part_8 acolour_5)
      (wood part_8 awood_1)
      (treatment part_8 glazed)
      (available part_0)
      (surface-condition part_0 verysmooth)
      (treatment part_0 glazed)
      (available part_5)
      (wood part_5 awood_2)
      (surface-condition part_5 verysmooth)
      (available part_9)
      (colour part_9 acolour_2)
      (surface-condition part_9 smooth)
    )
  )
  
)
