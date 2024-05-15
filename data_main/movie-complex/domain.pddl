;; original version taken from here: https://github.com/AI-Planning/pddl-generators/tree/main/movie
;; adapted to restrict the preconditions of buying snacks

(define (domain movie-strips-complex)
  (:predicates (movie-rewound)
	           (counter-at-other-than-zero)
               (counter-at-zero)
               (have-chips)
               (have-dip)
               (have-pop)
               (have-cheese)
               (have-crackers)
               (chips ?x)
               (dip ?x)
               (pop ?x)
               (cheese ?x)
               (crackers ?x))


  (:action rewind-movie
           :parameters ()
	       :precondition (counter-at-other-than-zero)
           :effect (movie-rewound))

  (:action reset-counter
           :parameters ()
           :precondition (counter-at-other-than-zero)
           :effect (and (counter-at-zero) (not (counter-at-other-than-zero))))

  (:action start-movie
            :parameters ()
            :precondition (counter-at-zero)
            :effect (and (counter-at-other-than-zero) (not (counter-at-zero))))

  (:action undo-rewind
            :parameters ()
            :precondition (movie-rewound)
            :effect (not (movie-rewound)))

  ;;; Get the food and snacks for the movie
  (:action get-chips
           :parameters (?x)
           :precondition (and (chips ?x) (counter-at-zero) (not (movie-rewound)))
           :effect (have-chips))

  (:action get-dip
           :parameters (?x)
           :precondition (and (dip ?x) (counter-at-zero) (not (movie-rewound)))
           :effect (have-dip))

  (:action get-pop
           :parameters (?x)
           :precondition (and (pop ?x) (counter-at-zero) (not (movie-rewound)))
           :effect (have-pop))

  (:action get-cheese
           :parameters (?x)
           :precondition (and (cheese ?x) (counter-at-zero) (not (movie-rewound)))
           :effect (have-cheese))

  (:action get-crackers
           :parameters (?x)
           :precondition (and (crackers ?x) (counter-at-zero) (not (movie-rewound)))
           :effect (have-crackers)))
