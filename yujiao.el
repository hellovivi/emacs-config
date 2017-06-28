;; mp3 custom config
(message "start to load mp3 config ....")

;; (setq package-enable-at-startup nil)
;; (package-initialize)
;;(setq debug-on-error t)
;;(starter-kit-load "cedet")
(starter-kit-load "auto-complete")
(starter-kit-load "autopair")
(starter-kit-load "flymake")
(starter-kit-load "php")
(starter-kit-load "python")
(starter-kit-load "go")
(starter-kit-load "common")
(starter-kit-load "java")
;;(starter-kit-load "multi-web")
;;(starter-kit-load "color-theme")
;;(starter-kit-load "c")
(ispell-change-dictionary "american" t)
;; (starter-kit-load "flymake")

(global-set-key (kbd "C-2") 'set-mark-command)
(message "finishe loading mp3 config ....")


