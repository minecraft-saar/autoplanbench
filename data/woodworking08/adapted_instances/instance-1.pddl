; woodworking task with 3 parts and 140% wood
; machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 854322

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
    acolour_0 acolour_1 - acolour
    awood_0 awood_1 - awood
    part_2 part_1 part_0 - part
    board_0 board_1 - board
    aboardsize_1 aboardsize_3 aboardsize_2 aboardsize_0 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (boardsize-successor aboardsize_1 aboardsize_3)
    (boardsize-successor aboardsize_3 aboardsize_2)
    (boardsize-successor aboardsize_2 aboardsize_0)
    (has-colour glazer_0 acolour_1)
    (has-colour glazer_0 acolour_0)
    (has-colour immersion-varnisher_0 acolour_1)
    (empty highspeed-saw_0)
    (has-colour spray-varnisher_0 acolour_1)
    (unused part_2)
    (goalsize part_2 medium)
    (unused part_1)
    (goalsize part_1 medium)
    (available part_0)
    (colour part_0 natural)
    (wood part_0 awood_1)
    (surface-condition part_0 verysmooth)
    (treatment part_0 colourfragments)
    (goalsize part_0 small)
    (boardsize board_0 aboardsize_0)
    (wood board_0 awood_1)
    (surface-condition board_0 rough)
    (available board_0)
    (boardsize board_1 aboardsize_0)
    (wood board_1 awood_0)
    (surface-condition board_1 rough)
    (available board_1)
  )
  (:goal
    (and
      (available part_2)
      (colour part_2 acolour_1)
      (wood part_2 awood_1)
      (surface-condition part_2 verysmooth)
      (treatment part_2 varnished)
      (available part_1)
      (colour part_1 acolour_0)
      (wood part_1 awood_0)
      (surface-condition part_1 smooth)
      (treatment part_1 glazed)
      (available part_0)
      (colour part_0 acolour_1)
      (wood part_0 awood_1)
    )
  )
  
)
