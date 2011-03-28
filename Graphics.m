(* ::Package:: *)

(* ::Section:: *)
(*Custom Graphic and Plot options*)


BeginPackage["MyStyle`Graphics`"];


(*GetNDSolveProblem::usage="GetNDSolveProblem[name] returns an NDSolveProblem data structure for the problem name.";*)


Begin["`Private`"];


commonToAll={Axes->False,Frame->True};


SetOptions[ListPlot,Sequence@@commonToAll];


End[];(*End `Private` Context.*)


EndPackage[];
