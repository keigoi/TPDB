(declare-sort Loc 0)
(declare-const f1_0_main_Load Loc)
(declare-const f392_0_createList_GT Loc)
(declare-const f89_0_main_InvokeMethod Loc)
(declare-const f730_0_quicksort_NONNULL Loc)
(declare-const f703_0_main_InvokeMethod Loc)
(declare-const f501_0_createList_InvokeMethod Loc)
(declare-const f790_0_sortedLow_NONNULL Loc)
(declare-const f1140_0_sortedHigh_NONNULL Loc)
(declare-const f1000_0_quicksort_InvokeMethod Loc)
(declare-const f1287_0_quicksort_InvokeMethod Loc)
(declare-const f1022_0_sortedLow_InvokeMethod Loc)
(declare-const f1232_0_sortedHigh_InvokeMethod Loc)
(declare-const f1309_0_sortedHigh_InvokeMethod Loc)
(declare-const __init Loc)
(assert (distinct f1_0_main_Load f392_0_createList_GT f89_0_main_InvokeMethod f730_0_quicksort_NONNULL f703_0_main_InvokeMethod f501_0_createList_InvokeMethod f790_0_sortedLow_NONNULL f1140_0_sortedHigh_NONNULL f1000_0_quicksort_InvokeMethod f1287_0_quicksort_InvokeMethod f1022_0_sortedLow_InvokeMethod f1232_0_sortedHigh_InvokeMethod f1309_0_sortedHigh_InvokeMethod __init ))

(define-fun cfg_init ( (pc Loc) (src Loc) (rel Bool) ) Bool
  (and (= pc src) rel))

(define-fun cfg_trans2 ( (pc Loc) (src Loc)
                         (pc1 Loc) (dst Loc)
                         (rel Bool) ) Bool
  (and (= pc src) (= pc1 dst) rel))

(define-fun cfg_trans3 ( (pc Loc) (exit Loc)
                         (pc1 Loc) (call Loc)
                         (pc2 Loc) (return Loc)
                         (rel Bool) ) Bool
  (and (= pc exit) (= pc1 call) (= pc2 return) rel))

(define-fun init_main ( (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int) ) Bool
  (cfg_init pc __init true))

(define-fun next_main (
                 (pc Loc) (arg1 Int) (arg2 Int) (arg3 Int) (arg4 Int) (arg5 Int)
                 (pc1 Loc) (arg1P Int) (arg2P Int) (arg3P Int) (arg4P Int) (arg5P Int)
             ) Bool
  (or
    (cfg_trans2 pc f1_0_main_Load pc1 f392_0_createList_GT (and (and (and (and (> arg1 0) (= 0 arg2)) (= 0 arg1P)) (= 0 arg2P)) (= 0 arg3P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f89_0_main_InvokeMethod (and (and (and (and (<= arg1P arg1) (> arg2 0)) (> arg1 0)) (> arg1P 0)) (= 0 arg2P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f89_0_main_InvokeMethod (and (and (and (and (> arg2P (- 1)) (> arg2 0)) (<= arg1P arg1)) (> arg1 0)) (> arg1P 0)))
    (cfg_trans2 pc f89_0_main_InvokeMethod pc1 f392_0_createList_GT (and (and (and (> arg1 0) (> arg2P 0)) (= arg2 arg1P)) (= 1 arg3P)))
    (cfg_trans2 pc f1_0_main_Load pc1 f730_0_quicksort_NONNULL (and (and (and (<= (+ arg1P 1) arg1) (> arg1 0)) (> arg1P (- 1))) (= 0 arg2)))
    (cfg_trans2 pc f89_0_main_InvokeMethod pc1 f730_0_quicksort_NONNULL (exists ((x195 Int)) (and (and (and (and (<= (+ arg1P 1) arg1) (> x195 0)) (> arg1 0)) (> arg1P (- 1))) (= 0 arg2))))
    (cfg_trans2 pc f1_0_main_Load pc1 f730_0_quicksort_NONNULL (and (and (and (<= (- arg1P 1) arg1) (> arg1 0)) (> arg1P 1)) (= 0 arg2)))
    (cfg_trans2 pc f89_0_main_InvokeMethod pc1 f703_0_main_InvokeMethod (exists ((x18 Int)) (and (and (and (and (and (<= arg1P arg1) (> x18 0)) (> arg1 0)) (> arg1P 0)) (> arg2P 2)) (= 0 arg3P))))
    (cfg_trans2 pc f89_0_main_InvokeMethod pc1 f703_0_main_InvokeMethod (exists ((x23 Int)) (and (and (and (and (<= arg1P arg1) (> x23 0)) (> arg1 0)) (> arg1P 0)) (> arg2P 2))))
    (cfg_trans2 pc f89_0_main_InvokeMethod pc1 f703_0_main_InvokeMethod (exists ((x29 Int)) (and (and (and (and (<= arg1P arg1) (> x29 0)) (> arg1 0)) (> arg1P 0)) (> arg2P 1))))
    (cfg_trans2 pc f89_0_main_InvokeMethod pc1 f703_0_main_InvokeMethod (exists ((x35 Int)) (and (and (and (and (and (and (<= arg1P arg1) (> x35 0)) (<= (- arg2P 1) arg1)) (> arg1 0)) (> arg1P 0)) (> arg2P 1)) (= 0 arg3P))))
    (cfg_trans2 pc f703_0_main_InvokeMethod pc1 f730_0_quicksort_NONNULL (exists ((x40 Int)) (and (and (and (and (and (<= arg1P arg2) (> x40 0)) (> arg1 0)) (> arg2 0)) (> arg1P 0)) (<= (+ arg3 2) arg2))))
    (cfg_trans2 pc f392_0_createList_GT pc1 f392_0_createList_GT (and (and (and (and (and (and (> arg1 0) (> arg2 (- 1))) (< (- arg1 1) arg1)) (>= arg3 arg2)) (= (- arg1 1) arg1P)) (= arg2 arg2P)) (= arg3 arg3P)))
    (cfg_trans2 pc f392_0_createList_GT pc1 f501_0_createList_InvokeMethod (and (and (and (and (and (and (and (> arg1 0) (> arg2 (- 1))) (> arg3 (- 1))) (< arg3 arg2)) (= arg1 arg1P)) (= (- arg1 1) arg2P)) (= arg2 arg3P)) (= (+ arg3 1) arg4P)))
    (cfg_trans2 pc f392_0_createList_GT pc1 f501_0_createList_InvokeMethod (exists ((x54 Int)) (and (and (and (and (and (and (and (and (> arg1 0) (> arg2 (- 1))) (< arg3 arg2)) (> x54 (- 1))) (> arg3 (- 1))) (= arg1 arg1P)) (= (- arg1 1) arg2P)) (= arg2 arg3P)) (= (+ arg3 1) arg4P))))
    (cfg_trans2 pc f501_0_createList_InvokeMethod pc1 f392_0_createList_GT (and (and (and (and (and (and (and (> arg1 0) (> arg4 0)) (> arg3 0)) (<= arg4 arg3)) (< arg2 arg1)) (= arg2 arg1P)) (= arg3 arg2P)) (= arg4 arg3P)))
    (cfg_trans2 pc f730_0_quicksort_NONNULL pc1 f790_0_sortedLow_NONNULL (and (and (and (<= (+ arg2P 1) arg1) (> arg1 0)) (> arg2P (- 1))) (<= (+ arg1P 2) arg1)))
    (cfg_trans2 pc f730_0_quicksort_NONNULL pc1 f1140_0_sortedHigh_NONNULL (and (and (and (<= (+ arg2P 2) arg1) (> arg1 1)) (> arg2P (- 1))) (<= (+ arg1P 2) arg1)))
    (cfg_trans2 pc f730_0_quicksort_NONNULL pc1 f1000_0_quicksort_InvokeMethod (and (and (and (and (and (and (<= arg1P arg1) (<= (+ arg2P 2) arg1)) (> arg1 3)) (> arg1P 3)) (> arg2P 1)) (<= (+ arg4P 2) arg1)) (<= (+ arg5P 4) arg1)))
    (cfg_trans2 pc f730_0_quicksort_NONNULL pc1 f1000_0_quicksort_InvokeMethod (and (and (and (and (and (and (<= arg1P arg1) (<= (+ arg2P 2) arg1)) (> arg1 4)) (> arg1P 4)) (> arg2P 2)) (<= (+ arg4P 2) arg1)) (<= (+ arg5P 4) arg1)))
    (cfg_trans2 pc f1000_0_quicksort_InvokeMethod pc1 f1140_0_sortedHigh_NONNULL (and (and (and (and (and (and (and (and (and (<= (+ arg2P 2) arg1) (<= arg2P arg2)) (> arg1 2)) (> arg2 0)) (> arg2P 0)) (<= (+ arg5 4) arg1)) (<= (+ arg4 2) arg1)) (<= (+ arg5 2) arg2)) (= arg4 arg1P)) (= arg3 arg3P)))
    (cfg_trans2 pc f1000_0_quicksort_InvokeMethod pc1 f1287_0_quicksort_InvokeMethod (and (and (and (and (and (and (<= arg1P arg1) (> arg1 4)) (> arg2 2)) (> arg1P 4)) (<= (+ arg5 4) arg1)) (<= (+ arg4 2) arg1)) (<= (+ arg5 2) arg2)))
    (cfg_trans2 pc f1000_0_quicksort_InvokeMethod pc1 f1287_0_quicksort_InvokeMethod (and (and (and (and (and (and (<= arg1P arg1) (> arg1 3)) (> arg2 1)) (> arg1P 3)) (<= (+ arg5 4) arg1)) (<= (+ arg4 2) arg1)) (<= (+ arg5 2) arg2)))
    (cfg_trans2 pc f790_0_sortedLow_NONNULL pc1 f790_0_sortedLow_NONNULL (exists ((x105 Int)) (and (and (and (and (and (<= (+ arg2P 1) arg2) (> x105 arg1)) (> arg2 0)) (> arg2P (- 1))) (= arg1 arg1P)) (= arg3 arg3P))))
    (cfg_trans2 pc f790_0_sortedLow_NONNULL pc1 f790_0_sortedLow_NONNULL (exists ((x110 Int)) (and (and (and (and (and (<= (+ arg2P 1) arg2) (<= x110 arg1)) (> arg2 0)) (> arg2P (- 1))) (= arg1 arg1P)) (= arg3 arg3P))))
    (cfg_trans2 pc f790_0_sortedLow_NONNULL pc1 f730_0_quicksort_NONNULL (exists ((x115 Int)) (and (and (and (<= arg1P arg2) (<= x115 arg1)) (> arg2 1)) (> arg1P 1))))
    (cfg_trans2 pc f790_0_sortedLow_NONNULL pc1 f1022_0_sortedLow_InvokeMethod (and (and (and (and (and (and (and (and (<= arg1P arg2) (<= arg5P arg1)) (<= arg2P arg2)) (> arg2 3)) (> arg1P 3)) (> arg2P 1)) (<= (+ arg5P 2) arg2)) (<= (+ arg4P 4) arg2)) (= arg3 arg3P)))
    (cfg_trans2 pc f790_0_sortedLow_NONNULL pc1 f1022_0_sortedLow_InvokeMethod (and (and (and (and (and (and (and (and (<= arg1P arg2) (<= arg5P arg1)) (<= arg2P arg2)) (> arg2 4)) (> arg1P 4)) (> arg2P 1)) (<= (+ arg5P 2) arg2)) (<= (+ arg4P 4) arg2)) (= arg3 arg3P)))
    (cfg_trans2 pc f1022_0_sortedLow_InvokeMethod pc1 f730_0_quicksort_NONNULL (and (and (and (and (and (and (and (<= arg1P arg1) (<= arg1P arg2)) (> arg1 2)) (> arg2 1)) (> arg1P 1)) (<= (+ arg4 4) arg1)) (<= (+ arg5 2) arg1)) (<= (+ arg5 2) arg2)))
    (cfg_trans2 pc f1140_0_sortedHigh_NONNULL pc1 f1140_0_sortedHigh_NONNULL (exists ((x140 Int)) (and (and (and (and (and (<= (+ arg2P 1) arg2) (<= x140 arg1)) (> arg2 0)) (> arg2P (- 1))) (= arg1 arg1P)) (= arg3 arg3P))))
    (cfg_trans2 pc f1140_0_sortedHigh_NONNULL pc1 f1140_0_sortedHigh_NONNULL (exists ((x145 Int)) (and (and (and (and (and (<= (+ arg2P 1) arg2) (> x145 arg1)) (> arg2 0)) (> arg2P (- 1))) (= arg1 arg1P)) (= arg3 arg3P))))
    (cfg_trans2 pc f1140_0_sortedHigh_NONNULL pc1 f1232_0_sortedHigh_InvokeMethod (and (and (and (and (and (and (and (and (<= arg1P arg2) (> arg5P arg1)) (<= arg2P arg2)) (> arg2 3)) (> arg1P 3)) (> arg2P 1)) (<= (+ arg5P 2) arg2)) (<= (+ arg4P 4) arg2)) (= arg3 arg3P)))
    (cfg_trans2 pc f1140_0_sortedHigh_NONNULL pc1 f1232_0_sortedHigh_InvokeMethod (and (and (and (and (and (and (and (and (<= arg1P arg2) (> arg5P arg1)) (<= arg2P arg2)) (> arg2 4)) (> arg1P 4)) (> arg2P 1)) (<= (+ arg5P 2) arg2)) (<= (+ arg4P 4) arg2)) (= arg3 arg3P)))
    (cfg_trans2 pc f1140_0_sortedHigh_NONNULL pc1 f730_0_quicksort_NONNULL (exists ((x164 Int)) (and (and (and (<= arg1P arg2) (> x164 arg1)) (> arg2 1)) (> arg1P 1))))
    (cfg_trans2 pc f1232_0_sortedHigh_InvokeMethod pc1 f730_0_quicksort_NONNULL (and (and (and (and (and (and (and (<= arg1P arg1) (<= arg1P arg2)) (> arg1 2)) (> arg2 1)) (> arg1P 1)) (<= (+ arg4 4) arg1)) (<= (+ arg5 2) arg1)) (<= (+ arg5 2) arg2)))
    (cfg_trans2 pc f1140_0_sortedHigh_NONNULL pc1 f1309_0_sortedHigh_InvokeMethod (and (and (and (and (and (and (and (and (<= arg1P arg2) (> arg5P arg1)) (<= arg2P arg2)) (> arg2 3)) (> arg1P 3)) (> arg2P 1)) (<= (+ arg5P 2) arg2)) (<= (+ arg4P 4) arg2)) (= arg3 arg3P)))
    (cfg_trans2 pc f1140_0_sortedHigh_NONNULL pc1 f1309_0_sortedHigh_InvokeMethod (and (and (and (and (and (and (and (and (<= arg1P arg2) (> arg5P arg1)) (<= arg2P arg2)) (> arg2 4)) (> arg1P 4)) (> arg2P 1)) (<= (+ arg5P 2) arg2)) (<= (+ arg4P 4) arg2)) (= arg3 arg3P)))
    (cfg_trans2 pc f1309_0_sortedHigh_InvokeMethod pc1 f730_0_quicksort_NONNULL (and (and (and (and (and (and (and (<= arg1P arg1) (<= arg1P arg2)) (> arg1 2)) (> arg2 1)) (> arg1P 1)) (<= (+ arg4 4) arg1)) (<= (+ arg5 2) arg1)) (<= (+ arg5 2) arg2)))
    (cfg_trans2 pc __init pc1 f1_0_main_Load true)
  )
)
