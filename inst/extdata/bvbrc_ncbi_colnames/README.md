# bvbrc_ncbi_colnames

Reference schema, not batch data — the full BV-BRC genome metadata field list, used
to scope which fields this repo's gold-standard tables target (Host Info, Isolate
Info) vs. leave alone.

| File | Contents |
|---|---|
| `bvbrc_genome_metadata_columns.txt` | Flat list of all 150 BV-BRC genome metadata fields (from `p3-all-genomes -f`). |
| `bvbrc_genome_columns_by_category.txt` | Same 150 fields grouped into BV-BRC-Web's own UI categories (General Info, Taxonomy, Type Info, Sequence Info, DB Cross Reference, Genome/Annotation Stats, Genome Quality, Isolate Info, Host Info, Phenotype Info, AMR, Additional Info, Administrative). `[inferred]` marks fields JRaviLab added, not BV-BRC's own. |

This repo's v1 scope (host identity + isolation source) covers the **Host Info**
(12 fields) and **Isolate Info** (17 fields) categories.
