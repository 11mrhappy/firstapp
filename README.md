stateless widget は状態をもたず widgetが作られた時点で設定したプロパティを変更できない

stateful widgetは stateful widgetクラス と stateクラスで作られる

画面遷移時、onpressed内に navigator.push()とし、()内、つまりパラメータには1つ目にcontext、2つ目に遷移先を書く
MaterialPageRoute(builder: (context) => SecondRoute()) 2つ目はこのようになる。
逆に、画面を戻るときは移動先のページに、pushではなくpopとかくだけで戻れる。パラメータはcontextのみでよい。
pushは子フォルダ、popは親フォルダに移動し、現在のフォルダの画面が表示されているようなイメージ

また、ルーティングを関数作成時点で書いておくと今後が楽。こんな感じ
initialRoute: '/first',
routes: <String, WidgetBuilder> {
  '/first':(BuildContext context) => FirstRoute(),
  '/second':(BuildContext context) => SecondRoute(),
}
そして、この場合の画面遷移は、pushではなくpushNamed(context, '/second'); みたいに書く
ただ、戻るときは普通にpopメソッドでOK

pubspec.yamlの中
name                アプリ名
description         アプリの説明
version             アプリのバージョン番号
environment         Dart/Flutter SDKのバージョン規約
dependencies        使うパッケージ     主に使うのはここ
dev_dependencies    開発時のみ使うパッケージ
flutter             Flutterの設定(アセットなど)

バージョンの指定方法
any                 バージョン指定なし(非推奨)
1.2.3               1.2.3のみ
' >=1.2.3           1.2.3以上'
<1.2.3              1.2.3未満
^1.2.3              1.2.3以上、2.0.0未満
' >=1.2.3 <2.0.0    1.2.3以上、2.0.0未満'
そして、flutter pub getを忘れずに

flutter pubコマンド
pub get             未取得のパッケージ取得
pub upgrade         最新版のパッケージ取得
pub outdated        更新可能なパッケージのチェック
pub deps            依存関係のチェック

