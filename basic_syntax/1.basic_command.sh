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

# 특정 commit ID로 전환 (소스코드를 과거의 특정 버전으로 되돌릴 때)
git checkout 커밋ID

# 다시 현재 브랜치의 commit으로 되돌아올 때
git checkout 현재브랜치명(main)

# git pull은 원격의 변경사항을 local로 내려받는 것 (working directory까지 반영)
# git pull = git fetch + git merge
git pull origin 브랜치명

# 원격의 변경사항을 local로 가져오되, 병합은 하지 않는 것
git fetch origin 브랜치명

# commit1을 기준으로 commit2와의 차이점 출력
# git diff main origin/main 와 같은 형식으로 origin과의 차이 조회 가능
git diff commit1 commit2

# git 작업 취소
# commit 이후의 취소
git reset head~1
git reset head^
# staging area로 까지만 취소
git reset --soft head~1

# 원격 repo에 push 이후 취소
# -> commit 메시지 작성 vi화면으로 이동 -> :wq 
# 원격에 push한 커밋 이력은 수정, 삭제가 안되므로
# 중요한 비밀번호나 키 값이 노출되었다면 새로운 값으로 변경하는 것이 가장 확실!!
git revert 최신커밋ID

# 작업 중인 사항을 임시저장 (충돌상황에서 많이 사용)
# 스택 구조
git stash

# 저장한 최신 작업목록 꺼내서 적용하기
# 스택에서 제거
git stash pop

# 임시저장한 목록은 그대로 유지하면서 특정 index항목 적용
git stash apply 인덱스번호

# 임시저장한 작업 내용 조회
git stash show -p 인덱스번호

# 임시저장한 작업목록 조회
git stash list

# 저장목록 모두 삭제
git stash clear

# 버전 명시
git tag v1.0
git tag -a v1.0 -m "1.주요사항A 2.주요사항B"

# tag release 배포
# commit push와 상관없이 태그는 별도로 push해야 함
git push origin v1.0

# 태그 목록 조회
git tag