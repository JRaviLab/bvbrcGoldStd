# cleaned_drugs

AMR drug and drug class name normalization.
Currently, this belongs to a separate [`amRdata`](https://github.com/jravilabamRdata) effort
kept here for now as reference pending that package's own public release.

| File | Rows | Contents |
|---|---|---|
| `drug_class_clean.csv` | 107 | `misspelled_drug` → `predicted_drug` (canonical spelling) → `drug_classes` (35 distinct classes: beta-lactam, aminoglycosides, carbapenems, fluoroquinolones, ...). |
| `drug_class_map.tsv` | 97 | Canonical `drug.antibiotic_name` + `drug.pubchem_cid` mapped to three parallel classification schemes: `WHO_class` (25 distinct), `Abx_class`/`Abx_subclass` (28/19 distinct), and `drug_class` (40 distinct) -- for cross-checking which classification a given drug falls under across schemes. |
