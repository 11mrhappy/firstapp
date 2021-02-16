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
