
(dolist (package '(autopair))
  (unless (package-installed-p package)
    (package-install package)))

(require 'autopair)

(add-hook 'php-mode-hook 
(lambda () 
(autopair-mode))) 

(add-hook 'python-mode-hook 
(lambda () 
(autopair-mode))) 

(add-hook 'go-mode-hook 
(lambda () 
(autopair-mode)))
