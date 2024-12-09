; woodworking task with 7 parts and 140% wood
; machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 42617

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
    acolour_3 acolour_4 acolour_0 acolour_1 acolour_2 - acolour
    awood_0 awood_1 - awood
    part_5 part_4 part_1 part_0 part_6 part_3 part_2 - part
    board_2 board_0 board_1 - board
    aboardsize_5 aboardsize_3 aboardsize_6 aboardsize_0 aboardsize_4 aboardsize_7 aboardsize_2 aboardsize_8 aboardsize_1 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (boardsize-successor aboardsize_5 aboardsize_3)
    (boardsize-successor aboardsize_3 aboardsize_6)
    (boardsize-successor aboardsize_6 aboardsize_0)
    (boardsize-successor aboardsize_0 aboardsize_4)
    (boardsize-successor aboardsize_4 aboardsize_7)
    (boardsize-successor aboardsize_7 aboardsize_2)
    (boardsize-successor aboardsize_2 aboardsize_8)
    (boardsize-successor aboardsize_8 aboardsize_1)
    (has-colour glazer_0 acolour_3)
    (has-colour glazer_0 acolour_1)
    (has-colour glazer_0 natural)
    (has-colour glazer_0 acolour_2)
    (has-colour immersion-varnisher_0 acolour_2)
    (has-colour immersion-varnisher_0 acolour_4)
    (empty highspeed-saw_0)
    (has-colour spray-varnisher_0 acolour_2)
    (has-colour spray-varnisher_0 acolour_4)
    (unused part_5)
    (goalsize part_5 large)
    (unused part_4)
    (goalsize part_4 large)
    (unused part_1)
    (goalsize part_1 small)
    (unused part_0)
    (goalsize part_0 small)
    (unused part_6)
    (goalsize part_6 small)
    (available part_3)
    (colour part_3 acolour_0)
    (wood part_3 awood_1)
    (surface-condition part_3 rough)
    (treatment part_3 varnished)
    (goalsize part_3 large)
    (unused part_2)
    (goalsize part_2 medium)
    (boardsize board_2 aboardsize_0)
    (wood board_2 awood_1)
    (surface-condition board_2 rough)
    (available board_2)
    (boardsize board_0 aboardsize_1)
    (wood board_0 awood_0)
    (surface-condition board_0 rough)
    (available board_0)
    (boardsize board_1 aboardsize_7)
    (wood board_1 awood_0)
    (surface-condition board_1 smooth)
    (available board_1)
  )
  (:goal
    (and
      (available part_5)
      (wood part_5 awood_0)
      (treatment part_5 glazed)
      (available part_4)
      (surface-condition part_4 smooth)
      (treatment part_4 varnished)
      (available part_1)
      (colour part_1 acolour_1)
      (wood part_1 awood_1)
      (treatment part_1 glazed)
      (available part_0)
      (colour part_0 acolour_3)
      (wood part_0 awood_0)
      (surface-condition part_0 verysmooth)
      (treatment part_0 glazed)
      (available part_6)
      (colour part_6 acolour_4)
      (wood part_6 awood_1)
      (surface-condition part_6 smooth)
      (treatment part_6 varnished)
      (available part_3)
      (colour part_3 natural)
      (treatment part_3 glazed)
      (available part_2)
      (colour part_2 acolour_2)
      (wood part_2 awood_0)
    )
  )
  
)
