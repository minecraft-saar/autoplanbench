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
    acolour_1 acolour_5 acolour_0 acolour_4 acolour_2 acolour_3 - acolour
    awood_1 awood_0 - awood
    part_1 part_5 part_7 part_8 part_2 part_6 part_3 part_4 part_0 - part
    board_1 board_2 board_3 board_0 - board
    aboardsize_4 aboardsize_3 aboardsize_2 aboardsize_7 aboardsize_8 aboardsize_0 aboardsize_6 aboardsize_1 aboardsize_5 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (boardsize-successor aboardsize_4 aboardsize_3)
    (boardsize-successor aboardsize_3 aboardsize_2)
    (boardsize-successor aboardsize_2 aboardsize_7)
    (boardsize-successor aboardsize_7 aboardsize_8)
    (boardsize-successor aboardsize_8 aboardsize_0)
    (boardsize-successor aboardsize_0 aboardsize_6)
    (boardsize-successor aboardsize_6 aboardsize_1)
    (boardsize-successor aboardsize_1 aboardsize_5)
    (has-colour glazer_0 acolour_0)
    (has-colour glazer_0 acolour_3)
    (has-colour glazer_0 acolour_1)
    (has-colour glazer_0 acolour_2)
    (has-colour immersion-varnisher_0 acolour_0)
    (has-colour immersion-varnisher_0 acolour_3)
    (has-colour immersion-varnisher_0 acolour_1)
    (has-colour immersion-varnisher_0 acolour_2)
    (empty highspeed-saw_0)
    (has-colour spray-varnisher_0 acolour_0)
    (has-colour spray-varnisher_0 acolour_3)
    (has-colour spray-varnisher_0 acolour_1)
    (has-colour spray-varnisher_0 acolour_2)
    (unused part_1)
    (goalsize part_1 large)
    (unused part_5)
    (goalsize part_5 small)
    (unused part_7)
    (goalsize part_7 small)
    (unused part_8)
    (goalsize part_8 small)
    (unused part_2)
    (goalsize part_2 small)
    (unused part_6)
    (goalsize part_6 medium)
    (available part_3)
    (colour part_3 acolour_3)
    (wood part_3 awood_0)
    (surface-condition part_3 rough)
    (treatment part_3 glazed)
    (goalsize part_3 small)
    (unused part_4)
    (goalsize part_4 medium)
    (unused part_0)
    (goalsize part_0 large)
    (boardsize board_1 aboardsize_6)
    (wood board_1 awood_1)
    (surface-condition board_1 rough)
    (available board_1)
    (boardsize board_2 aboardsize_2)
    (wood board_2 awood_1)
    (surface-condition board_2 smooth)
    (available board_2)
    (boardsize board_3 aboardsize_5)
    (wood board_3 awood_0)
    (surface-condition board_3 smooth)
    (available board_3)
    (boardsize board_0 aboardsize_2)
    (wood board_0 awood_0)
    (surface-condition board_0 smooth)
    (available board_0)
  )
  (:goal
    (and
      (available part_1)
      (colour part_1 acolour_2)
      (wood part_1 awood_0)
      (available part_5)
      (colour part_5 acolour_1)
      (surface-condition part_5 smooth)
      (available part_7)
      (colour part_7 acolour_0)
      (wood part_7 awood_1)
      (surface-condition part_7 verysmooth)
      (treatment part_7 varnished)
      (available part_8)
      (surface-condition part_8 verysmooth)
      (treatment part_8 varnished)
      (available part_2)
      (colour part_2 acolour_3)
      (wood part_2 awood_0)
      (available part_6)
      (surface-condition part_6 verysmooth)
      (treatment part_6 varnished)
      (available part_3)
      (surface-condition part_3 smooth)
      (treatment part_3 varnished)
      (available part_4)
      (colour part_4 acolour_0)
      (wood part_4 awood_1)
      (surface-condition part_4 smooth)
      (treatment part_4 glazed)
      (available part_0)
      (wood part_0 awood_0)
      (treatment part_0 varnished)
    )
  )
  
)
