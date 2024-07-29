#!/usr/bin/env bash
echo "> kdh_ec2s3cd 배포"
sudo su - ubuntu # 빌드시 ubuntu 부여 -> 추후 빌드용 linux user 만들어서 보안 보완해야 할 듯
echo "> ubuntu 사용자로 진행"
cd /home/ubuntu/prjfolder/auto_repo/ # 빌드 폴더 있는 곳으로 이동
chmod +x ./deploy.sh # 해당 파일 사용할 수 있는 권한 부여
npm -v # npm 설치되어 있는지 확인
npm install next@latest # 우리는 next를 사용하므로 next설치
pm2 delete kdh_ec2s3cd # 기존 실행 프로그램 삭제
pm2 start "npx next start" --name kdh_ec2s3cd # 새로운 프로그램 실행