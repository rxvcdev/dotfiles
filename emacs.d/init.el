(package-initialize)

(setq load-path
              (append
               (mapcar
                'expand-file-name
                '(
                  "~/.emacs.d/main"
                  )) load-path))

(require 'emacs-keys)
(require 'emacs-packages)
(require 'emacs-custom) 
(require 'emacs-vars)
(require 'neotree)
(require 'powerline)
(require 'airline-themes)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; Load monokai theme
(load-theme 'monokai t)
;; Load airline powerlineish theme
(load-theme 'airline-powerlineish t)
(powerline-default-theme)
(projectile-mode)

;; Set default size 
(add-to-list 'default-frame-alist '(height . 500))
(add-to-list 'default-frame-alist '(width . 270))

;; Activate auto complete plugin
(ac-config-default)
