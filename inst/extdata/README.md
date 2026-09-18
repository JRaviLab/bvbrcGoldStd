# extdata

Curated and legacy reference tables backing the BV-BRC/NCBI gold-standard
metadata, organized by field type. See each folder's own README for file-level
detail.

| Folder | What's in it |
|---|---|
| [`bvbrc_ncbi_colnames/`](bvbrc_ncbi_colnames/README.md) | Reference schema — the full BV-BRC genome metadata field list, by category. |
| [`cleaned_hosts/`](cleaned_hosts/README.md) | *S. aureus* host cleaning: raw NCBI pull → cleaned host categories → cross-checked against BV-BRC, plus the crosswalk dictionary used to derive them. |
| [`cleaned_isolationsource/`](cleaned_isolationsource/README.md) | Isolation-source raw text mapped to reviewed categories (LLM + human). |
| [`cleaned_drugs/`](cleaned_drugs/README.md) | AMR drug-name and drug-class normalization. |
| [`cleaned_geography/`](cleaned_geography/README.md) | Country/location string cleanup for isolation geography fields. |
