module Arblib

using LoadFlint
const libflint = LoadFlint.libflint

include(joinpath(@__DIR__, "..", "deps", "deps.jl"))

function __init__()
    check_deps()
end

export Arf, Arb, Acb, ArbMatrix, AcbMatrix

macro libarb(function_name)
    return (:($function_name), libarb)
end

include("arb_types.jl")
include("types.jl")
include("rounding.jl")
include("arbcall.jl")

include("precision.jl")

include("constructors.jl")

include("arb_matrix.jl")
include("acb_matrix.jl")

include("predicates.jl")
include("show.jl")

include("arbcalls/mag.jl")
include("arbcalls/arf.jl")
include("arbcalls/arb.jl")
include("arbcalls/acb.jl")
include("arbcalls/arb_mat.jl")
include("arbcalls/acb_mat.jl")

end # module
