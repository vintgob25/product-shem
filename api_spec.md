# API (draft) на основе product_brief.md

Ниже — минимальный API-скелет, использующий только термины и метрики из product_brief.md.

## Users
### GET /users/{id}/metrics
Возвращает метрики пользователя по группам:
- **Activation:** day1_first_output_submitted; day3_streak_3; first_WIA_shipped_day7
- **Retention:** D7_retention; D14_retention; D30_retention; WAU
- **Engagement:** streak_length; chips_completed_per_week; peer_reviews_done
- **Value:** WIA_count; outreach_sent; replies_received; self_reported_income_delta
- **Monetization:** trial_to_paid; ARPPU; LTV; yearly_share; churn

### GET /users/{id}/streak
- **streak_length**

### GET /users/{id}/chips
- **chips_completed_per_week**

### GET /users/{id}/peer-reviews
- **peer_reviews_done**

## Programs
### GET /programs
- Programs Library

### GET /program-bundles
- Income Stack (3 programs)
- price anchor months of plus = 3.5

## WIA
### GET /wia
- weekly shippable artifacts (WIA)

### GET /wia/metrics
- **WIA_count**
- **first_WIA_shipped_day7**
