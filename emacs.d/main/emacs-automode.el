(defun auto-mode (path mode)
  (add-to-list 'auto-mode-alist (cons path mode)))

(auto-mode "Dockerfile$" 'dockerfile-mode)
(auto-mode "\\.yml$" 'yaml-mode)
(auto-mode "\\.java$" 'jde-mode)


(provide 'emacs-automode)
