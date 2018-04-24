;; make {copy, cut, paste, undo} have {C-c, C-x, C-v, C-z} keys
(cua-mode 1)

(progn
 ;; make emacs use standard keys

  ;; Select All. was move-beginning-of-line
  (global-set-key (kbd "C-a") 'mark-whole-buffer-buffer)

  ;; Find. was forward-char
  (global-set-key (kbd "C-f") 'isearch-forward)

  ;; New. was next-line
  (global-set-key (kbd "C-n") 'xah-new-empty-buffer)

  ;; New Window. was nil
  (global-set-key (kbd "C-S-n") 'make-frame-command)

  ;; Open. was open-line
  (global-set-key (kbd "C-o") 'ido-find-file)

  ;; Save. was isearch-forward
  (global-set-key (kbd "C-s") 'save-buffer)

  ;; Save As. was nil
  (global-set-key (kbd "C-S-s") 'write-file)

  ;; Paste. was scroll-up-command
  (global-set-key (kbd "C-v") 'yank)

  ;; Close. was kill-region
  (global-set-key (kbd "C-w") 'kill-buffer)

  ;; Redo. was yank
  (global-set-key (kbd "C-y") 'redo)

  ;; Undo. was suspend-frame
  (global-set-key (kbd "C-z") 'undo)
  ;;

  ;; go to line key
  (global-set-key (kbd "C-l") 'goto-line)
  )

(provide 'emacs-keys)
