# Point = NamedTuple{(:x, :y), Tuple{<:Number, <:Number}}
# Point = NamedTuple{(:x, :y), T} where T <: Tuple{Number, Number}
Point = NamedTuple{(:x, :y), Tuple{T1, T2}} where {T1 <: Number, T2 <: Number}