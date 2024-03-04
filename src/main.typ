#import "setup.typ": *
#import "math.typ": *

#show: my-config
#show: slides-config
#show: math-config

#align(center, text(size: 40pt, weight: "bold")[
  Discrete Differential Forms\ for Computational Modeling
])

#text(size: 20pt, grid(
  columns: (1fr, 1fr, 1fr),
  align(center)[
    Mathieu Desbrun\
    Applied Geometry Lab\
    Caltech\
    #link("mailto:mathieu@caltech.edu")
  ],
  align(center)[
    Eva Kanso\
    Applied Geometry Lab\
    Caltech\
    #link("mailto:eva@caltech.edu")
  ],
  align(center)[
    Yiying Tong\
    Applied Geometry Lab\
    Caltech\
    #link("mailto:yiying@caltech.edu")
  ]
))

#pagebreak()

General idea of Differential Forms and Discrete Differential Forms

#pagebreak()

 
#grid(
  columns: (1fr, 1fr),
  [
    = Idea of a Bivector

    Take two vectors $avec(u), avec(v) in RR^2$
    and form their *wedge* / *exterior* product
    #text(50pt)[$ avec(u) and avec(v) $]
    
    The result is called a *bivector* or *2-vector*.

    It represents an oriented plane segment.

  ],
  image("../res/bivector.svg"),
)



#pagebreak()

Exterior product
Wedge product


Given a basis of $RR^3$
$
  nvec(e)_1
  , quad
  nvec(e)_2
  , quad
  nvec(e)_3
$
This is the basis of the vectors.
Using it we can build a basis for bivectors,
by considering all the linear independent
exterior product combinations of these basis vectors.

$
  nvec(e)_12
  = nvec(e)_1 and nvec(e)_2
  quad
  nvec(e)_13
  = nvec(e)_1 and nvec(e)_3
  quad
  nvec(e)_23
  = nvec(e)_2 and nvec(e)_3
$

The cross product induces this ordering of the bivector basis.
$
  nvec(e)_23
  quad
  nvec(e)_31
  quad
  nvec(e)_12
$

$
  nvec(e)_1 and nvec(e)_2
  , quad
  nvec(e)_2 and nvec(e)_3
  , quad
  nvec(e)_3 and nvec(e)_1
$

#pagebreak()

#[
$
  dif f =
  [(diff f)/(diff x_1)
  quad dots.c quad
  (diff f)/(diff x_n)]
  =
  (diff f)/(diff x_1) dif x^1
  +
  dots
  +
  (diff f)/(diff x_n) dif x^n
$
]

differential form $omega$

#pagebreak()

#text(size: 50pt)[
  Exterior Derivative
  $
  dif^k: and^k (Omega) -> and^(k+1) (Omega)
  $
]

#pagebreak()

#text(size: 50pt)[
#align(center)[Stokes' Theorem]

$
  integral_M dif omega = integral_(diff M) omega
$

]
