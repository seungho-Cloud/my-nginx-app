# Nginx를 기반 이미지로 사용합니다.
FROM nginx:latest

# Nginx 기본 설정 파일을 대체합니다.
COPY nginx.conf /etc/nginx/nginx.conf

# 웹 콘텐츠를 Nginx 컨테이너의 기본 서비스 디렉토리로 복사합니다.
COPY src /usr/share/nginx/html

# 80 포트로 서비스합니다.
EXPOSE 80