
  openssl req -x509 -nodes -days 365 \
  -newkey rsa:2048 \
  -keyout nginx/certs/srv1.internal.key \
  -out nginx/certs/srv1.internal.crt \
  -subj "/CN=*.srv1.internal" \
  -addext "subjectAltName=DNS:*.srv1.internal,DNS:srv1.internal"