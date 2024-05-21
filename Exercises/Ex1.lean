import data.fintype.basic
import data.set.finite

open set

variables {α : Type*} [decidable_eq α] [fintype α] (A B : set α)

theorem card_union_add_card_inter (A B : set α) [fintype A] [fintype B] [fintype (A ∪ B)] [fintype (A ∩ B)] :
  fintype.card (A ∪ B) + fintype.card (A ∩ B) = fintype.card A + fintype.card B :=
begin
  rw fintype.card_union_add_card_inter,
  sorry 
end
