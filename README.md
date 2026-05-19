# claude-skills

Claude(Cowork / Claude Code / Agent SDK)에서 사용할 수 있는 **한국형 Skill 모음**입니다.
한컴 한글(hwpx) 양식 자동 채우기와 McKinsey·BCG 스타일 PowerPoint 생성에 특화된 두 가지 스킬을 제공합니다.

## 포함 스킬

| Skill | 한 줄 설명 | 패키지 |
|---|---|---|
| [`hwpx-autofill-conversion`](skills/hwpx-autofill-conversion/) | 한컴 한글 `.hwpx` 양식을 첨부하면 해당 양식 구조(XML)에 맞춰 원하는 주제로 본문을 자동 작성 후 `.hwpx`로 재패키징 | [`dist/hwpx-autofill-conversion.skill`](dist/hwpx-autofill-conversion.skill) |
| [`ppt-maker`](skills/ppt-maker/) | Brandlogy 디자인 시스템(Pretendard 전용, 5존 고정 레이아웃, Pyramid Principle)에 따라 컨설팅급 PowerPoint(.pptx) 자동 생성 | [`dist/ppt-maker.skill`](dist/ppt-maker.skill) |

## 설치 방법

### 1. `.skill` 파일로 설치 (권장)

[Releases](../../releases) 또는 [`dist/`](dist/) 폴더에서 원하는 `.skill` 파일을 받아 Claude 환경의 skills 디렉터리에 풉니다.

```bash
# 예시: 사용자 스킬 디렉터리에 풀기
unzip hwpx-autofill-conversion.skill -d ~/.claude/skills/hwpx-autofill-conversion
unzip ppt-maker.skill -d ~/.claude/skills/ppt-maker
```

> `.skill` 파일은 단순한 ZIP 아카이브입니다. 확장자만 다를 뿐 내부에는 `SKILL.md`와 부속 파일이 들어있습니다.

### 2. 폴더 그대로 복사

`skills/` 아래의 폴더를 그대로 Claude skills 경로에 복사해도 동작합니다.

```bash
cp -r skills/hwpx-autofill-conversion ~/.claude/skills/
cp -r skills/ppt-maker ~/.claude/skills/
```

### 3. Claude Code Plugin Marketplace 형태

이 레포 자체를 플러그인/스킬 마켓플레이스로 등록해 팀원과 공유할 수도 있습니다. 자세한 내용은 [Anthropic Skills 문서](https://docs.claude.com)를 참고하세요.

## 스킬 트리거 예시

### hwpx-autofill-conversion

- "이 hwpx 양식 그대로 살리고 주제만 '○○○ 사업 계획'으로 채워줘"
- "첨부한 보고서 양식에 맞춰서 내용 작성해줘 (hwpx 결과로)"

### ppt-maker

- "이 자료로 컨설팅 스타일 PPT 만들어줘"
- "McKinsey 스타일 16:9 발표 자료로 정리해줘"
- "Brandlogy 디자인 시스템으로 8장짜리 전략 보고서 슬라이드"

## 라이선스

별도 명시가 없는 한 MIT License로 배포합니다. 자유롭게 사용·수정·재배포 가능합니다.

## 기여

PR/Issue 환영합니다. 새 스킬 추가 시 다음 규칙을 지켜주세요.

1. 스킬은 `skills/<skill-name>/SKILL.md` 형식으로 작성
2. SKILL.md 상단에 frontmatter(`name`, `description`) 필수
3. 빌드 후 `dist/<skill-name>.skill` ZIP 산출물 동봉
4. 한국어 사용자 대상 README는 한국어로 작성
