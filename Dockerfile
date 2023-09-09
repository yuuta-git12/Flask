# もととなるイメージを指定　ここではpython3.10を指定
FROM python:3.10 
# 作業ディレクトリの指定 WORKDIR命令は該当のディレクトリが存在しな場合、ディレクトリを作成する。
# このディレクトリへのapp.pyファイルのコピーはバインドマウントで行うので、ここでは割愛
WORKDIR /usr/src/app


ENV FLASK_APP=app


COPY /app/requirements.txt ./

# イメージのビルド時にコマンドを実行
# イメージのビルド時にflaskをインストールするコマンドを実行 flaskは2.1.0をインストールする。
# RUN pip install flask==2.1.1

# イメージのビルド時にpipのアップグレードを実行
RUN pip install --upgrade pip

RUN pip install -r requirements.txt

