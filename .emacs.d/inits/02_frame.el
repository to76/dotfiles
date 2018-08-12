;; 行数を表示する
(global-linum-mode t)

;; スタートアップメッセージを表示させない
(setq inhibit-startup-message 1)

;; ターミナルで起動したときにメニューを表示しない
(if (eq window-system 'x)
    (menu-bar-mode 1) (menu-bar-mode 0))
(menu-bar-mode nil)

;; default scroll bar消去
(scroll-bar-mode 0)

;; カーソルの点滅をやめる
(blink-cursor-mode 0)

;; タイトルにフルパス表示
(setq frame-title-format "%f")

