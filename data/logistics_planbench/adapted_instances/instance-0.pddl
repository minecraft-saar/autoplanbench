


(define (problem logistics-c2-s1-p2-a1)
(:domain logistics-strips)
(:objects airplane_0 
          city_0 city_1 
          truck_0 truck_1 
          location_0_0 location_1_0 
          package_0 package_1 
)
(:init
    (AIRPLANE airplane_0)
    (CITY city_0)
    (CITY city_1)
    (TRUCK truck_0)
    (TRUCK truck_1)
    (LOCATION location_0_0)
    (in-city  location_0_0 city_0)
    (LOCATION location_1_0)
    (in-city  location_1_0 city_1)
    (AIRPORT location_0_0)
    (AIRPORT location_1_0)
    (OBJ package_0)
    (OBJ package_1)
    (at truck_0 location_0_0)
    (at truck_1 location_1_0)
    (at package_0 location_1_0)
    (at package_1 location_1_0)
    (at airplane_0 location_1_0)
)
(:goal
    (and
        (at package_0 location_0_0)
        (at package_1 location_0_0)
    )
)
)


