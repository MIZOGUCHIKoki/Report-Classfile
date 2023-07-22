## 情報学群実験レポート用クラスファイル
- [platex用](https://github.com/MIZOGUCHIKoki/LaTeX-StyleFile/blob/master/Classfile/kut_exp/(u)platex/kut_exp.cls)
    - 多くの警告が出ます．
    - uplatex で利用する場合は，変更が必要です．[こちらのIssue(#8)](https://github.com/MIZOGUCHIKoki/LaTeX-StyleFile/issues/8)を参照してください．（From [250300i](https://github.com/250300i)）
    - 利用例は[こちら](https://github.com/MIZOGUCHIKoki/LaTeX-StyleFile/blob/master/Classfile/kut_exp/(u)platex/test.tex)
    
- [lualatex用](https://github.com/MIZOGUCHIKoki/LaTeX-StyleFile/blob/master/Classfile/kut_exp/lualatex/kut_exp.cls)
    - 推奨です．
    - 利用例は[こちら](https://github.com/MIZOGUCHIKoki/LaTeX-StyleFile/blob/master/Classfile/kut_exp/lualatex/test.tex)
<details>
    <summary>読み込み済みパッケージ</summary>
  
- `silence`
- `listngs`
- `hyperref`
- `fancyhdr`
- `amsmath`
- `lastpage`
- `geometry`
- `color`
- `xoclor`
</details>

### 設定事項
- 余白
  - 上下20mm，左右15mm，ヘッダ長20ptに設定．
- `caption`の`Unknown Document`警告を非表示．
- `bibliographstyle`を`junsrt`に変更．
- `hypersetup`で，全てのLinkColorを黒に変更．
- Page style
  - `report`スタイル
    - 奇数ページ：左上に章名，右下にページ数/合計ページ数
    - 偶数ページ：右上に章名，左下にページ数/合計ページ数
  - `appendixstyle`スタイル
    - 奇数ページ：左上に`付録`，右下にページ数/合計ページ数
    - 偶数ページ：右上に`付録`，左下にページ数/合計ページ数
- `figure`, `table`のキャプション番号を`chapter数-図の数`に変更．

### 追加・再定義コマンド
- `\tblref{}`：`表??` と出力．
- `\figref{}`：`図??` と出力．
- `\srcref{}`：`src.??` と出力．
- `\eqref{}`：`式(??)` と出力．

### title page
- `\title{}`：レポート名
- `\titlehead{}`：実験名（情報学群実験第1など），第n回レポート
- `\studentid{}`：学籍番号
- `\name{}`：氏名
- `\group{}`：所属グループ
- `\llab{}`：所属研究室
- `\date{}`：更新日OR提出期限

