; woodworking task with 8 parts and 100% wood
; machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 960077

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
    acolour_1 acolour_0 acolour_5 acolour_3 acolour_2 acolour_4 - acolour
    awood_0 awood_1 - awood
    part_0 part_4 part_2 part_1 part_6 part_7 part_3 part_5 - part
    board_1 board_0 board_2 - board
    aboardsize_6 aboardsize_5 aboardsize_1 aboardsize_3 aboardsize_7 aboardsize_2 aboardsize_0 aboardsize_4 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (boardsize-successor aboardsize_6 aboardsize_5)
    (boardsize-successor aboardsize_5 aboardsize_1)
    (boardsize-successor aboardsize_1 aboardsize_3)
    (boardsize-successor aboardsize_3 aboardsize_7)
    (boardsize-successor aboardsize_7 aboardsize_2)
    (boardsize-successor aboardsize_2 aboardsize_0)
    (boardsize-successor aboardsize_0 aboardsize_4)
    (has-colour glazer_0 acolour_5)
    (has-colour glazer_0 acolour_0)
    (has-colour immersion-varnisher_0 acolour_5)
    (has-colour immersion-varnisher_0 acolour_0)
    (has-colour immersion-varnisher_0 acolour_3)
    (empty highspeed-saw_0)
    (has-colour spray-varnisher_0 acolour_5)
    (has-colour spray-varnisher_0 acolour_0)
    (has-colour spray-varnisher_0 acolour_3)
    (unused part_0)
    (goalsize part_0 large)
    (unused part_4)
    (goalsize part_4 small)
    (unused part_2)
    (goalsize part_2 small)
    (unused part_1)
    (goalsize part_1 medium)
    (available part_6)
    (colour part_6 acolour_2)
    (wood part_6 awood_0)
    (surface-condition part_6 rough)
    (treatment part_6 colourfragments)
    (goalsize part_6 small)
    (unused part_7)
    (goalsize part_7 large)
    (unused part_3)
    (goalsize part_3 medium)
    (unused part_5)
    (goalsize part_5 medium)
    (boardsize board_1 aboardsize_4)
    (wood board_1 awood_0)
    (surface-condition board_1 smooth)
    (available board_1)
    (boardsize board_0 aboardsize_7)
    (wood board_0 awood_0)
    (surface-condition board_0 rough)
    (available board_0)
    (boardsize board_2 aboardsize_3)
    (wood board_2 awood_1)
    (surface-condition board_2 rough)
    (available board_2)
  )
  (:goal
    (and
      (available part_0)
      (wood part_0 awood_0)
      (surface-condition part_0 smooth)
      (available part_4)
      (wood part_4 awood_0)
      (surface-condition part_4 smooth)
      (treatment part_4 varnished)
      (available part_2)
      (colour part_2 acolour_3)
      (wood part_2 awood_0)
      (treatment part_2 varnished)
      (available part_1)
      (colour part_1 acolour_5)
      (wood part_1 awood_0)
      (surface-condition part_1 smooth)
      (treatment part_1 glazed)
      (available part_6)
      (colour part_6 acolour_0)
      (wood part_6 awood_0)
      (surface-condition part_6 smooth)
      (available part_7)
      (wood part_7 awood_1)
      (treatment part_7 varnished)
      (available part_3)
      (wood part_3 awood_0)
      (surface-condition part_3 verysmooth)
      (available part_5)
      (colour part_5 acolour_5)
      (treatment part_5 varnished)
    )
  )
  
)
