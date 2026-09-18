# cleaned_hosts

*Staphylococcus aureus* (`sau_*`) host-cleaning pipeline, raw → clean → BV-BRC
cross-check, plus a general (non-Staph-specific) dictionary seed. Legacy/reference
layer, not yet a final gold-standard table.

| File | Rows | Contents |
|---|---|---|
| `sau_ncbi_metadata_raw.tsv` | 23,238 | Raw NCBI Datasets pull for *S. aureus* assemblies. Untouched NCBI column names only (Assembly Accession, BioSample Host/Isolation source/Source type/Description Comment, assembly & annotation stats, CheckM, BioSample Age) — nothing cleaned yet. Starting universe. |
| `sau_ncbi_hosts_clean.tsv` | 10,917 | Subset of the above with usable host info. Same NCBI columns **plus** `host_text` (raw host + description text concatenated) and `cleaned_host` (32 normalized categories: human, cow, pig, food, environment, camel, macaque, ...). |
| `sau_ncbi_bvbrc_hosts_clean.csv` | 4,442 (3,669 unique accessions) | Further subset: only the NCBI genomes that also have a matching BV-BRC record. Same columns as above **plus** BV-BRC's own `genome.*` fields (`genome.host_name`, `genome.host_group`, `genome.isolation_source`, `genome.isolation_country`, etc.), so the NCBI-derived `cleaned_host`/`isolation_source` can be checked side by side against what BV-BRC already has. Known: `isolation_source` vs. `genome.isolation_source` disagree on ~632 rows (144 distinct value pairs); some accessions repeat (multiple BV-BRC genome IDs per assembly). |
| `sau_host_regex_patterns.tsv` | 72 rules → 18 categories | The crosswalk used to derive `cleaned_host` above: raw token/phrase → `host_clean` category, with `match_type` (`substring` vs. `whole_word`) saying how to apply it. Category priority order matters (food, environment, cat, human, cow, ... rodent) — first match wins. |
| `hosts.csv` | 3,498 | **Not Staph-specific** — a general, multi-species raw host-string dictionary seed (spans plant, marine, and many animal hosts). Use as extra vocabulary alongside `sau_host_regex_patterns.tsv`, not as batch data. |
