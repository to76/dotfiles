;; 英語フォント設定
(set-face-attribute 'default nil :family "Source Han Code JP" :height 140)

;; 日本語フォント設定
(set-fontset-font
 nil 'japanese-jisx0208
 (font-spec :family "Source Han Code JP"))

;; Source Han Code JP フォントの横幅を調整

;; Source Han Code JP
;; | 数字 | アルファベット | 日本語　　 |
;; | 0123 | abcdefghijklmn | こんにちは |


            

