#let avec(a) = math.upright(math.bold(a))
#let vvec(a) = math.accent(math.bold(a), math.arrow)
#let nvec(a) = math.accent(avec(a), math.hat)
#let amat(a) = math.upright(math.bold(a))

#let xv = $avec(x)$
#let ii = $dotless.i$

#let conj(u) = math.overline(u)
#let transp = math.tack.b
#let hert = math.upright(math.sans("H"))

#let clos(a) = math.overline(a)
#let restr(a) = $lr(#a|)$
#let openint(a,b) = $lr(\] #a, #b \[)$

#let grad = $avec("grad")$

#let inner(a, b) = $lr(angle.l #a, #b angle.r)$

#let math-config(doc) = {
  set math.mat(delim: "[")
  set math.vec(delim: "[")

  set math.cancel(stroke: red)

  // make equation cites only display the number
  show ref: it => {
    let eq = math.equation
    let el = it.element
    if el != none and el.func() == eq {
      numbering(
        el.numbering,
        ..counter(eq).at(el.location())
      )
    } else {
      it
    }
  }

  doc
}
