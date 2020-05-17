# node 이미지, 버전은 alpine
FROM node:alpine

# 컨테이너 내부의 경로 지정
WORKDIR /usr/app

# package.json를 컨테이너(WORKDIR로 지정된 경로)로 복사
COPY ./package.json ./

# 컨테이너 내부에서 npm에 종속된 패키지들을 설치
RUN npm install

# 현재 폴더에 존재하는 모든 파일 및 폴더를 컨테이너(WORKDIR로 지정된 경로)로 복사
COPY ./ ./

# 컨테이너 실행시 시작
CMD ["npm", "start"]