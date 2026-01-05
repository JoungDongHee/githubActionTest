#!/bin/bash
cd /home/ec2-user/my-app

# 1. AWS 내에서 빌드 수행
echo "Building Project..."
chmod +x gradlew
./gradlew build -x test # 테스트 제외는 선택 사항

# 2. 기존 프로세스 종료 (재배포 시)
# (포트 8080을 사용하는 프로세스가 있다면 종료하는 로직 등 추가 필요)
fuser -k 8080/tcp || true

# 3. 애플리케이션 실행
echo "Starting Application..."
nohup java -jar build/libs/*.jar > output.log 2>&1 &