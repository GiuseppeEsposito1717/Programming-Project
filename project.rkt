#lang racket/gui
;REQUIREMENT 1
; data structure for our users (fan or band)
(struct band (bandname password role genre listing) #:mutable #:transparent)
(struct fan (name username password role saved) #:mutable #:transparent)

;data structure for listings
(struct listings (bandname venue city time status) #:mutable #:transparent)

;defining an helper function to keep track of the user current role  
(define current-role #f)
(define set-current-role! (λ(role)
                            (set! current-role role)))
(define allUsers(list))


;creating the first interface where the user can choose to log-in as a fan or band
;within this frame we have the fan button and the callback will change the status of our global variable current-role
(define first-screen (λ( )
                       (let ((first-frame (new frame% (label "User type choice")[width 400][height 400])))
                         (let ((panel (new horizontal-panel% (parent first-frame)(alignment '[center center]))))
                           (let ((msg (new message% (parent panel)(label "You want to log-in as:"))))
                            (new button%
                            (parent panel)
                            (label "FAN")
                            (callback (λ (b e)
                                        (set-current-role! 'fan)
                                        (send first-frame show #f)
                                        (createAccount ))))
                           (new button%
                                (parent panel)
                                (label "BAND")
                                (callback (λ(b e)
                                            (set-current-role! 'band)
                                            (send first-screen show #f)
                                            (createAccount))))
                           (send first-frame show #t))))))


(define createAccount (λ()
                        (let ((second-frame (new frame% (label "Registration") [width 400] [height 400])))
                          (let ((vpanel (new vertical-panel% (parent second-frame))))
                            (let ((name-field (new text-field%
                                                   (parent vpanel)
                                                   (label "Name")
                                                   
                              



                                                   





                           
                       

                           
                           
                      
                      
                       