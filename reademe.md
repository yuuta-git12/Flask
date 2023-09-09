## 確認事項
- Flaskが依存しているパッケージの確認
1. ```docker compose exec -it app /bin/bash```でappコンテナ内に入る
2. ```pip list```を叩きFlaskが依存するパッケージがインストールされているか確認
   1. 依存するパッケージ一覧(バージョンは2023年9月時点のもの)
   2. ```Package      Version
        ------------ -------
        click        8.1.7
        Flask        2.1.1
        itsdangerous 2.1.2
        Jinja2       3.1.2
        MarkupSafe   2.1.3
        pip          23.2.1
        setuptools   65.5.1
        Werkzeug     2.3.7
        wheel        0.41.2```


## 環境設定
- コードチェッカー・フォーマッターの利用
  - コードチェッカー・フォーマッターに関するライブラリは仮想環境でなくローカル環境にインストールする
  - pipはローカル環境にpythonがないと使えないので、事前にローカル環境にpythonをインストールしておく
  - ローカル環境にインストールされるからあんまり良くない?
  - ローカル環境の場合は```python3 -m``` の後ろに以下のコマンドを追記し実行することで必要なライブラリがインストールされる
  - ```pip install flake8 black isort mypy```
  - ```python3 -m pip install flake8 black isort mypy```
  - 調べたらvscodeの拡張機能で同様の機能が使えるみたいなので、そっちの方が簡単みたい.Microsoftの公式版があるみたい。以下の名称で拡張機能を検索
    - Flake8
    - Black Formatter
    - isort
    - Mypy Type Checker
  - 参考サイトhttps://qiita.com/siruku6/items/6a8412c41616b558df66