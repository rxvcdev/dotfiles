(setq
 inhibit-startup-message             t
 line-number-mode                    t
 column-number-mode                  t
 make-backup-files                   nil
 visible-bell                        t
 track-eol                           t
 org-log-done                        t
 transient-mark-mode                 t
 require-final-newline               t
 next-line-add-newlines              nil
 display-time-24hr-format            t
 )

;; auto insert closing bracket
(electric-pair-mode 1)
;; make cursor movement stop in between camelCase words.
(global-subword-mode 1)
;; make typing delete/overwrites selected text
(delete-selection-mode 1)
;; turn on highlighting current line
(global-hl-line-mode 1)
;; turn on bracket match highlight
(show-paren-mode 1)
;; always show line numbers
(global-linum-mode 1) 

(auto-compression-mode t)
(auto-insert-mode t)
(global-font-lock-mode t)
(show-paren-mode t)
(display-time)
(column-number-mode 1)
(pending-delete-mode 1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)



(provide 'emacs-vars)
