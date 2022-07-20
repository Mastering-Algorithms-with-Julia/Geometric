# Point = NamedTuple{(:x, :y), Tuple{<:Number, <:Number}}
# Point = NamedTuple{(:x, :y), T} where T <: Tuple{Number, Number}
struct Point
  x::T1 where T1 <: Number
  y::T2 where T2 <: Number
end