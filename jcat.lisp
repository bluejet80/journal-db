

;; use push to add elements to the sublists

;; main categorical list

(defvar main-cat (list 'mem-aid 'motivation 'ob-look 'people 'myself 'lessons 'creative-disc 'journaling 'book-notes 'dreams 'ideas 'project-notes))

;; Sublists


;; Memory Aid - This category is for when I write about things that have happened to me

(defvar mem-aid (list 'SF 'Commune 'friends 'encounters 'events 'traveling))


;; Memory Aid Sub-Categories

(defvar SF (list 'walking 'parks 'details))

(defvar Commune (list 'forest-books 'Irving 'cooking 'garden 'criticism 'library))

(defvar friends (list 'mark 'scotty-megan 'travis 'brent))

(defvar encounters (list 'drugs 'random-encount))


;; I need to make a function that will read the value of the variable from
;; a file and then after I have changed the values of the variable, it writes
;; the new value to the variable.

;; Maybe I can check to see if the variable has changed. And then update it if
;; it has changed.

;; is it necessary to write a whole new file each time?
;; would that be easier than updating the variable values in an existing file?

