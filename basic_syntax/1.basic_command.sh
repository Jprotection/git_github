# git add . 은 모든 변경(추가)사항을 staging area로 이동
git add .

# git commit은 staging area의 변경사항을 확정짓고 commitID 생성
git commit -m "메시지"

# 원격 repo main브랜치에 변경사항(commitID)을 업로드
git push origin main

# 현재 working directory, staging area 상태 조회
git status

# 특정 파일만 add할 경우
git add 특정파일(위치포함)

# local repository에 커밋 이력 생성
git commit -m "메시지타이틀" -m "메시지내용"

# vi에디터 모드에서 작성 : 첫줄에는 제목, 두번째 줄부터 내용
git commit

# add와 commit을 동시에
git commit -am "add와 commit을 동시에"

# local repo의 커밋 이력 조회
git log

# git 로그를 간결하게 조회
git log --oneline

# git 로그를 그래프 형태로 조회
git log --graph

# main 브랜치 뿐만 아니라 전체 commit 이력 조회
git log --all

# 충돌 무시하고 강제로 push할 때
# 개인 프로젝트에서는 유용할 수 있으나 팀 프로젝트에서는 절대 사용하면 안됨!!
git push origin main --force