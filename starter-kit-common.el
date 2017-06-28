
(dolist (package '(move-text))
  (unless (package-installed-p package)
    (package-install package)))

;;(move-text-default-bindings)
(global-set-key (kbd "M-n") 'move-text-down)
(global-set-key (kbd "M-p") 'move-text-up)

;;(defadvice show-paren-function (after my-echo-paren-matching-line activate)
;;  "If a matching paren is off-screen, echo the matching line."
;;  (when (char-equal (char-syntax (char-before (point))) ?\))
;;    (let ((matching-text (blink-matching-open)))
;;      ;;(when matching-text
;;      ;;  (message matching-text))
;;      )))
;;
(dumb-jump-mode t)
(global-set-key (kbd "M-g o") 'dumb-jump-go-other-window)
(global-set-key (kbd "M-g j") 'dumb-jump-go)
(global-set-key (kbd "M-g b") 'dumb-jump-back)
(global-set-key (kbd "M-g q") 'dumb-jump-quick-look)
(global-set-key (kbd "M-g i") 'dumb-jump-go-prompt)

;;(use-package dumb-jump
;;  :bind (("M-g o" . dumb-jump-go-other-window)
;;         ("M-g j" . dumb-jump-go)
;;         ("M-g i" . dumb-jump-go-prompt)
;;         ("M-g x" . dumb-jump-go-prefer-external)
;;         ("M-g z" . dumb-jump-go-prefer-external-other-window))
;;  :config (setq dumb-jump-selector 'ivy) ;; (setq dumb-jump-selector 'helm)
;;  :ensure)
;;
(require 'mic-paren)
(paren-activate)
