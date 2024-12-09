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
    acolour_3 acolour_2 acolour_0 acolour_1 acolour_4 acolour_5 - acolour
    awood_0 awood_2 awood_1 - awood
    part_2 part_4 part_3 part_9 part_5 part_6 part_8 part_7 part_0 part_1 - part
    board_2 board_0 board_1 - board
    aboardsize_2 aboardsize_4 aboardsize_7 aboardsize_0 aboardsize_8 aboardsize_6 aboardsize_3 aboardsize_5 aboardsize_1 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (boardsize-successor aboardsize_2 aboardsize_4)
    (boardsize-successor aboardsize_4 aboardsize_7)
    (boardsize-successor aboardsize_7 aboardsize_0)
    (boardsize-successor aboardsize_0 aboardsize_8)
    (boardsize-successor aboardsize_8 aboardsize_6)
    (boardsize-successor aboardsize_6 aboardsize_3)
    (boardsize-successor aboardsize_3 aboardsize_5)
    (boardsize-successor aboardsize_5 aboardsize_1)
    (has-colour glazer_0 acolour_4)
    (has-colour glazer_0 acolour_2)
    (has-colour glazer_0 acolour_1)
    (has-colour glazer_0 acolour_0)
    (has-colour immersion-varnisher_0 acolour_4)
    (has-colour immersion-varnisher_0 acolour_0)
    (empty highspeed-saw_0)
    (has-colour spray-varnisher_0 acolour_4)
    (has-colour spray-varnisher_0 acolour_0)
    (unused part_2)
    (goalsize part_2 large)
    (unused part_4)
    (goalsize part_4 small)
    (unused part_3)
    (goalsize part_3 medium)
    (unused part_9)
    (goalsize part_9 medium)
    (unused part_5)
    (goalsize part_5 small)
    (unused part_6)
    (goalsize part_6 medium)
    (unused part_8)
    (goalsize part_8 medium)
    (unused part_7)
    (goalsize part_7 small)
    (available part_0)
    (colour part_0 acolour_2)
    (wood part_0 awood_0)
    (surface-condition part_0 rough)
    (treatment part_0 colourfragments)
    (goalsize part_0 large)
    (unused part_1)
    (goalsize part_1 small)
    (boardsize board_2 aboardsize_1)
    (wood board_2 awood_2)
    (surface-condition board_2 rough)
    (available board_2)
    (boardsize board_0 aboardsize_3)
    (wood board_0 awood_1)
    (surface-condition board_0 rough)
    (available board_0)
    (boardsize board_1 aboardsize_6)
    (wood board_1 awood_0)
    (surface-condition board_1 smooth)
    (available board_1)
  )
  (:goal
    (and
      (available part_2)
      (colour part_2 acolour_4)
      (surface-condition part_2 smooth)
      (available part_4)
      (surface-condition part_4 verysmooth)
      (treatment part_4 glazed)
      (available part_3)
      (wood part_3 awood_1)
      (treatment part_3 glazed)
      (available part_9)
      (wood part_9 awood_1)
      (surface-condition part_9 smooth)
      (treatment part_9 glazed)
      (available part_5)
      (wood part_5 awood_1)
      (surface-condition part_5 verysmooth)
      (available part_6)
      (colour part_6 acolour_2)
      (wood part_6 awood_0)
      (surface-condition part_6 verysmooth)
      (treatment part_6 glazed)
      (available part_8)
      (colour part_8 acolour_1)
      (wood part_8 awood_2)
      (treatment part_8 glazed)
      (available part_7)
      (surface-condition part_7 verysmooth)
      (treatment part_7 glazed)
      (available part_0)
      (wood part_0 awood_0)
      (surface-condition part_0 verysmooth)
      (available part_1)
      (colour part_1 acolour_0)
      (surface-condition part_1 smooth)
    )
  )
  
)
