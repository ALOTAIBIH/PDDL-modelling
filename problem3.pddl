;It's recommended to install the misc-pddl-generators plugin 
;and then use Network generator to create the graph
(define (problem p3-dangeon)
  (:domain Dangeon)
  (:objects
            loc1_1 loc1_2 loc2_2 loc2_1 loc1_3 loc2_3 loc1_4 loc2_4 loc1_5 loc2_5 loc3_5 loc3_4 loc3_3 loc3_2 loc3_1 loc4_5 loc4_4 loc4_3 loc4_2 loc4_1 - cells
            sword1 sword2 sword3 sword4 - swords
  )
  (:init
  
    ;Initial Hero Location
     (at-hero loc4_5)
    
    
    ;He starts with a free arm
     (arm-free)
    
    
    ;Initial location of the swords
     (at-sword sword1  loc1_5)
     (at-sword sword2  loc2_3)
     (at-sword sword3  loc3_1)
     (at-sword sword4 loc4_3)
     
    
    
    ;Initial location of Monsters
     (has-monster loc1_3)
     (has-monster loc1_4)
     (has-monster loc2_2)
     (has-monster loc3_2)
     (has-monster loc3_4)
     (has-monster loc4_2)
     (has-monster loc4_4)
    
    
    ;Initial lcocation of Traps
     (has-trap loc1_2)
     (has-trap loc2_1)
     (has-trap loc2_4)
     (has-trap loc2_5)
     (has-trap loc3_3)
     (has-trap loc4_1)
    
    
    ;Graph Connectivity
     


;; make sure these are constants or objects:
;; loc1_1 loc1_2 loc2_2 loc2_1 loc1_3 loc2_3 loc1_4 loc2_4 loc1_5 loc2_5 loc3_5 loc3_4 loc3_3 loc3_2 loc3_1 loc4_5 loc4_4 loc4_3 loc4_2 loc4_1 loc
(connected loc1_1 loc1_2)
(connected loc1_2 loc1_1)
(connected loc1_2 loc2_2)
(connected loc2_2 loc1_2)
(connected loc2_2 loc2_1)
(connected loc2_1 loc2_2)
(connected loc2_1 loc1_1)
(connected loc1_1 loc2_1)
(connected loc1_2 loc1_3)
(connected loc1_3 loc1_2)
(connected loc1_3 loc2_3)
(connected loc2_3 loc1_3)
(connected loc2_3 loc2_2)
(connected loc2_2 loc2_3)
(connected loc2_2 loc1_2)
(connected loc1_2 loc2_2)
(connected loc1_3 loc1_4)
(connected loc1_4 loc1_3)
(connected loc1_4 loc2_4)
(connected loc2_4 loc1_4)
(connected loc2_4 loc2_3)
(connected loc2_3 loc2_4)
(connected loc2_3 loc1_3)
(connected loc1_3 loc2_3)
(connected loc1_4 loc1_5)
(connected loc1_5 loc1_4)
(connected loc1_5 loc2_5)
(connected loc2_5 loc1_5)
(connected loc2_5 loc2_4)
(connected loc2_4 loc2_5)
(connected loc2_4 loc1_4)
(connected loc1_4 loc2_4)
(connected loc2_5 loc3_5)
(connected loc3_5 loc2_5)
(connected loc3_5 loc3_4)
(connected loc3_4 loc3_5)
(connected loc3_4 loc2_4)
(connected loc2_4 loc3_4)
(connected loc3_4 loc3_3)
(connected loc3_3 loc3_4)
(connected loc3_3 loc2_3)
(connected loc2_3 loc3_3)
(connected loc3_3 loc3_2)
(connected loc3_2 loc3_3)
(connected loc3_2 loc2_2)
(connected loc2_2 loc3_2)
(connected loc3_2 loc3_1)
(connected loc3_1 loc3_2)
(connected loc3_1 loc2_1)
(connected loc2_1 loc3_1)
(connected loc3_5 loc4_5)
(connected loc4_5 loc3_5)
(connected loc4_5 loc4_4)
(connected loc4_4 loc4_5)
(connected loc4_4 loc3_4)
(connected loc3_4 loc4_4)
(connected loc4_4 loc4_3)
(connected loc4_3 loc4_4)
(connected loc4_3 loc3_3)
(connected loc3_3 loc4_3)
(connected loc4_3 loc4_2)
(connected loc4_2 loc4_3)
(connected loc4_2 loc3_2)
(connected loc3_2 loc4_2)
(connected loc4_2 loc4_1)
(connected loc4_1 loc4_2)
(connected loc4_1 loc3_1)
(connected loc3_1 loc4_1)
  )
  (:goal (and
            ;Hero's Goal Location
             (at-hero loc1_1)
            
  ))
  
)
