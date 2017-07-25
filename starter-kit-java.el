
(setq package-archives
'(("melpa" . "https://melpa.org/packages/")) )
  (dolist (package '(jdee))
    (unless (package-installed-p package)
      (package-install package)))

(custom-set-variables
        '(jdee-server-dir "/Users/yujiao/.emacs.d/jdee-server")
)



;;(require 'pom)
;;(let ((pom (pom-read-pom)))
;;  (jde-project-file-version "1.0")
;;  (jde-set-variables
;;   '(jde-javadoc-gen-destination-directory "./target/docs/apidocs")
;;   '(jde-project-name (pom-get-project-id pom))
;;   '(jde-global-classpath (pom-get-classpath pom))))
;;



;;(package-initialize)
;;(unless (package-installed-p 'ac-php )
;; (package-refresh-contents)
;; (package-install 'ac-php )
;; )
;;(require 'cl)
;;(require 'php-mode)
;;(add-hook 'php-mode-hook '(lambda ()
;;                           (auto-complete-mode t)
;;                           (require 'ac-php)
;;                           (setq ac-sources  '(ac-source-php ) )
;;                           (yas-global-mode 1)
;;
;;                           (define-key php-mode-map  (kbd "C-]") 'ac-php-find-symbol-at-point)   ;goto define
;;                           (define-key php-mode-map  (kbd "C-t") 'ac-php-location-stack-back   ) ;go back
;;                           ))
;;

;;(require 'php-mode)
;;(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
;;(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))

;;(require 'flymake-php)
;;(add-hook 'php-mode-hook 'flymake-php-load)
;;
;;(add-hook 'php-mode-hook (lambda () (setq comment-start "//"
;;                                        comment-end   "")))
;;
;;
;;(defun comment-or-uncomment-region-or-line ()
;;    "Comments or uncomments the region or the current line if there's no active region."
;;    (interactive)
;;    (let (beg end)
;;        (if (region-active-p)
;;            (setq beg (region-beginning) end (region-end))
;;            (setq beg (line-beginning-position) end (line-end-position)))
;;        (comment-or-uncomment-region beg end)
;;        (next-line)))
;;
;;(define-key php-mode-map (kbd "M-;") 'comment-or-uncomment-region-or-line)
;;
;;(defun yujiao-php-mode-init()
;;      "php的一些基础配置，默认开启的模式"
;;      (require 'electric)
;;      (electric-indent-mode t)
;;      ;;系统本身内置的智能自动补全括号
;;      (electric-pair-mode t)
;;      ;;特定条件下插入新行
;;      (electric-layout-mode t))
;;
;;(add-hook 'php-mode-hook 'yujiao-php-mode-init)



;;(defun wicked/php-mode-init ()
;; "Set some buffer-local variables."
;; (c-set-style "K&R")
;; (setq c-basic-offset 4)
;; ;;(c-toggle-auto-hungry-state 1)
;; (which-function-mode t)
;; (define-key c-mode-base-map [(return)] 'newline-and-indent)
;; (local-set-key (kbd "RET") 'newline-and-indent)
;; (setq c-macro-shrink-window-flag t)
;; (setq c-macro-preprocessor "cpp")
;; (setq c-macro-cppflags " ")
;; (setq c-macro-prompt-flag t)
;; (setq abbrev-mode t))
;;(add-hook 'php-mode-hook 'wicked/php-mode-init)
