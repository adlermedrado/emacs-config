;; macOS settings
(when (eq system-type 'darwin)
  (message "Setting up keybings for macOS")
  (setq mac-command-modifier 'super ;⌘=super-key (but can't use s-SPACE,TAB)
	mac-right-command-modifier 'meta ; meta-f/b are hard to reach otherwise
	mac-option-modifier 'meta	 ;alt=meta=option
	mac-right-option-modifier nil ;retain compose characters, düde
	mac-right-control-modifier 'hyper
	delete-by-moving-to-trash t
	browse-url-browser-function 'browse-url-default-macosx-browser
	trash-directory (expand-file-name ".Trash" (getenv "HOME")))

  (bind-keys ("s-s" . save-buffer)
	     ("s-a" . mark-whole-buffer)
	     ("s-c" . kill-ring-save)
	     ("s-m" . suspend-frame)
	     ("s-t" . (lambda (arg) (interactive "p")
			(let ((mac-frame-tabbing t))
			  (if (not (eq arg 4))
			      (make-frame)
			    (call-interactively #'find-file-other-frame)))))
	     ("s-x" . kill-region)
	     ("s-v" . yank)
	     ("s-w" . delete-frame)
	     ("s-n" . make-frame-command))
)
