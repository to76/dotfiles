;; Helm
(require 'helm-config)

(require 'helm-descbinds)

;; M-yにhelm-show-kill-ringを割り当てる
(define-key global-map (kbd "M-y") 'helm-show-kill-ring)

(when (require 'helm-c-moccur nil t)
  (setq
   helm-idle-delay 0.1
   ;; helm-c-moccur用 'helm-idle-delay'
   helm-c-moccur-helm-idle-delay 0.1
   ;; バッファの情報をハイライトする
   helm-c-moccur-higligt-info-line-flag t
   ;; 現在選択中の候補の１をほかのwindowに表示する
   helm-c-moccur-enable-auto-look-flag t
   ;; 起動時にポイントの位置の単語を初期パターンにする
   helm-c-moccur-enable-initial-pattern t)
  ;; C-M-oにhelm-c-moccur-occur-by-moccurを割り当てる
  (global-set-key (kbd "C-M-o") 'helm-c-moccur-occur-by-moccur))

;; color-moccurの設定
(when (require 'color-moccur nil t)
  ;; M-oにoccur-by-moccurを割り当て
  (define-key global-map (kbd "M-o") 'occur-by-moccur)
  ;; スペース区切りでAND検索
  (setq moccur-split-word t)
  ;; ディレクトリ検索のとき除外するファイル
  (add-to-list 'dmoccur-exclusion-mask "\\.DS_Store")
  (add-to-list 'dmoccur-exclusion-mask "^#.+#$"))
