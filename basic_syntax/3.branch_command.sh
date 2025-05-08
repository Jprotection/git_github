# 브랜치 생성
# 현재 checkout하고 있는 브랜치의 현재 커밋을 기준으로 새 브랜치 생성
git branch 브랜치명

# 해당 브랜치로 전환
git checkout 브랜치명

# 브랜치 생성과 동시에 전환
git checkout -b 브랜치명

# 브랜치 목록 조회 및 현재 checkout된 나의 브랜치 조회
git branch

# 브랜치 삭제 -> 로컬 브랜치만 삭제 -> 원격 브랜치는 별도로 삭제해야 함
git branch -D 브랜치명

# 모든 브랜치 이력사항까지 clone
# 그냥 clone하면 default 브랜치만 clone
git clone --mirror 원격레포주소

# 새로운 repo에 기존 repo의 모든 브랜치 포함하여 push
git remote set-url 새원격레포주소
git push --mirror