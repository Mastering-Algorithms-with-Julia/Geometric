module Geometric

using LinkedList

include("point.jl")
include("intersection.jl")
include("cvxhull.jl")

export Point, intersection, cvxhull
end # module
