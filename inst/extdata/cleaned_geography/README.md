# cleaned_geography

Country/location cleanup for BV-BRC's `isolation_country` / `geographic_location`
fields. 

| File | Rows | Contents |
|---|---|---|
| `bvbrc_countries_clean.tsv` | 287 | Raw country/location string → `clean_name` + `iso3_code`, with `category` (227 country, 16 sea, 9 subnational, 7 ocean, 7 multiple, 5 unmatched, 5 territory, plus historical/geological/vague/continent/region one-offs), edge-case flags (`is_subnational`, `is_geographic_feature`, `is_multiple_countries`, `is_historical`, `is_territory`), and `data_quality_tier`. The single `n = 191,049` "missing" row records how many source records had no country value at all. |

Same table is also available as a lazy-loaded R object: `data(bvbrc_countries_clean)`
(see `data/`, documented in `?bvbrc_countries_clean`).
