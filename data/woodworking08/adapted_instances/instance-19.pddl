; woodworking task with 11 parts and 120% wood
; machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 976783

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
    acolour_3 acolour_4 acolour_2 acolour_1 acolour_5 acolour_0 - acolour
    awood_2 awood_1 awood_0 - awood
    part_7 part_6 part_8 part_2 part_4 part_5 part_10 part_0 part_1 part_9 part_3 - part
    board_2 board_1 board_0 - board
    aboardsize_5 aboardsize_2 aboardsize_4 aboardsize_3 aboardsize_8 aboardsize_1 aboardsize_6 aboardsize_7 aboardsize_0 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (boardsize-successor aboardsize_5 aboardsize_2)
    (boardsize-successor aboardsize_2 aboardsize_4)
    (boardsize-successor aboardsize_4 aboardsize_3)
    (boardsize-successor aboardsize_3 aboardsize_8)
    (boardsize-successor aboardsize_8 aboardsize_1)
    (boardsize-successor aboardsize_1 aboardsize_6)
    (boardsize-successor aboardsize_6 aboardsize_7)
    (boardsize-successor aboardsize_7 aboardsize_0)
    (has-colour glazer_0 acolour_2)
    (has-colour glazer_0 acolour_0)
    (has-colour glazer_0 acolour_4)
    (has-colour glazer_0 acolour_5)
    (has-colour immersion-varnisher_0 acolour_2)
    (has-colour immersion-varnisher_0 acolour_0)
    (has-colour immersion-varnisher_0 acolour_4)
    (empty highspeed-saw_0)
    (has-colour spray-varnisher_0 acolour_2)
    (has-colour spray-varnisher_0 acolour_0)
    (has-colour spray-varnisher_0 acolour_4)
    (available part_7)
    (colour part_7 acolour_1)
    (wood part_7 awood_1)
    (surface-condition part_7 smooth)
    (treatment part_7 colourfragments)
    (goalsize part_7 large)
    (unused part_6)
    (goalsize part_6 small)
    (unused part_8)
    (goalsize part_8 small)
    (unused part_2)
    (goalsize part_2 medium)
    (unused part_4)
    (goalsize part_4 small)
    (unused part_5)
    (goalsize part_5 large)
    (available part_10)
    (colour part_10 acolour_1)
    (wood part_10 awood_1)
    (surface-condition part_10 verysmooth)
    (treatment part_10 glazed)
    (goalsize part_10 large)
    (unused part_0)
    (goalsize part_0 medium)
    (unused part_1)
    (goalsize part_1 large)
    (unused part_9)
    (goalsize part_9 medium)
    (unused part_3)
    (goalsize part_3 medium)
    (boardsize board_2 aboardsize_6)
    (wood board_2 awood_0)
    (surface-condition board_2 rough)
    (available board_2)
    (boardsize board_1 aboardsize_0)
    (wood board_1 awood_2)
    (surface-condition board_1 smooth)
    (available board_1)
    (boardsize board_0 aboardsize_0)
    (wood board_0 awood_1)
    (surface-condition board_0 rough)
    (available board_0)
  )
  (:goal
    (and
      (available part_7)
      (surface-condition part_7 verysmooth)
      (treatment part_7 glazed)
      (available part_6)
      (colour part_6 acolour_4)
      (treatment part_6 glazed)
      (available part_8)
      (colour part_8 acolour_0)
      (wood part_8 awood_2)
      (available part_2)
      (wood part_2 awood_0)
      (treatment part_2 varnished)
      (available part_4)
      (wood part_4 awood_0)
      (treatment part_4 varnished)
      (available part_5)
      (wood part_5 awood_2)
      (surface-condition part_5 smooth)
      (available part_10)
      (colour part_10 acolour_5)
      (treatment part_10 glazed)
      (available part_0)
      (surface-condition part_0 smooth)
      (treatment part_0 glazed)
      (available part_1)
      (colour part_1 acolour_2)
      (surface-condition part_1 smooth)
      (available part_9)
      (colour part_9 acolour_4)
      (treatment part_9 glazed)
      (available part_3)
      (colour part_3 acolour_4)
      (wood part_3 awood_2)
      (surface-condition part_3 verysmooth)
    )
  )
  
)
