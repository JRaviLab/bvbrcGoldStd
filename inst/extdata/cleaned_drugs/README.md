# cleaned_drugs

AMR drug and drug class name normalization.
Currently, this belongs to a separate [`amRdata`](https://github.com/jravilabamRdata) effort
kept here for now as reference pending that package's own public release.

| File | Rows | Contents |
|---|---|---|
| `drug_class_clean.csv` | 107 | `misspelled_drug` → `predicted_drug` (canonical spelling) → `drug_classes` (35 distinct classes: beta-lactam, aminoglycosides, carbapenems, fluoroquinolones, ...). |
