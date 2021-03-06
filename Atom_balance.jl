include("data_dictionary.jl")

#Define Atom Matrix. Rows = Carbon, Hydrogen, Nitrogen, Oxygen, Phosphorus, Sulfur. Columns are metabolites
Atom_Matrix = Array{Float64}([

    10  6   4   10  0   10  4   6   0   5   1   0   21  0   0   21  1   0   ;
    16  13  7   14  4   18  4   14  2   12  4   0   30  1   0   29  4   3   ;
    5   3   1   5   0   4   0   4   0   2   2   0   7   0   1   7   1   0   ;
    13  3   4   7   7   6   4   2   1   2   1   2   17  0   1   17  5   4   ;
    3   0   0   1   2   0   0   0   0   0   0   0   3   0   0   3   1   1   ;
    0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   0   ;
]);

Atom_balance_check = Atom_Matrix * stoichiometric_matrix

# We see that all the v reactions are balanced because the elements corresponding to v reactions are 0
