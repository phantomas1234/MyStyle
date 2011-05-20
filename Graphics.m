(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



BeginPackage["MyStyle`Graphics`"];


errorListPlotBand::usage="Draw data with error bands.";


Begin["`Private`"];


commonToAll={Axes->False,Frame->True,PlotStyle->Black,BaseStyle->{"FontFamily"->"Helvetica",FontSize->12},ImageSize->350,PlotRange->All};
plotFunctions2D={ListPlot,ListLogPlot,ListLogLogPlot,ListLogLinearPlot,Plot,LogPlot,LogLogPlot,LogLinearPlot,ParametricPlot,DateListPlot,DateListLogPlot}
Do[SetOptions[plotFunc,Sequence@@commonToAll],{plotFunc,plotFunctions2D}]


Unprotect[errorListPlotBand];
errorListPlotBand[data_List,opts:OptionsPattern[]]:=Module[{},
ListPlot[{#[[All,1]],#[[All,1]]+.5*#[[All,2]],#[[All,1]]-.5*#[[All,2]]},Joined->True,opts,PlotStyle->{Automatic,None,None},Filling->{1->{2},1->{3}},FillingStyle->Automatic]&[data]
];
errorListPlotBand[data__,opts:OptionsPattern[]]:=Module[{},
Show[Sequence@@MapIndexed[errorListPlotBand[#,Join[opts,{PlotStyle->{ColorData[1][#2[[1]]],None,None},FillingStyle->Opacity[.5,ColorData[1][#2[[1]]]]}]]&,List[data]]]
];
Protect[errorListPlotBand];


End[];(*End `Private` Context.*)


EndPackage[];
