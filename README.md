# text_into_data
this is for the data file in CIT! So, the explanations will be in Japanese!
  
### このファイルは６月１７日２０１９年提出のレポート専用のPython3用のライブラリです
###### ＝＝＝＝＝　使い方　＝＝＝＝＝
import extract_dataをした後にextract_data関数にデータを抽出したいテキストファイルのディレクトリを入力する。  
返り値としては、~list型タプル型(6月10日2019年)~辞書型(6月13日2019年)のデータが返されます。使ってね！

###### ＝＝＝＝＝ 追記　＝＝＝＝＝
返り値を単語とそのフレーム毎の数値にしておきました。また、返り値のデータ型をタプル型になりました。  
1つ1つ入力するのはめんどくさいと感じたのでファイルが格納されたディレクトリ名を入力し、その返り値として発音している言葉をキーワードに(15, Y)の行列を辞書型で返すようにしました(6月13日2019年)
