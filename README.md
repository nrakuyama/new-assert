# System.assertEquals 書いてる人、全員バカです

![hiroyuki](https://dol.ismcdn.jp/mwimgs/d/5/750/img_88f89f52d1e1833ee8de671a178c006544566.jpg)

# Assert クラスの紹介

Winter '23 から新しくテスト検証用の Assert クラスが追加された  
https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_class_System_Assert.htm

## 主要メソッド

### `isNull(value)`, `isNotNull(value)`

テスト対象が null, 非 null かを検証する場合に使用する

### `isTrue(condition)`, `isFalse(condition)`

テスト対象が Boolean の場合に使用する

### `isInstanceOfType(instance, expectedType)`

型検証で使用する  
第二引数は `クラス名.class` として Type インスタンスを渡す

### `fail()`

エラーテスト等でテストを失敗させる時に使用する

### `areEqual(expected, actual)`

上記のどれにも当てはまらない検証で使用する  
`System.assertEquals()`と同じ

## これいる？

### `areNotEqual(notExpected, actual)`

ギリ使うかも

### `isNotInstanceOfType(instance, notExpectedType)`

要らんでしょ

## エラーメッセージの設定

引数を付け足してエラーメッセージの設定が可能  
デフォルトではクソみたいなメッセージを出す

## あたりまえだけど

案件の既存資産と相談してください
