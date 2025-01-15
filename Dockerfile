# ベースイメージとしてNginxを使用
FROM nginx:alpine

# デフォルトのNginx設定を削除
RUN rm /etc/nginx/conf.d/default.conf

# カスタムNginx設定を追加
COPY nginx.conf /etc/nginx/conf.d/

# ファイルを表示するディレクトリを作成
RUN mkdir -p /usr/share/nginx/html

# 80番ポートを公開
EXPOSE 80

# Nginxを起動
CMD ["nginx", "-g", "daemon off;"]