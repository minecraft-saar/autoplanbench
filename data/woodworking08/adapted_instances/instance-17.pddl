; woodworking task with 9 parts and 120% wood
; machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 156814

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
    acolour_2 acolour_4 acolour_1 acolour_0 acolour_5 acolour_3 - acolour
    awood_1 awood_0 - awood
    part_2 part_7 part_6 part_4 part_3 part_1 part_0 part_5 part_8 - part
    board_1 board_2 board_0 board_3 - board
    aboardsize_3 aboardsize_4 aboardsize_8 aboardsize_0 aboardsize_5 aboardsize_7 aboardsize_6 aboardsize_2 aboardsize_1 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (boardsize-successor aboardsize_3 aboardsize_4)
    (boardsize-successor aboardsize_4 aboardsize_8)
    (boardsize-successor aboardsize_8 aboardsize_0)
    (boardsize-successor aboardsize_0 aboardsize_5)
    (boardsize-successor aboardsize_5 aboardsize_7)
    (boardsize-successor aboardsize_7 aboardsize_6)
    (boardsize-successor aboardsize_6 aboardsize_2)
    (boardsize-successor aboardsize_2 aboardsize_1)
    (has-colour glazer_0 acolour_1)
    (has-colour glazer_0 acolour_3)
    (has-colour glazer_0 acolour_2)
    (has-colour glazer_0 acolour_5)
    (has-colour immersion-varnisher_0 acolour_1)
    (has-colour immersion-varnisher_0 acolour_3)
    (has-colour immersion-varnisher_0 acolour_2)
    (has-colour immersion-varnisher_0 acolour_5)
    (empty highspeed-saw_0)
    (has-colour spray-varnisher_0 acolour_1)
    (has-colour spray-varnisher_0 acolour_3)
    (has-colour spray-varnisher_0 acolour_2)
    (has-colour spray-varnisher_0 acolour_5)
    (unused part_2)
    (goalsize part_2 large)
    (unused part_7)
    (goalsize part_7 small)
    (unused part_6)
    (goalsize part_6 small)
    (unused part_4)
    (goalsize part_4 small)
    (unused part_3)
    (goalsize part_3 small)
    (unused part_1)
    (goalsize part_1 medium)
    (available part_0)
    (colour part_0 acolour_3)
    (wood part_0 awood_0)
    (surface-condition part_0 rough)
    (treatment part_0 glazed)
    (goalsize part_0 small)
    (unused part_5)
    (goalsize part_5 medium)
    (unused part_8)
    (goalsize part_8 large)
    (boardsize board_1 aboardsize_6)
    (wood board_1 awood_1)
    (surface-condition board_1 rough)
    (available board_1)
    (boardsize board_2 aboardsize_8)
    (wood board_2 awood_1)
    (surface-condition board_2 smooth)
    (available board_2)
    (boardsize board_0 aboardsize_1)
    (wood board_0 awood_0)
    (surface-condition board_0 smooth)
    (available board_0)
    (boardsize board_3 aboardsize_8)
    (wood board_3 awood_0)
    (surface-condition board_3 smooth)
    (available board_3)
  )
  (:goal
    (and
      (available part_2)
      (colour part_2 acolour_5)
      (wood part_2 awood_0)
      (available part_7)
      (colour part_7 acolour_2)
      (surface-condition part_7 smooth)
      (available part_6)
      (colour part_6 acolour_1)
      (wood part_6 awood_1)
      (surface-condition part_6 verysmooth)
      (treatment part_6 varnished)
      (available part_4)
      (surface-condition part_4 verysmooth)
      (treatment part_4 varnished)
      (available part_3)
      (colour part_3 acolour_3)
      (wood part_3 awood_0)
      (available part_1)
      (surface-condition part_1 verysmooth)
      (treatment part_1 varnished)
      (available part_0)
      (surface-condition part_0 smooth)
      (treatment part_0 varnished)
      (available part_5)
      (colour part_5 acolour_1)
      (wood part_5 awood_1)
      (surface-condition part_5 smooth)
      (treatment part_5 glazed)
      (available part_8)
      (wood part_8 awood_0)
      (treatment part_8 varnished)
    )
  )
  
)
