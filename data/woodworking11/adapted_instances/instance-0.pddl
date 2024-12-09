; woodworking task with 3 parts and 100% wood
; machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 20683

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
    awood_1 awood_0 - awood
    part_1 part_0 part_2 - part
    board_0 - board
    aboardsize_2 aboardsize_0 aboardsize_4 aboardsize_3 aboardsize_1 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (boardsize-successor aboardsize_2 aboardsize_0)
    (boardsize-successor aboardsize_0 aboardsize_4)
    (boardsize-successor aboardsize_4 aboardsize_3)
    (boardsize-successor aboardsize_3 aboardsize_1)
    (has-colour glazer_0 acolour_0)
    (has-colour immersion-varnisher_0 natural)
    (has-colour immersion-varnisher_0 acolour_0)
    (empty highspeed-saw_0)
    (has-colour spray-varnisher_0 natural)
    (has-colour spray-varnisher_0 acolour_0)
    (unused part_1)
    (goalsize part_1 small)
    (available part_0)
    (colour part_0 acolour_1)
    (wood part_0 awood_1)
    (surface-condition part_0 rough)
    (treatment part_0 varnished)
    (goalsize part_0 large)
    (unused part_2)
    (goalsize part_2 large)
    (boardsize board_0 aboardsize_1)
    (wood board_0 awood_1)
    (surface-condition board_0 smooth)
    (available board_0)
  )
  (:goal
    (and
      (available part_1)
      (colour part_1 natural)
      (treatment part_1 varnished)
      (available part_0)
      (wood part_0 awood_1)
      (surface-condition part_0 smooth)
      (available part_2)
      (colour part_2 acolour_0)
      (wood part_2 awood_1)
      (surface-condition part_2 smooth)
      (treatment part_2 varnished)
    )
  )
  
)
