; woodworking task with 6 parts and 120% wood
; machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 709405

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
    acolour_3 acolour_1 acolour_2 acolour_0 - acolour
    awood_1 awood_0 - awood
    part_5 part_3 part_1 part_4 part_0 part_2 - part
    board_1 board_0 - board
    aboardsize_5 aboardsize_1 aboardsize_2 aboardsize_6 aboardsize_0 aboardsize_8 aboardsize_4 aboardsize_7 aboardsize_3 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (boardsize-successor aboardsize_5 aboardsize_1)
    (boardsize-successor aboardsize_1 aboardsize_2)
    (boardsize-successor aboardsize_2 aboardsize_6)
    (boardsize-successor aboardsize_6 aboardsize_0)
    (boardsize-successor aboardsize_0 aboardsize_8)
    (boardsize-successor aboardsize_8 aboardsize_4)
    (boardsize-successor aboardsize_4 aboardsize_7)
    (boardsize-successor aboardsize_7 aboardsize_3)
    (has-colour glazer_0 acolour_3)
    (has-colour glazer_0 natural)
    (has-colour immersion-varnisher_0 acolour_3)
    (has-colour immersion-varnisher_0 natural)
    (empty highspeed-saw_0)
    (has-colour spray-varnisher_0 acolour_3)
    (has-colour spray-varnisher_0 natural)
    (unused part_5)
    (goalsize part_5 large)
    (unused part_3)
    (goalsize part_3 small)
    (unused part_1)
    (goalsize part_1 small)
    (unused part_4)
    (goalsize part_4 small)
    (unused part_0)
    (goalsize part_0 medium)
    (unused part_2)
    (goalsize part_2 small)
    (boardsize board_1 aboardsize_3)
    (wood board_1 awood_0)
    (surface-condition board_1 rough)
    (available board_1)
    (boardsize board_0 aboardsize_0)
    (wood board_0 awood_1)
    (surface-condition board_0 smooth)
    (available board_0)
  )
  (:goal
    (and
      (available part_5)
      (wood part_5 awood_0)
      (surface-condition part_5 smooth)
      (available part_3)
      (colour part_3 natural)
      (wood part_3 awood_0)
      (surface-condition part_3 verysmooth)
      (available part_1)
      (wood part_1 awood_1)
      (surface-condition part_1 verysmooth)
      (treatment part_1 varnished)
      (available part_4)
      (wood part_4 awood_1)
      (surface-condition part_4 smooth)
      (available part_0)
      (colour part_0 acolour_3)
      (wood part_0 awood_0)
      (available part_2)
      (colour part_2 natural)
      (wood part_2 awood_1)
      (surface-condition part_2 smooth)
      (treatment part_2 varnished)
    )
  )
  
)
