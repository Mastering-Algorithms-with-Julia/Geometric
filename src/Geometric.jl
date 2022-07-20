module Geometric

using LinkedList

include("point.jl")
include("intersection.jl")
include("cvxhull.jl")
include("arclen.jl")

export Point, SphericalPoint
export intersection, cvxhull, arclen
end # module
