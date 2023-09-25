;It's recommended to install the misc-pddl-generators plugin 
;and then use Network generator to create the graph
(define (problem p1-dangeon)
  (:domain Dangeon)
  (:objects
         loc1 loc2 loc3 loc4 loc5 loc6 loc7 loc8 - cells
         sword1 - swords
  )
  (:init

    ;Initial Hero Location
     (at-hero loc5) 
    
    ;He starts with a free arm
     (arm-free)
    
    
    ;Initial location of the swords
     (at-sword sword1  loc4 )
    
    
    ;Initial location of Monsters
     (has-monster loc3)
     (has-monster loc8)
    
    
    ;Initial lcocation of Traps
     (has-trap loc2)

     
  ;Graph Connectivity
;; make sure these are constants or objects:
;; loc1 loc2 loc3 loc4 loc5 loc8 loc7 loc6
(connected loc1 loc2)
(connected loc2 loc1)
(connected loc2 loc3)
(connected loc3 loc2)
(connected loc3 loc4)
(connected loc4 loc3)
(connected loc4 loc5)
(connected loc5 loc4)
(connected loc8 loc7)
(connected loc7 loc8)
(connected loc7 loc6)
(connected loc6 loc7)
(connected loc2 loc6)
(connected loc6 loc2)
(connected loc3 loc7)
(connected loc7 loc3)
(connected loc5 loc8)
(connected loc8 loc5)
(connected loc4 loc8)
(connected loc8 loc4)
    
    
 )
  (:goal (and
             (at-hero loc1)
            ;Hero's Goal Location
            
  ))
  
)

