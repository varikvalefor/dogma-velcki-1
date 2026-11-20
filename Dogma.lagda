\begin{code}
open import Relation.Nullary
  using (
    ¬_
  )
\end{code}

\begin{code}
Prenu : Set
Prenu = {!!}
\end{code}

\begin{code}
Co'eJaKrici : ∀ {a} → Prenu → Set a → Set a
Co'eJaKrici = {!!}
\end{code}

\begin{code}
Vilco : ∀ {a} → Prenu → (Prenu → Set a) → Set a
Vilco = {!!}
\end{code}

\begin{code}
Cumki : ∀ {a} → Set a → Set a
Cumki = {!!}
\end{code}

\begin{code}
record Dogma {a} (A : Set a) (p : Prenu) : Set a where
  field
    cjk : Co'eJaKrici p A
    na-vilco : ¬ (Vilco p (λ p' → Co'eJaKrici p (Cumki (¬ A))))
\end{code}
