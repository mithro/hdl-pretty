;;;
;;; vindent.el
;;;
(setq debug-on-error nil)

;;; Set load path to dir where verilog-mode.elc is located
(setq load-path (cons "/opt/FSFemacs/lib/emacs-19.30/site-lisp" load-path))
;;; (setq load-path (cons "/home/rac/lib/emacs" load-path))

( load-library "verilog-mode" )

(buffer-disable-undo "*scratch*")
;;;
;;; load file
;;;

( setq name (nth 1 command-line-args))

( message "Input file: %s" name )

;;; (message "Using load-path %s" load-path)

(find-file name)

( verilog-mode )

;; Customize modes here
(add-hook 'verilog-mode-hook
          '(lambda()
             (auto-fill-mode 1)
             (setq fill-column 74)
             (abbrev-mode 1)))

;;;
;;; Make sure we are at beginning of file
;;;
(goto-char (point-min))

;;;
;;; Could not get indent-region to work
;;;
(while (not(eobp))
(progn
  ( indent-according-to-mode )
  (forward-line 1)))

(save-buffer)


;

; Local Variables:
; mode:emacs-lisp
; End:
