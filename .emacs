(set-background-color "black")
(set-foreground-color "white") 
(set-face-foreground 'region "green")  
(set-face-background 'region "blue") 
(tool-bar-mode -1)

(add-to-list 'load-path "~/.emacs.d/auto-complete-mode")
(require 'auto-complete-config)
(ac-config-default)

(load (expand-file-name "~/quicklisp/slime-helper.el"))
  ;; Replace "sbcl" with the path to your implementation
(setq inferior-lisp-program "sbcl")

(semantic-mode 1)
 
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)


(global-ede-mode 1)

(global-set-key (kbd "<f7>") 'ecb-minor-mode)         ;;ecb mode 

(global-set-key (kbd "C-<left>") 'windmove-left)  
(global-set-key (kbd "C-<right>") 'windmove-right)  
(global-set-key (kbd "C-<up>") 'windmove-up)   
(global-set-key (kbd "C-<down>") 'windmove-down)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(custom-enabled-themes (quote (misterioso)))
 '(ecb-options-version "2.40")
 '(ecb-source-path (quote (("/" "/"))))
 '(send-mail-function (quote smtpmail-send-it))
 '(smtpmail-smtp-server "smtp.qq.com" t)
 '(smtpmail-smtp-service 25 t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(put 'upcase-region 'disabled nil)
