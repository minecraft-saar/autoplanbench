; woodworking task with 8 parts and 120% wood
; machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 44688

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
    acolour_1 acolour_2 acolour_0 acolour_3 acolour_5 acolour_4 - acolour
    awood_1 awood_0 - awood
    part_1 part_7 part_4 part_6 part_5 part_0 part_2 part_3 - part
    board_0 board_1 - board
    aboardsize_1 aboardsize_2 aboardsize_4 aboardsize_5 aboardsize_3 aboardsize_0 aboardsize_6 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (boardsize-successor aboardsize_1 aboardsize_2)
    (boardsize-successor aboardsize_2 aboardsize_4)
    (boardsize-successor aboardsize_4 aboardsize_5)
    (boardsize-successor aboardsize_5 aboardsize_3)
    (boardsize-successor aboardsize_3 aboardsize_0)
    (boardsize-successor aboardsize_0 aboardsize_6)
    (has-colour glazer_0 acolour_1)
    (has-colour glazer_0 acolour_4)
    (has-colour glazer_0 acolour_0)
    (has-colour immersion-varnisher_0 acolour_1)
    (has-colour immersion-varnisher_0 acolour_4)
    (has-colour immersion-varnisher_0 acolour_2)
    (has-colour immersion-varnisher_0 acolour_0)
    (empty highspeed-saw_0)
    (has-colour spray-varnisher_0 acolour_1)
    (has-colour spray-varnisher_0 acolour_4)
    (has-colour spray-varnisher_0 acolour_2)
    (has-colour spray-varnisher_0 acolour_0)
    (unused part_1)
    (goalsize part_1 medium)
    (unused part_7)
    (goalsize part_7 small)
    (unused part_4)
    (goalsize part_4 large)
    (unused part_6)
    (goalsize part_6 medium)
    (available part_5)
    (colour part_5 acolour_0)
    (wood part_5 awood_1)
    (surface-condition part_5 rough)
    (treatment part_5 varnished)
    (goalsize part_5 medium)
    (available part_0)
    (colour part_0 acolour_2)
    (wood part_0 awood_1)
    (surface-condition part_0 smooth)
    (treatment part_0 colourfragments)
    (goalsize part_0 medium)
    (unused part_2)
    (goalsize part_2 small)
    (available part_3)
    (colour part_3 acolour_0)
    (wood part_3 awood_0)
    (surface-condition part_3 rough)
    (treatment part_3 varnished)
    (goalsize part_3 large)
    (boardsize board_0 aboardsize_0)
    (wood board_0 awood_1)
    (surface-condition board_0 smooth)
    (available board_0)
    (boardsize board_1 aboardsize_6)
    (wood board_1 awood_0)
    (surface-condition board_1 rough)
    (available board_1)
  )
  (:goal
    (and
      (available part_1)
      (colour part_1 acolour_0)
      (wood part_1 awood_0)
      (available part_7)
      (colour part_7 acolour_1)
      (wood part_7 awood_1)
      (available part_4)
      (wood part_4 awood_0)
      (surface-condition part_4 smooth)
      (available part_6)
      (colour part_6 acolour_1)
      (wood part_6 awood_1)
      (surface-condition part_6 verysmooth)
      (treatment part_6 varnished)
      (available part_5)
      (colour part_5 acolour_4)
      (surface-condition part_5 smooth)
      (available part_0)
      (wood part_0 awood_1)
      (surface-condition part_0 smooth)
      (treatment part_0 varnished)
      (available part_2)
      (colour part_2 acolour_2)
      (treatment part_2 varnished)
      (available part_3)
      (wood part_3 awood_0)
      (surface-condition part_3 smooth)
      (treatment part_3 varnished)
    )
  )
  
)
