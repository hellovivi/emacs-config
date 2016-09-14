
(dolist (package '(auto-complete))
  (unless (package-installed-p package)
    (package-install package)))

(require 'auto-complete)
(require 'auto-complete-config)

;;(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")  
(add-hook 'php-mode-hook 
(lambda () 
(auto-complete-mode))) 

(add-hook 'python-mode-hook 
(lambda () 
(auto-complete-mode))) 

(add-hook 'go-mode-hook 
(lambda () 
(auto-complete-mode))) 

(ac-config-default)
