; woodworking task with 4 parts and 140% wood
; machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 196950

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
    acolour_2 acolour_0 acolour_1 - acolour
    awood_1 awood_0 - awood
    part_2 part_0 part_3 part_1 - part
    board_0 - board
    aboardsize_4 aboardsize_0 aboardsize_3 aboardsize_2 aboardsize_5 aboardsize_1 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (boardsize-successor aboardsize_4 aboardsize_0)
    (boardsize-successor aboardsize_0 aboardsize_3)
    (boardsize-successor aboardsize_3 aboardsize_2)
    (boardsize-successor aboardsize_2 aboardsize_5)
    (boardsize-successor aboardsize_5 aboardsize_1)
    (has-colour glazer_0 acolour_1)
    (has-colour glazer_0 acolour_0)
    (has-colour immersion-varnisher_0 acolour_1)
    (has-colour immersion-varnisher_0 acolour_0)
    (has-colour immersion-varnisher_0 natural)
    (empty highspeed-saw_0)
    (has-colour spray-varnisher_0 acolour_1)
    (has-colour spray-varnisher_0 acolour_0)
    (has-colour spray-varnisher_0 natural)
    (available part_2)
    (colour part_2 natural)
    (wood part_2 awood_1)
    (surface-condition part_2 rough)
    (treatment part_2 varnished)
    (goalsize part_2 medium)
    (available part_0)
    (colour part_0 acolour_2)
    (wood part_0 awood_1)
    (surface-condition part_0 rough)
    (treatment part_0 colourfragments)
    (goalsize part_0 large)
    (available part_3)
    (colour part_3 acolour_0)
    (wood part_3 awood_1)
    (surface-condition part_3 verysmooth)
    (treatment part_3 glazed)
    (goalsize part_3 small)
    (unused part_1)
    (goalsize part_1 large)
    (boardsize board_0 aboardsize_1)
    (wood board_0 awood_0)
    (surface-condition board_0 rough)
    (available board_0)
  )
  (:goal
    (and
      (available part_2)
      (colour part_2 acolour_1)
      (wood part_2 awood_1)
      (surface-condition part_2 smooth)
      (treatment part_2 glazed)
      (available part_0)
      (colour part_0 natural)
      (wood part_0 awood_1)
      (surface-condition part_0 verysmooth)
      (treatment part_0 varnished)
      (available part_3)
      (colour part_3 acolour_1)
      (surface-condition part_3 smooth)
      (available part_1)
      (colour part_1 acolour_0)
      (wood part_1 awood_0)
    )
  )
  
)
