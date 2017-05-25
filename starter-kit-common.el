
(dolist (package '(move-text))
  (unless (package-installed-p package)
    (package-install package)))

;;(move-text-default-bindings)
(global-set-key (kbd "M-n") 'move-text-down)
(global-set-key (kbd "M-p") 'move-text-up)


(defadvice show-paren-function (after my-echo-paren-matching-line activate)
  "If a matching paren is off-screen, echo the matching line."
  (when (char-equal (char-syntax (char-before (point))) ?\))
    (let ((matching-text (blink-matching-open)))
      ;;(when matching-text
      ;;  (message matching-text))
        )))
