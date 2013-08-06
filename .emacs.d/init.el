(package-initialize)

;; (load-file "~/.emacs.d/piglatin.el")
(require 'piglatin-mode "~/.emacs.d/piglatin.el")
(setq ediff-split-window-function 'split-window-horizontally)
(ido-mode t)
(column-number-mode t)
(show-paren-mode t)
(transient-mark-mode 1)
(global-set-key (kbd "C-h") 'backward-delete-char)

;; org mode
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(setq org-todo-keywords '((sequence "TODO(t)" "IN PROGRESS(p)" "|" "DONE(d!)" "CANCELLED(c@)")))
(setq org-agenda-files (list "~/org/work.org"
                             "~/org/personal.org"))
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done 'time)
(setq org-agenda-start-with-follow-mode t)

;; autocomplete mode
(add-to-list 'load-path "~/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
(ac-config-default)
