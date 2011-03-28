(* ::Package:: *)

(* ::Section:: *)
(*Custom Graphic and Plot options*)


BeginPackage["MyStyle`Graphics`"];


Begin["`Private`"];


commonToAll={Axes->False,Frame->True};
plotFunctions2D={ListPlot,ListLogPlot,ListLogLogPlot,ListLogLinearPlot,Plot,LogPlot,LogLogPlot,LogLinearPlot,ParametricPlot}
Do[SetOptions[plotFunc,Sequence@@commonToAll],{plotFunc,plotFunctions2D}]


End[];(*End `Private` Context.*)


EndPackage[];


SaveN
