import FOFT.Basic
-- A scalar baseline adds no self-commutator: [c·1, (c·1)†] = 0, so it is not the identity.
example : FOFT.selfComm ((2 : ℂ) • (1 : Matrix (Fin 1) (Fin 1) ℂ)) = 1 := by
  simp [FOFT.selfComm]
