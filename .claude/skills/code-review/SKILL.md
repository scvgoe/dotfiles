---
name: code-review
description: "코드 리뷰"
---

# Code Review

## Instructions
- 사용자가 요청한 코드 혹은 변경점에 대해서 다음 관점에서 병렬로 리뷰를 진행해야 함
    - 사용자가 별도로 변경점을 지정하지 않은 경우 git diff HEAD 를 기준으로 리뷰해

1. **Functionality**: 구현 적합성 (의도대로 구현되어 있는지 등)
    - 변경점에서 확인할 수 있는 의도대로 구현되어야하며, 다른 잠재적인 문제점은 없어야 함
    - graphql endpoint, 외부로 전송되는 data, database 등과의 관계에서 breaking changes가 있는지 확인하고 있다면 반드시 그 내용에 대해 안내해줘야 함
2. **Security**: 보안 취약점 (인젝션, 인증 우회 등)
3. **Performance**: 성능 이슈 (N+1, 메모리 누수 등)
4. **Maintainability**: 유지보수성 (복잡도, 결합도 등)
    - package.json을 확인해서 type error와 lint 확인하는 script를 실행해서 문제가 없는지 체크
    - strict한 type system을 사용해야 하며, type check나 lint를 우회하기 위한 comment가 없어야 함
    - graphql, cron 등 infra level => usecase => service => client 순의 layering rule이 지켜지는지 확인해야 함
    - 미사용 코드가 없어야 함

## 실행 방법
Task를 사용해서 각 관점별로 병렬 리뷰 수행.
각 Task 결과를 종합하여 우선순위별 리포트 생성.

## 출력 형식
### 🔴 Critical
### 🟠 Major
### 🟡 Minor
### 💡 Suggestions
