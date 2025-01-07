; woodworking task with 8 parts and 140% wood
; machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 592815

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
    acolour_2 acolour_3 acolour_1 acolour_0 acolour_5 acolour_4 - acolour
    awood_1 awood_0 - awood
    part_1 part_4 part_5 part_7 part_6 part_2 part_0 part_3 - part
    board_1 board_2 board_0 - board
    aboardsize_8 aboardsize_7 aboardsize_0 aboardsize_4 aboardsize_9 aboardsize_6 aboardsize_3 aboardsize_2 aboardsize_5 aboardsize_1 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (boardsize-successor aboardsize_8 aboardsize_7)
    (boardsize-successor aboardsize_7 aboardsize_0)
    (boardsize-successor aboardsize_0 aboardsize_4)
    (boardsize-successor aboardsize_4 aboardsize_9)
    (boardsize-successor aboardsize_9 aboardsize_6)
    (boardsize-successor aboardsize_6 aboardsize_3)
    (boardsize-successor aboardsize_3 aboardsize_2)
    (boardsize-successor aboardsize_2 aboardsize_5)
    (boardsize-successor aboardsize_5 aboardsize_1)
    (has-colour glazer_0 natural)
    (has-colour glazer_0 acolour_4)
    (has-colour glazer_0 acolour_0)
    (has-colour immersion-varnisher_0 natural)
    (has-colour immersion-varnisher_0 acolour_0)
    (empty highspeed-saw_0)
    (has-colour spray-varnisher_0 natural)
    (has-colour spray-varnisher_0 acolour_0)
    (unused part_1)
    (goalsize part_1 large)
    (unused part_4)
    (goalsize part_4 medium)
    (unused part_5)
    (goalsize part_5 large)
    (unused part_7)
    (goalsize part_7 medium)
    (unused part_6)
    (goalsize part_6 large)
    (unused part_2)
    (goalsize part_2 small)
    (available part_0)
    (colour part_0 acolour_1)
    (wood part_0 awood_0)
    (surface-condition part_0 verysmooth)
    (treatment part_0 colourfragments)
    (goalsize part_0 medium)
    (available part_3)
    (colour part_3 acolour_4)
    (wood part_3 awood_1)
    (surface-condition part_3 smooth)
    (treatment part_3 varnished)
    (goalsize part_3 medium)
    (boardsize board_1 aboardsize_4)
    (wood board_1 awood_0)
    (surface-condition board_1 rough)
    (available board_1)
    (boardsize board_2 aboardsize_1)
    (wood board_2 awood_1)
    (surface-condition board_2 rough)
    (available board_2)
    (boardsize board_0 aboardsize_5)
    (wood board_0 awood_1)
    (surface-condition board_0 rough)
    (available board_0)
  )
  (:goal
    (and
      (available part_1)
      (wood part_1 awood_1)
      (treatment part_1 varnished)
      (available part_4)
      (colour part_4 natural)
      (surface-condition part_4 verysmooth)
      (available part_5)
      (wood part_5 awood_1)
      (surface-condition part_5 verysmooth)
      (available part_7)
      (colour part_7 acolour_0)
      (wood part_7 awood_1)
      (available part_6)
      (colour part_6 acolour_4)
      (wood part_6 awood_1)
      (surface-condition part_6 smooth)
      (treatment part_6 glazed)
      (available part_2)
      (wood part_2 awood_1)
      (surface-condition part_2 smooth)
      (available part_0)
      (wood part_0 awood_0)
      (surface-condition part_0 smooth)
      (treatment part_0 glazed)
      (available part_3)
      (surface-condition part_3 verysmooth)
      (treatment part_3 glazed)
    )
  )
  
)