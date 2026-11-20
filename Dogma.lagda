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
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'e zoi zoi.\ \F{Co'eJaKrici} \B p \B A\ .zoi.\ gi lo prenu je ke se sinxa be la'e zo'oi .\B p.\ cu krici le du'u lo su'o co'e cu ctaipe la'e zo'oi .\B A.

\paragraph{English}
A term of \F{Co'eJaKrici} \B p \B A exists iff \B p believes that some thing is a term of \B A.

\begin{code}
Co'eJaKrici : ∀ {a} → Prenu → Set a → Set a
Co'eJaKrici = {!!}
\end{code}

\section{le se ctaipe co su'u vilco / The Type regarding Being Willing}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'e zoi zoi.\ \F{Vilco} \B p \B k\ .zoi.\ gi lo prenu je ke se sinxa be la'e zo'oi .\B p.\ cu vilco lo ka me la'e zo'oi .\B k.\ ce'u

\paragraph{English}
A term of \F{Vilco} \B p \B A exists iff \B p is willing for exhibiting the property of \B k.  A term of \F{Vilco} \B p \B A exists iff \B p is willing for that (some term of \B A \B p exists).

\begin{code}
Vilco : ∀ {a} → Prenu → (Prenu → Set a) → Set a
Vilco = {!!}
\end{code}

\section{le se ctaipe co su'u cumki / The Type regarding Being Possible}
\paragraph{la .lojban.}
ni'o ga jo ctaipe la'e zoi zoi.\ \F{Cumki} \B A .zoi.\ gi cumki fa lo nu ctaipe la'e zo'oi .\B A.

\paragraph{English}
A term of \F{Cumki} \B A exists iff a thing which is possible is that some thing is a term of \B A.

\begin{code}
Cumki : ∀ {a} → Set a → Set a
Cumki = {!!}
\end{code}

\section{le se ctaipe co su'u me'oi .dogma.\ / The Type regarding Being Dogmatic}
\paragraph{la .lojban.}
ni'o le velcki jai ctaipe le su'u ro da poi ke'a prenu zo'u ro de poi ke'a se ctaipe zo'u ga jo de me'oi .dogma.\ da gi krici lo du'u lo su'o co'e cu ctaipe de kei je cu to'e vilco lo ka ce'u co'e ja jinvi lo du'u cumki fa lo su'u lo no co'e cu ctaipe de\sds  .i ku'i la .varik.\ na prane le ka ce'u birti le du'u le velcki cu mapti le smuni be fi vo'a

\paragraph{English}
The combination of the definition \emph{and whatnot} logically necessitates that for all prenu $p$, for all types $C$, $C$ is a dogma of $p$ iff $p$ believes/opines/whatever that (some thing is a term of $C$) and is unwilling for believing/opining/whatever that a thing which is possible is that $C$ is equivalent to the empty type.  But VARIK is not perfectly certain about that (the definition is appropriate for the idea which is ``held'' by VARIK).

\begin{code}
record Dogma {a} (A : Set a) (p : Prenu) : Set a where
  field
    cjk : Co'eJaKrici p A
    na-vilco : ¬_ $ Vilco p $ λ p' → Co'eJaKrici p' $ Cumki (¬ A)
\end{code}
