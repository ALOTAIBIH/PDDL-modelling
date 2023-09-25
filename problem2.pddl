;It's recommended to install the misc-pddl-generators plugin 
;and then use Network generator to create the graph
(define (problem p2-dangeon)
  (:domain Dangeon)
  (:objects
            loc1 loc2 loc3 loc4 loc5 loc6 loc7 loc8 loc9 loc10 loc11 loc12  - cells
            sword1 sword2 - swords
  )
  (:init
  
    ;Initial Hero Location
     (at-hero loc7)
    
    ;He starts with a free arm
     (arm-free)
    
    ;Initial location of the swords
     (at-sword sword1  loc6)
     (at-sword sword2  loc10)
    
    
    ;Initial location of Monsters
     (has-monster loc4)
     (has-monster loc5)
     (has-monster loc9)
    
    
    ;Initial lcocation of Traps
     (has-trap loc2)
     (has-trap loc3)
     (has-trap loc11)
     (has-trap loc12)
     (has-trap loc8)
    
    
    ;Graph Connectivity
     
;; make sure these are constants or objects:
;; loc1 loc2 loc3 loc4 loc5 loc6 loc7 loc8 loc9 loc10 loc11 loc12 loc
(connected loc1 loc2)
(connected loc2 loc1)
(connected loc2 loc3)
(connected loc3 loc2)
(connected loc3 loc4)
(connected loc4 loc3)
(connected loc4 loc5)
(connected loc5 loc4)
(connected loc5 loc6)
(connected loc6 loc5)
(connected loc6 loc7)
(connected loc7 loc6)
(connected loc1 loc8)
(connected loc8 loc1)
(connected loc8 loc9)
(connected loc9 loc8)
(connected loc9 loc10)
(connected loc10 loc9)
(connected loc10 loc11)
(connected loc11 loc10)
(connected loc11 loc12)
(connected loc12 loc11)
(connected loc2 loc9)
(connected loc9 loc2)
(connected loc3 loc8)
(connected loc8 loc3)
(connected loc3 loc10)
(connected loc10 loc3)
(connected loc4 loc9)
(connected loc9 loc4)
(connected loc4 loc11)
(connected loc11 loc4)
(connected loc5 loc10)
(connected loc10 loc5)
(connected loc5 loc12)
(connected loc12 loc5)
(connected loc6 loc11)
(connected loc11 loc6)
(connected loc7 loc12)
(connected loc12 loc7)
     
    
    
  )
  (:goal (and
            ;Hero's Goal Location
            (at-hero loc1)
  ))
  
)
