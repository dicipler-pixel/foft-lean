<div align="center">

# Foundational Operator Field Theory on Stratified Manifolds — Lean proofs

[![Lean proof check](https://github.com/dicipler-pixel/foft-lean/actions/workflows/build.yml/badge.svg)](https://github.com/dicipler-pixel/foft-lean/actions/workflows/build.yml)
![Lean](https://img.shields.io/badge/Lean-v4.34.1-blue)
![Theorems](https://img.shields.io/badge/theorems-11-2EA043)
![sorry](https://img.shields.io/badge/sorry-0-2EA043)
![Code: MIT](https://img.shields.io/badge/code-MIT-lightgrey)
![Text: CC BY 4.0](https://img.shields.io/badge/text-CC%20BY%204.0-lightgrey)
[![Paper DOI](https://img.shields.io/badge/paper-10.5281%2Fzenodo.21254648-blue)](https://doi.org/10.5281/zenodo.21254648)

Jeromie Beasley

</div>

---

## The idea in one line

The vacuum is the isotropic operator `K₀ = −Λ I`: it commutes with everything, so every
departure from normality lives in the perturbation, the regularised ledger sees `Λ` only as an
offset, chirality kills every odd moment, and the relaxation flow burns its stress budget at an
exact rate.

## What is proved

| Paper | Result | Theorem |
| :--- | :--- | :--- |
| Theorem 4.1 | `K₀ = −Λ I` commutes with every operator; `[K₀ + ΔK, (K₀ + ΔK)†] = [ΔK, ΔK†]` | `baseline_commutes`, `baseline_selfComm` |
| Theorem 6.1 | `K + η I = (η − Λ)(I + X)` with `X = ΔK/(η − Λ)`, and `Tr X = 0` for traceless `ΔK` | `heff_factor`, `trace_X_zero` |
| Theorem 6.2 | If `σ² = 1` and `σY = −Yσ`, then `Tr Y^k = 0` and `Tr (iY)^k = 0` for odd `k`; each chiral pair gives `log(1 + iλ) + log(1 − iλ) = log(1 + λ²)` | `odd_moment_zero`, `odd_moment_zero_X`, `chiral_pair` |
| Theorem 8.2 | `Tr(K†[C, K]) = Tr C²`, the identity behind `d‖K‖²_F/dt = −4 Tr C²` (the paper's Henrici dissipation rate `−8Φ`) along `K̇ = −2[C, K]`; the time derivative is not formalized | `henrici_rate` |
| Prop. 8.4 | `Tr(K†[C, K†]) = 0`, the identity behind conservation of `‖K‖²_F` along the dual flow `K̇ = −2[C, K†]`; the time derivative is not formalized | `dual_flow_conserves` |
| Sec. 8 | `[cK, (cK)†] = c²[K, K†]` and the flow field satisfies `F(cK) = c³ F(K)` | `selfComm_smul`, `flow_smul` |

The file is [`FOFT/Basic.lean`](FOFT/Basic.lean). What is not proved is in
[`LIMITATIONS.md`](LIMITATIONS.md).

## How it is checked

Every push runs [the proof check](.github/workflows/build.yml): build against Lean v4.34.1 and
Mathlib v4.34.1, independent replay in Lean's kernel checker, an axiom audit (only `propext`,
`Classical.choice`, `Quot.sound`), and three deliberately false statements that must fail.

## The paper

*Foundational Operator Field Theory on Stratified Manifolds*, Jeromie Beasley. DOI
[10.5281/zenodo.21254648](https://doi.org/10.5281/zenodo.21254648) (always opens the newest version).

## Licence

Copyright (c) 2026 Jeromie Beasley. Code and proofs: [MIT](LICENSE). Written text:
[CC BY 4.0](LICENSE-CC-BY-4.0.md). See [`LICENSING.md`](LICENSING.md). Citation metadata is in
[`CITATION.cff`](CITATION.cff); how AI tools were used is stated in [`AI_USE.md`](AI_USE.md).
