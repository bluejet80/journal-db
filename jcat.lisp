

;; use push to add elements to the sublists

;; main categorical list

(defparameter main-cat '(memory
		   motivation
		   narrative
		   people
		   myself
		   lessons
		   description
		   journaling
		   book-notes
		   dreams
		   ideas
		   project-notes))

;; Sublists

;;------------------------
;; Memory Aid - This category is for when I write about things that have happened to me

(defparameter memory '(San-Francisco
		       Commune
		       friends
               	       events
		       walks))


;; Memory Aid Sub-Categories

(defparameter San-francisco '(walking
	     parks
	     details))

(defparameter Commune '(forest-books
		  Irving
		  cooking
		  garden
		  criticism
		  library))

(defparameter friends '(Wichita
		  Newton
		  San-fran
		  Sac-town
		  Burrton))

;; friends sub-categories

(defparameter wichita '(brent
		  tim
		  scotty-megan
		  mark
		  travis))

(defparameter San-fran '(irving
		   sam
		   jeanie))

;;------------		   


(defparameter events '(drugs
		     random-event))



;; -------------------------
;; Motivation - This catgory is for writing that motivates me

(defparameter motivation '(forest-of-focus
		     natural-behaviors
		     progress))

;; Motivation Sub-Categories

(defparameter forest-of-focus '(where-2-begin
			  finding-focus
			  correct-mindset))

(defparameter natural-behaviors '(universal-laws
			    what-is-genuine-lasts))

(defparameter progress '(patient-diligence
			  working-toward-goals
			  past-accomplishments))



;; -------------------------
;; Narrative - This catgory is for writings that are narratives illustrating an idea
;; or event

(defparameter narrative '(indifference-of-nature
		    the-world-isnot-fair))






;; -------------------------
;; People - This catgory is for writings that are about society

(defparameter people '(soical-influence
		 extreme-behavior
		 compassion
		 selfish-behavior
		 effects-of-media
		 whole-vs-the-individual))





;; -------------------------
;; Myself - This catgory is for writings that are introspective

(defparameter myself '(my-voice
		 internal-conflict
		 self-discovery))


		 
		 


;; -------------------------
;; Lessons - This catgory is for writings about lessons to be learned

(defparameter lessons '(learning-from-failure
		  time-tested-truths
		  present-truths
		  pattern-recognition))



;; -------------------------
;; Description - This catgory is for writings that describe things

(defparameter description '(scenes
		      objects
		      people
		      behavior))



;; -------------------------
;; Journaling - This catgory is for writings dealing with journaling

(defparameter journaling '(recording-your-thoughts
		     seeing-yourself-differently
		     record-of-events
		     outlet-of-emotion))


;; -------------------------
;; Book-notes - This catgory is for writings of notes taken from books
;; categorized by authors first then title

(defparameter book-notes '(media-cultural-studies
		     martin-luther-king
		     niklas-luhmann
		     kenneth-burke))

;;book-notes sub-categories
		     
(defparameter niklas-luhmann '(Social-systems
			 Differentiation-of-society
			 essays-on-self-reference))

(defparameter kenneth-burke '(grammar-of-motives
			rhetoric-of-motives))



;; -------------------------
;; Dreams - This catgory is for writings about dreams

(defparameter dreams '(positive
		 negative
		 disorienting))


;; -------------------------
;; Ideas - This catgory is for writings about ideas

(defparameter ideas '(projects
		efficiency
		organizing
		thoughts))




;; -------------------------
;; Project-notes - This catgory is for writings about projects

(defparameter project-notes '(writing
			programming
			ceramics
			glass
			painting
			fabric))


		      
		     


;; I need to make a function that will read the value of the variable from
;; a file and then after I have changed the values of the variable, it writes
;; the new value to the variable.

;; Maybe I can check to see if the variable has changed. And then update it if
;; it has changed.

;; is it necessary to write a whole new file each time?
;; would that be easier than updating the variable values in an existing file?


(defparameter *file-path* "~/lisp_prog/journal-db/cat-update.lisp")
(defun write-list(list1 list2)
  (with-open-file (out *file-path*
		       :direction
		       :output
		       :if-exists
		       :append
		       :if-does-not-exist
		       :create)
   (format out "(defvar ~a '~a)~%" list1 list2)))


;; ~/lisp_prog/journal-db/

(defun update-db (rec)
  (loop for item in rec
	do (eval `(write-list ',item ,item))))


;;  (defun describe-path (edge)
;;    `(there is a ,(caddr edge) going ,(cadr edge) from here.))





