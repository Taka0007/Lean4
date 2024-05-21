import measure_theory.probability_mass_function
import measure_theory.measure_space

open measure_theory
open_locale classical

variables {Ω : Type*} [measurable_space Ω] (P : measure_theory.measure Ω)

def cond_prob (A B : set Ω) (hB : P B > 0) : ℝ :=
P (A ∩ B) / P B

theorem cond_prob_def (A B : set Ω) (hB : P B > 0) :
  cond_prob P A B hB = P (A ∩ B) / P B :=
begin
  unfold cond_prob,
end
