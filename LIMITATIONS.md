# What is not proved here

Lean proves exactly the statements written, under exactly the hypotheses written.

* Theorem 6.1 is proved in its algebraic core (the factorisation and the vanishing `k = 1`
  term). The zeta regularisation and the Mercator series are not formalized.
* Theorem 6.2's closed form is proved per chiral pair of eigenvalues. The sum over the spectrum
  is not formalized.
* Theorem 8.1 (isospectrality and convergence to a normal operator) and Corollary 8.3 are not
  formalized. Theorem 8.2 is proved as the exact rate identity, not as a statement about
  solutions of the flow.
* The stratified-manifold construction, the gauge sector (Sec. 4.1), the census results of
  Sec. 10, Theorem 13.1 and every gate in Appendix E are analytic or numerical, not Lean proofs.
