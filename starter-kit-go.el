
(dolist (package '(go-mode))
  (unless (package-installed-p package)
    (package-install package)))

(require 'go-mode)
(require 'go-autocomplete)
(require 'auto-complete-config)
(add-to-list 'auto-mode-alist '("\\.go$" . go-mode))

(eval-after-load "go-mode"
   '(require 'flymake-go))
(add-hook 'go-mode-hook (lambda ()
                         (local-set-key (kbd "C-c C-r") 'go-remove-unused-imports)))
(add-hook 'go-mode-hook (lambda ()
                         (local-set-key (kbd "C-c i") 'go-goto-imports)))
(add-hook 'before-save-hook 'gofmt-before-save)
