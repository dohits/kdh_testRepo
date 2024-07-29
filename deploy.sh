#!/usr/bin/env bash
# nvm 환경 설정
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # nvm 로드
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # nvm bash_completion 로드

echo "현재 계정: $(whoami)"
echo "> kdh_ec2s3cd 배포"
sudo su # 부여 -> 추후 빌드용 linux user 만들어서 보안 보완해야 할 듯
cd /home/ubuntu/prjfolder/auto_repo/ # 빌드 폴더 있는 곳으로 이동
chmod +x ./deploy.sh # 해당 파일 사용할 수 있는 권한 부여
npm -v # npm 설치되어 있는지 확인
npm install next@latest # 우리는 next를 사용하므로 next설치
pm2 delete kdh_ec2s3cd # 기존 실행 프로그램 삭제
pm2 start "npx next start" --name kdh_ec2s3cd # 새로운 프로그램 실행