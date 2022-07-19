module Geometric
using Graph
using Heap

include("point.jl")
include("intersection.jl")
include("dijkstra.jl")
export Point, intersection, dijkstra
end # module
