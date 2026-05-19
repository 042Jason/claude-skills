# ppt-maker

**McKinsey·BCG 컨설팅 스타일 PowerPoint(.pptx)** 를 Brandlogy 디자인 시스템에 맞춰 자동 생성하는 Claude 스킬입니다.
Pretendard 전용 타이포그래피, 5존(zone) 고정 레이아웃, Pyramid Principle 스토리라인, Visualization-First 원칙을 엄격히 적용합니다.

## 무엇을 하나요

데이터, 브리프, 또는 토픽 아웃라인을 주면 컨설팅급 품질의 슬라이드 덱(.pptx)을 만들어 줍니다.
모든 슬라이드에 대해 자동으로 아래 규칙이 적용됩니다.

- **폰트**: Pretendard 전용 (DM Sans / Poppins / Arial / Roboto 금지)
- **레이아웃**: 16:9 (13.333" × 7.5"), 5존 좌표 고정
- **스토리라인**: Executive Summary → Problem → Solution → Impact (Pyramid Principle, MECE)
- **시각화 우선**: 데이터·비교·프로세스가 있으면 산문이 아닌 차트/다이어그램으로 표현
- **밀도**: 본문 박스 하단 30%를 비우지 않음
- **로고**: 사용자가 제공한 파일은 원본 그대로, 미제공 시 라벨 플레이스홀더

## 트리거 예시

- "이 자료로 컨설팅 스타일 발표 자료 만들어줘"
- "McKinsey/BCG 스타일 16:9 PPT"
- "Brandlogy 디자인으로 10장짜리 전략 보고서"
- "Pretendard PPT로 분기 실적 정리해줘"
- "Pyramid Principle로 정리한 임원 보고용 슬라이드"

## 5존 고정 레이아웃

모든 슬라이드는 동일한 Y 좌표에 다섯 개의 존(zone)을 배치합니다. 본문이 넘치면 슬라이드를 **나눌 뿐 좌표는 절대 이동하지 않습니다.**

| Zone | Y 범위 | 내용 | 스타일 |
|---|---|---|---|
| Header strip | 0.4" – 0.7" | 챕터명 (좌) · 로고 (우) | Pretendard 600 12pt #8e8e93 |
| Headline | 1.0" – 1.75" | 슬라이드 한 줄 메시지 | Pretendard 700 32–40pt #222222 |
| Subtitle | 1.63" – 2.03" | 한 줄 리드 | Pretendard 500 16pt #45515e |
| Body box | 2.39" – 6.85" | 차트·KPI·다이어그램 | 혼합 |
| Clearance | 6.85" – 7.05" | **항상 비움** | – |
| Footer strip | 7.05" – 7.3" | 페이지 번호 (좌) · 출처 (우) | Pretendard 500 10pt #8e8e93 |

## 컬러 팔레트

- **Brand Blue**: `#1456f0` / `#3b82f6` / `#60a5fa`
- **Hero Gradient**: `linear-gradient(135deg, #1456f0 0%, #3b82f6 50%, #60a5fa 100%)` — **덱 전체에서 최대 3회**
- **Brand Pink**: `#ea5ec1` — 장식 액센트 전용, 본문 텍스트·버튼 금지
- **Text**: `#222222` (본문/헤드라인) / `#45515e` (서브타이틀) / `#8e8e93` (캡션·페이지 번호)
- **Surface**: `#ffffff` (콘텐츠) / `#181e25` (섹션 디바이더·클로징)

## 본문 컴포지션 패턴

본문 박스(2.39"–6.85") 안에서 사용할 수 있는 6가지 표준 패턴이 있습니다.

- **Pattern A** — KPI Strip + 차트/2단 (가장 일반적)
- **Pattern B** — 2단 비교 (주장 vs 증거)
- **Pattern C** — 중앙 다이어그램 + 주변 캡션
- **Pattern D** — 가로 프로세스 플로우 (4–6 단계)
- **Pattern E** — 풀 쿼트 + 데이터 카드
- **Pattern F** — 3단 스택 (KPI / 차트 / 증거 카드) — 콘텐츠가 얇을 때 빈 공간 방지

## 절대 규칙 (Non-Negotiable)

1. **폰트**: Pretendard 외 모든 폰트 금지
2. **존 좌표**: 모든 슬라이드에서 동일, 본문 초과 시 슬라이드 분할
3. **로고**: 원본 파일 그대로, 박스/그림자/리컬러 금지
4. **시각화 우선**: 데이터/비교는 반드시 차트/다이어그램
5. **밀도**: 본문 박스 하단 30% 비우지 않기
6. **이모지 금지**: 모든 슬라이드에서 0개

## 파일 구성

```
ppt-maker/
├── SKILL.md                       # 스킬 진입점 (워크플로우 + 규칙)
└── references/
    ├── design-system.md           # 색상·타이포·5존 좌표 (Section 0-3)
    ├── patterns.md                # 본문 패턴 A-F, 컴포넌트 스타일 (Section 4-6)
    └── checklist.md               # 슬라이드별 QA 체크리스트 (Section 7-9)
```

### 사용 순서

1. **SKILL.md** 의 워크플로우 5단계(Setup → Context → Storyline → Layout → Code → QA)를 따른다.
2. 코드 작성 **전에 반드시 references/ 3개 파일을 모두 읽는다.** (존 위반·폰트 대체·밀도 실패 예방)
3. 슬라이드를 만들 때마다 `references/checklist.md` 의 14개 항목을 모두 통과시킨 뒤 export 한다.

## 의존성

- `pptxgenjs` (Node) — `pptx` 스킬과 함께 사용
- Pretendard 폰트 임베드 (export 시 .pptx에 포함)

## 라이선스

MIT
