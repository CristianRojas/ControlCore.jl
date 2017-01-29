module ControlCore

# Import conversion and promotion functions for overloading
import Base: convert, promote_rule

# Import identities for overloading
import Base: one, zero

# Import inv and zeros
import Base: inv, zeros

# Import slicing functions
import Base: ndims, size, getindex

# Import iteration interface functions
import Base: start, next, done, eltype, length, eachindex, endof

# Import printing functions
import Base: showcompact, show, showall, summary

# Import mathematical operations for overloading
import Base: +, .+, -, .-, *, .*, /, ./, ==, !=, isapprox, transpose

# Export only the useful functions
export
  # Interfaces
  numstates,
  numinputs,
  numoutputs,
  poles,
  zeros,
  tzeros,
  getmatrix,
  numvec,
  denvec,
  numpoly,
  denpoly,
  issiso,
  sisotype,
  ismimo,
  iscontinuous,
  continuoustype,
  isdiscrete,
  samplingtime,
  zpkdata,
  islfd,
  isrfd,
  num,
  den,
  # Constructors
  tf,
  zpk,
  ss,
  mimo,
  lfd,
  rfd,
  # Methods
  series,
  parallel,
  feedback,
  rosenbrock,
  minreal,
  freqresp,
  evalfr

using Polynomials
using PolynomialMatrices
using RecipesBase
using Compat
import Compat.view

# System types
include("types/system/ltisystem.jl")
include("types/system/rationaltf.jl")
include("types/system/zeropolegain.jl")
include("types/system/statespace.jl")
include("types/system/generalmimo.jl")
include("types/system/mfd.jl")
#include("display.jl")

# Conversions
include("conversions/mfd2ss.jl")
include("conversions/ss2mfd.jl")

# Response types
include("types/response/systemresponse.jl")
include("types/response/boderesponse.jl")
include("types/response/nyquistresponse.jl")

# Interconnections
#include("interconnections/series.jl")
#include("interconnections/parallel.jl")
#include("interconnections/feedback.jl")

# Methods
include("methods/rosenbrock.jl")
include("methods/minreal.jl")
include("methods/reduce.jl")
include("methods/freqresp.jl")
include("methods/bode.jl")
include("methods/nyquist.jl")

end # module
