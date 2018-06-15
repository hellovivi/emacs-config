
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
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-env "GOPATH"))
(defun comment-or-uncomment-region-or-line ()
    "Comments or uncomments the region or the current line if there's no active region."
    (interactive)
    (let (beg end)
        (if (region-active-p)
            (setq beg (region-beginning) end (region-end))
            (setq beg (line-beginning-position) end (line-end-position)))
        (comment-or-uncomment-region beg end)
        (next-line)))

(define-key go-mode-map (kbd "M-;") 'comment-or-uncomment-region-or-line)
