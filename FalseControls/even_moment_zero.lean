import FOFT.Basic
-- Chirality kills odd moments only: for Y = diag(1, −1), Tr Y² = 2, not 0.
example : Matrix.trace ((Matrix.diagonal ![(1 : ℚ), -1]) ^ 2) = 0 := by
  simp [Matrix.trace, Fin.sum_univ_two, Matrix.diagonal_pow]
