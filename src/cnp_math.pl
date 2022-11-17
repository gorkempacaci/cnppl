% CNP Meta-interpreter / Math library
% Copyright 2022 Görkem Paçacı
% This file is part of CNP Meta-interpreter.
% CNP Meta-interpreter is free software: you can redistribute it and/or modify it under the terms of the GNU Lesser General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
% CNP Meta-interpreter is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more details.
% You should have received a copy of the GNU Lesser General Public License along with CNP Meta-interpreter. If not, see <https://www.gnu.org/licenses/>.


:- module(cnp_math, []).
:- multifile cnp:lib/3.

cnp:lib(+,    [a,b,ab], [_{a:A, b:B, ab:C}] >> (C is A+B)). % using anonymous predicates
cnp:lib(-,    [a,b,ab], [_{a:A, b:B, ab:C}] >> (C is A-B)).
cnp:lib(*,    [a,b,ab], [_{a:A, b:B, ab:C}] >> (C is A*B)).
cnp:lib(//,   [a,b,ab], [_{a:A, b:B, ab:C}] >> (C is A/B)).
cnp:lib(eq,   [a,b],    [_{a:A, b:B}] >> (A =:= B)).
cnp:lib(lt,   [a,b],    [_{a:A, b:B}] >> (A<B)).
cnp:lib(lte,  [a,b],    [_{a:A, b:B}] >> (A =< B)).
cnp:lib(flip, [a,b],    cnp_math:flip). % optional syntax using predicate name
cnp:lib(neg,  [a],      [_{a:A}] >> (A<0)).
cnp:lib(pos,  [a],      [_{a:A}] >> (A>0)).
cnp:lib(zero, [a],      [_{a:A}] >> (A=0)).
cnp:lib(nil,  [a],      [_{a:A}] >> (A=[])).

flip(_{a:A, b:B}) :-
  B is A * -1.