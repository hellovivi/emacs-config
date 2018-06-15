
;(starter-kit-install-if-needed 'python-mode)

(require 'python-mode)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(when (executable-find "ipython")
   (setq python-shell-interpreter "ipython"))
;(add-to-list 'interpreter-mode-alist '("python" . python-mode))

(when (require 'cython-mode nil 'no-error)
  (add-to-list 'auto-mode-alist '("\\.pyx\\'" . cython-mode))
  (add-to-list 'auto-mode-alist '("\\.pxd\\'" . cython-mode))
  (add-to-list 'auto-mode-alist '("\\.pxi\\'" . cython-mode)))
