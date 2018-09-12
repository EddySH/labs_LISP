;; Declare constants
(SETQ list1 '(RM F G H J (J G D))) 
(SETQ list2 '(2 3 4 5 6 (7 8)))
(SETQ list3 '(U N Y L O O P))


;; First task ;;
(FORMAT T "Task1:~%")

((lambda (inList1 inList2 inList3) 
(PRINC (LIST (CAR inList1) (CAR inList2) (CAR inList3))))
list1 list2 list3)

;; Second task ;;
(FORMAT T "~3%Task2:~%")

(DEFUN func (a b c) (LIST (NTH 3 a) (NTH 5 b) (NTH 1 c)))
(PRINC (func list1 list2 list3))

;; Third task ;;
(FORMAT T "~3%Task3:~%")

(DEFUN func2 (a) 
(if (atom a) (if (= (mod a 2) 0) (expt a 2) (log a)) '"not atom"))
(PRINC (func2 '(6)))