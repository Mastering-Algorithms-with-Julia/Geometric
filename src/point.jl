# Point = NamedTuple{(:x, :y), Tuple{<:Number, <:Number}}
# Point = NamedTuple{(:x, :y), T} where T <: Tuple{Number, Number}
mutable struct Point
  x::T1 where T1 <: Number
  y::T2 where T2 <: Number
  z::T3 where T3 <: Number
end

Point(x::T1, y::T2) where {T1 <: Number, T2 <: Number} = Point(x, y, 0)

mutable struct SphericalPoint
  rho::T1 where T1 <: Number
  theta::T2 where T2 <: Number
  phi::T3 where T3 <: Number
end