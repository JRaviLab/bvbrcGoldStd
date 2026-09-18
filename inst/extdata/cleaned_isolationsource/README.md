# cleaned_isolationsource

Isolation-source analog of `cleaned_hosts` — but LLM-proposed + human-reviewed
rather than rule-based. Legacy/reference layer, not yet a final gold-standard
table. Started with isolation sources for all ESKAPE pathogen isolates.

| File | Rows | Contents |
|---|---|---|
| `eskape_isolationsource_llm_human_clean.csv` | 400 | Raw `genome.isolation_source` text → lowercased → `group` (31 categories: respiratory, wound, blood, urine, bodily fluid, medical device, environment, tissue, gastrointestinal, ...). |
