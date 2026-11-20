\section{le vrici / The Miscellaneous}

\begin{code}
open import Function
  using (
    _$_
  )
open import Relation.Nullary
  using (
    ¬_
  )
\end{code}

\section{le prenu se ctaipe / The Prenu Type}
\paragraph{la .lojban.}
ni'o la'oi .\F{Prenu}.\ se ctaipe lo co'e ja sinxa be lo prenu\\
.i la .varik.\ na jinvi le du'u lo prenu cu ctaipe lo su'o co'e\sds  .i la'e di'u lijda co'e\\

\paragraph{English}
\F{Prenu} is the type of representations/whatever of prenu.\\
VARIK does not opine that prenu are terms of some type.  Not opining is a religious thing.

\begin{code}
Prenu : Set
Prenu = {!!}
\end{code}

\section{le se ctaipe Coke su'u co'e ja krici / The Type regarding Believing/Whatever}

\begin{code}
Co'eJaKrici : ∀ {a} → Prenu → Set a → Set a
Co'eJaKrici = {!!}
\end{code}

\section{le se ctaipe co su'u vilco / The Type regarding Being Willing}

\begin{code}
Vilco : ∀ {a} → Prenu → (Prenu → Set a) → Set a
Vilco = {!!}
\end{code}

\section{le se ctaipe co su'u cumki / The Type regarding Being Possible}

\begin{code}
Cumki : ∀ {a} → Set a → Set a
Cumki = {!!}
\end{code}

\section{le se ctaipe co su'u me'oi .dogma.\ / The Type regarding Being Dogmatic}

\begin{code}
record Dogma {a} (A : Set a) (p : Prenu) : Set a where
  field
    cjk : Co'eJaKrici p A
    na-vilco : ¬_ $ Vilco p $ λ p' → Co'eJaKrici p' $ Cumki (¬_ A)
\end{code}
