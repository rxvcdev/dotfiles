;;(require 'package)
;;(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
      ;;              (not (gnutls-available-p))))
    ;;   (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  ;;(add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  ;;(when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
  ;;  (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
;;(package-initialize)

;;(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; '(package-selected-packages (quote (monokai-alt-theme nlinum neotree monokai-theme))))


(require 'package)

(setq package-list '(
                     monokai-alt-theme
		     nlinum
		     neotree
		     monokai-theme
                     ))


(setq package-archives '(("elpa" . "http://tromey.com/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

(package-initialize)

(defun ensure-packages ()
  (interactive)
  (unless package-archive-contents (package-refresh-contents))
  (dolist (package package-list)
    (unless (package-installed-p package)
      (message "Installing: %s" package)
      (package-install package))))

(ensure-packages)



(provide 'emacs-packages)
