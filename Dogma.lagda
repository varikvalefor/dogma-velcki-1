\begin{code}
Prenu : Set
Prenu = {!!}
\end{code}

\begin{code}
Co'eJaKrici : ∀ {a} → Prenu → Set a → Set a
Co'eJaKrici = {!!}
\end{code}

\begin{code}
record Dogma {a} (A : Set a) (p : Prenu) : Set a where
  field
    cjk : Co'eJaKrici p A
\end{code}
