
(add-to-list 'load-path "/color-theme-6.6.0")
(require 'color-theme)
(eval-after-load "color-theme"
 '(progn
     (color-theme-initialize)
     (color-theme-hober)))

;;(require 'php-mode)
;;(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
;;(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))


