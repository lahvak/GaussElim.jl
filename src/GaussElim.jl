module GaussElim

using LinearAlgebra

function exchangeRows!(A :: Matrix{T}, row1 :: Integer, row2 :: Integer) where {T<:Number}
    A[[row1, row2],:] = A[[row2, row1],:]
    return A
end

function multiplyRow!(A :: Matrix{T}, row :: Integer, by :: Union{T,Integer}) where {T<:Number}
    A[row,:] *= by
    return A
end

function addRowMultiple!(A :: Matrix{T}, factor :: Union{T,Integer}, row :: Integer, row_to :: Integer) where {T<:Number}
    A[row_to,:] += factor*A[row,:]
    return A
end

function Es(n, i, j)
    M = Matrix{Int}(I, n, n)
    exchangeRows!(M, i, j)
end

function Em(n, i, f)
    M = Matrix{typeof(f)}(I, n, n)
    multiplyRow!(M, i, f)
end

function Ea(n, f, i, j)
    M= Matrix{typeof(f)}(I, n, n)
    addRowMultiple!(M, f, i, j)
end

export exchangeRows!, addRowMultiple!, multiplyRow!, Es, Em, Ea

end # module
