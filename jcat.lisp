

;; use push to add elements to the sublists

;; main categorical list

(defvar main-cat '(mem-aid
		   motivation
		   ob-look
		   people
		   myself
		   lessons
		   creative-disc
		   journaling
		   book-notes
		   dreams
		   ideas
		   project-notes))

;; Sublists


;; Memory Aid - This category is for when I write about things that have happened to me

(defvar mem-aid '(SF
		  Commune
		  friends
		  encounters))


;; Memory Aid Sub-Categories

(defvar SF '(walking
	     parks
	     details))

(defvar Commune '(forest-books
		  Irving
		  cooking
		  garden
		  criticism
		  library))

(defvar friends '(mark
		  scotty-megan
		  travis
		  brent))

(defvar encounters '(drugs
		     random-encount))

;; Motivation - This catgory is for writing that motivates me

(defvar motivation '(forest-of-focus
		     


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

(defun rem-one (lst)
  (progn
    (setq lst (reverse lst))
    (pop lst)
    (setq lst (reverse lst))))

