
(dolist (package '(flymake))
  (unless (package-installed-p package)
    (package-install package)))

(require 'flymake)

(defvar flymake-mode-map (make-sparse-keymap))
(defun flymake-display-current-error ()
 "Display errors/warnings under cursor."
 (interactive)
 (let ((ovs (overlays-in (point) (1+ (point)))))
  (catch 'found
   (dolist (ov ovs)
    (when (flymake-overlay-p ov)
     (message (overlay-get ov 'help-echo))
     (throw 'found t))))))
(defun flymake-goto-next-error-disp ()
 "Go to next error in err ring, then display error/warning."
 (interactive)
 (flymake-goto-next-error)
 (flymake-display-current-error))
(defun flymake-goto-prev-error-disp ()
 "Go to previous error in err ring, then display error/warning."
 (interactive)
 (flymake-goto-prev-error)
 (flymake-display-current-error))

    (global-set-key (kbd "<f11>") 'flymake-goto-prev-error-disp)
    (global-set-key (kbd "<f12>") 'flymake-goto-next-error-disp)
    (define-key flymake-mode-map (kbd "C-c <C-f4>")
     'flymake-display-err-menu-for-current-line)
    (or (assoc 'flymake-mode minor-mode-map-alist)
     (setq minor-mode-map-alist
      (cons (cons 'flymake-mode flymake-mode-map)
        minor-mode-map-alist)))
