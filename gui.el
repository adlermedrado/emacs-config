;; Remove menus, setup GUI
;; (menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq-default message-log-max 10000)

;; window size
(add-to-list 'default-frame-alist '(height . 26))
(add-to-list 'default-frame-alist '(width . 89))

;; window modes
(ido-mode 1)
(cua-mode 1)
(display-time-mode 1)
(winner-mode 1)

;; start the initial frame maximized
(add-to-list 'initial-frame-alist '(fullscreen . maximized))
