# STEP1 Ubuntu
FROM  ubuntu:latest

# STEP2  Nginxのインストール
RUN apt-get update && apt-get install -y -q nginx

# STEP3 ファイルのコピー
COPY index.html /Users/morikun/Documents/docker/sample/index.html

# STEP4 ポート指定
EXPOSE 80

# STEP5 Nginxの起動
CMD ["nginx", "-g", "daemon off;"]
